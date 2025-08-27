/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class HomeScreenViewModel extends Equatable {
  final ScreenStatus userDataFetchingStatus;
  final ScreenStatus docFetchingStatus;
  final String actuLabel;
  final ScreenStatus monActuStatus;
  final List<Article>? articlesMonActuSante;
  final EnsMessagePanne? messagePanne;
  final void Function() refreshData;
  final void Function() closeMessagePanne;
  final void Function() interruptionService;
  final ProfilType profilType;

  const HomeScreenViewModel._internal({
    required this.userDataFetchingStatus,
    required this.docFetchingStatus,
    required this.monActuStatus,
    this.articlesMonActuSante,
    this.messagePanne,
    required this.refreshData,
    required this.closeMessagePanne,
    required this.actuLabel,
    required this.interruptionService,
    required this.profilType,
  });

  factory HomeScreenViewModel.from(Store<EnsState> store) {
    final currentProfile = store.state.userState.currentProfile;
    final mainUserDataState = store.state.userState.mainUserDataState;
    final monActuState = store.state.monActuState;
    final messagePanneState = store.state.homeConnecteeMessagePanneState;

    final documentsListState = store.state.documentsState.documentsListState;

    var docFetchingStatus = ScreenStatus.LOADING;
    var monActuStatus = ScreenStatus.LOADING;

    if (documentsListState.status.isSuccess()) {
      docFetchingStatus = ScreenStatus.SUCCESS;
    } else if (documentsListState.status.isError()) {
      docFetchingStatus = ScreenStatus.ERROR;
    }

    final List<Article> articlesMonActuSante = [];

    final monActuListState = monActuState.monActuListState;
    if (monActuListState.status.isSuccess() && monActuListState.articles.isNotEmpty) {
      monActuStatus = ScreenStatus.SUCCESS;
      final filteredPreventionArticles =
          monActuListState.articles.where((article) => UserSelectors.isArticleMatchingFilters(article, store.state));
      articlesMonActuSante.addAll(filteredPreventionArticles);
    } else if (articlesMonActuSante.isEmpty) {
      monActuStatus = ScreenStatus.ERROR;
    }

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final questionnaireArticle = monActuState.questionnaireArticle;
    if (profilType.isAdult && questionnaireArticle != null) {
      final insertIndex = questionnaireArticle.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ
          ? articlesMonActuSante.length
          : 0;
      articlesMonActuSante.insert(insertIndex, questionnaireArticle);
      monActuStatus = ScreenStatus.SUCCESS;
    }

    String actuLabel = 'Mon actu santé';
    if (mainUserDataState.status.isSuccess()) {
      const userDataFetchingStatus = ScreenStatus.SUCCESS;
      final mainFirstName = currentProfile.mainFirstName;
      actuLabel = store.state.userState.isMainProfile ? actuLabel : 'L\'actu santé de $mainFirstName';

      final questionnaireCode = store.state.questionnaireAgesClesState.questionnaireVersionState.questionnaireCode;
      _incitationRdvPS(articlesMonActuSante, questionnaireCode);

      return HomeScreenViewModel._internal(
        userDataFetchingStatus: userDataFetchingStatus,
        docFetchingStatus: docFetchingStatus,
        monActuStatus: monActuStatus,
        articlesMonActuSante: articlesMonActuSante,
        messagePanne: messagePanneState.message,
        refreshData: () => _refreshData(
          userDataFetchingStatus,
          docFetchingStatus,
          store,
        ),
        closeMessagePanne: () => store.dispatch(SetHomeConnecteeMessagePanneClosedByUserAction()),
        actuLabel: actuLabel,
        interruptionService: () => store.dispatch(FetchInterruptionServiceAction()),
        profilType: profilType,
      );
    } else if (mainUserDataState.status.isNotLoadedOrLoading()) {
      return HomeScreenViewModel._internal(
        userDataFetchingStatus: ScreenStatus.LOADING,
        docFetchingStatus: docFetchingStatus,
        monActuStatus: monActuStatus,
        articlesMonActuSante: articlesMonActuSante,
        refreshData: () => _refreshData(ScreenStatus.LOADING, docFetchingStatus, store),
        closeMessagePanne: () => store.dispatch(SetHomeConnecteeMessagePanneClosedByUserAction()),
        actuLabel: actuLabel,
        interruptionService: () => store.dispatch(FetchInterruptionServiceAction()),
        profilType: profilType,
      );
    }
    return HomeScreenViewModel._internal(
      userDataFetchingStatus: ScreenStatus.ERROR,
      docFetchingStatus: docFetchingStatus,
      monActuStatus: monActuStatus,
      articlesMonActuSante: articlesMonActuSante,
      refreshData: () => _refreshData(ScreenStatus.ERROR, docFetchingStatus, store),
      closeMessagePanne: () => store.dispatch(SetHomeConnecteeMessagePanneClosedByUserAction()),
      actuLabel: actuLabel,
      interruptionService: () => store.dispatch(FetchInterruptionServiceAction()),
      profilType: profilType,
    );
  }

  static void _incitationRdvPS(List<Article> articlesMonActuSante, QuestionnaireCode questionnaireCode) {
    final indexToMove = articlesMonActuSante.indexWhere(
      (article) =>
          article.recommandationCode == RecommandationCode.INCITER_ENREGISTRER_QUIZ ||
          article.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ,
    );
    const notFound = -1;
    if (indexToMove != notFound) {
      articlesMonActuSante.insert(0, articlesMonActuSante.removeAt(indexToMove));
      _insertRememberRdvProfessionnelDeSante(articlesMonActuSante, questionnaireCode);
    }
  }

  static void _insertRememberRdvProfessionnelDeSante(
    List<Article> articlesMonActuSante,
    QuestionnaireCode questionnaireCode,
  ) {
    articlesMonActuSante.insert(
      1,
      Article(
        id: 'ID_RememberRdvProfessionnelDeSante',
        title: 'J’ai terminé mon questionnaire. Je prends rendez-vous avec un professionnel de santé.',
        link: null,
        linkText: 'En savoir plus',
        image: EnsImages.illustration_push_incitation_rdv,
        backgroundColor: ArticleBackgroundColor.BLEU,
        hasDetailArticle: false,
        imageFromCms: false,
        shouldShowDetails: true,
        showVisiteMedicaleBottomSheet: true,
        questionnaireTag: TagsQuestionnaireAgesCles.tagButtonTuileEnSavoirPlusRdvQuestionnaire(
          questionnaireCode.getTrancheAgeForTracking(),
        ),
        questionnaireCode: questionnaireCode,
      ),
    );
  }

  static void _refreshData(
    ScreenStatus userDataFetchingStatus,
    ScreenStatus docFetchingStatus,
    Store<EnsState> store,
  ) {
    if (userDataFetchingStatus == ScreenStatus.ERROR) {
      store.dispatch(FetchUserDataAction(force: true));
    }
    if (docFetchingStatus == ScreenStatus.ERROR) {
      store.dispatch(FetchDocumentsAction(force: true));
    }
  }

  @override
  List<Object?> get props => [
        userDataFetchingStatus,
        docFetchingStatus,
        actuLabel,
        monActuStatus,
        articlesMonActuSante,
        messagePanne,
        profilType,
      ];
}
