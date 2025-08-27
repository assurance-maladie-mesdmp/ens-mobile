/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_display_model.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class OldPreventionScreenViewModel extends Equatable {
  final ScreenStatus actuSanteStatus;
  final void Function(bool) fetchPreventionData;
  final Map<String, List<ArticleDisplayModel>> displayModelsGroupByThematique;
  final ProfilType profilType;

  List<String> get thematiqueLabels => displayModelsGroupByThematique.keys.toList();

  const OldPreventionScreenViewModel._internal({
    required this.actuSanteStatus,
    required this.fetchPreventionData,
    required this.displayModelsGroupByThematique,
    required this.profilType,
  });

  factory OldPreventionScreenViewModel.from(Store<EnsState> store) {
    final preventionListState = store.state.preventionState.preventionListState;
    final monActuState = store.state.monActuState;
    final monActuListState = monActuState.monActuListState;

    final List<ArticleDisplayModel> displayModels = [];

    var actuSanteStatus = ScreenStatus.LOADING;

    final List<Article> articlesPrevention = [];
    final List<Article> articlesMonActuSante = [];

    if (preventionListState.status.isSuccess() && monActuListState.status.isSuccess()) {
      actuSanteStatus = ScreenStatus.SUCCESS;
      articlesPrevention.addAll(preventionListState.articles);
      articlesMonActuSante.addAll(monActuListState.articles);
    } else if (preventionListState.status.isError() || monActuListState.status.isError()) {
      actuSanteStatus = ScreenStatus.ERROR;
    }

    final questionnaireArticle = monActuState.questionnaireArticle;
    if (questionnaireArticle != null) {
      final insertIndex = questionnaireArticle.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ
          ? articlesMonActuSante.length
          : 0;
      articlesMonActuSante.insert(insertIndex, questionnaireArticle);
    }
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    final questionnaireCode = store.state.questionnaireAgesClesState.questionnaireVersionState.questionnaireCode;
    _incitationRdvPS(articlesMonActuSante, questionnaireCode);
    _populateArticleDePreventionPersoList(
      state: store.state,
      profilType: profilType,
      displayModels: displayModels,
      articlesMonActuSante: articlesMonActuSante,
      articlesPrevention: articlesPrevention,
    );

    final groupByThematique = displayModels.groupListsBy((element) => element.thematique);

    return OldPreventionScreenViewModel._internal(
      actuSanteStatus: actuSanteStatus,
      fetchPreventionData: (force) => _loadPreventionData(store, force),
      displayModelsGroupByThematique: groupByThematique,
      profilType: profilType,
    );
  }

  static String _getLabelThematique(ProfilType profilType, String inputThematique) {
    if (inputThematique != ACTU_SANTE_THEMATIQUE) {
      return inputThematique;
    }

    return (profilType == ProfilType.PROFIL_PRINCIPAL) ? ACTU_SANTE_THEMATIQUE : PREVENTION_THEMATIQUE;
  }

  static ArticleDisplayModel _mapToDisplayModel({
    required Article article,
    required bool isArticleDePrevention,
    required ProfilType profilType,
  }) {
    return ArticleDisplayModel(
      id: article.id,
      backgroundColor: article.backgroundColor.image,
      image: article.image,
      imageActuSantePage: article.imageActuSantePage,
      title: isArticleDePrevention ? article.title : '',
      body: isArticleDePrevention ? article.resume : article.title,
      link: article.link,
      textLink: article.linkText,
      hasDetailArticle: article.hasDetailArticle,
      questionnaireCode: article.questionnaireCode,
      shouldShowVisiteMedicalBottomSheet: article.showVisiteMedicaleBottomSheet,
      imageFromCms: article.imageFromCms,
      thematique: isArticleDePrevention
          ? (article.thematique ?? ACTU_SANTE_THEMATIQUE)
          : _getLabelThematique(profilType, article.thematique ?? ACTU_SANTE_THEMATIQUE),
    );
  }

  static void _populateArticleDePreventionPersoList({
    required EnsState state,
    required ProfilType profilType,
    required List<ArticleDisplayModel> displayModels,
    required List<Article> articlesMonActuSante,
    required List<Article> articlesPrevention,
  }) {
    final filteredMonActuArticles =
        articlesMonActuSante.where((article) => UserSelectors.isArticleMatchingFilters(article, state));
    final filteredPreventionArticles =
        articlesPrevention.where((article) => UserSelectors.isArticleMatchingFilters(article, state));
    displayModels
      ..addAll(
        filteredMonActuArticles.map(
          (article) => _mapToDisplayModel(
            article: article,
            isArticleDePrevention: false,
            profilType: profilType,
          ),
        ),
      )
      ..addAll(
        filteredPreventionArticles.map(
          (article) => _mapToDisplayModel(
            article: article,
            isArticleDePrevention: true,
            profilType: profilType,
          ),
        ),
      );
  }

  static void _incitationRdvPS(List<Article> articlesMonActuSante, QuestionnaireCode questionnaireCode) {
    final indexToMove = articlesMonActuSante.indexWhere(
      (article) =>
          article.recommandationCode == RecommandationCode.INCITER_ENREGISTRER_QUIZ ||
          article.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ,
    );
    if (indexToMove != -1) {
      articlesMonActuSante.insert(0, articlesMonActuSante.removeAt(indexToMove));
      articlesMonActuSante.insert(
        1,
        Article(
          id: 'ID_RememberRdvProfessionnelDeSante',
          title: 'J\'ai terminé mon questionnaire. Je prends rendez-vous avec un professionnel de santé.',
          link: null,
          linkText: 'En savoir plus',
          image: EnsImages.illustration_push_incitation_rdv,
          imageActuSantePage: 'illustration_push_incitation_rdv_large.svg',
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
  }

  static void _loadPreventionData(Store<EnsState> store, bool force) {
    final currentProfile = store.state.userState.currentProfile;
    if (currentProfile != null && currentProfile.sexe != null) {
      store.dispatch(
        FetchPreventionArticlesAction(force: force, sexLabel: currentProfile.sexe!.label, age: currentProfile.age),
      );
    }
  }

  @override
  List<Object?> get props => [
        actuSanteStatus,
        displayModelsGroupByThematique,
        profilType,
      ];
}
