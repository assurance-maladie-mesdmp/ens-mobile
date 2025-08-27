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
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class BibliothequeArticlesDePreventionScreenViewModel extends Equatable {
  final ScreenStatus articleDePreventionScreenStatus;
  final void Function(bool) fetchPreventionData;
  final Map<String, List<ArticleDisplayModel>> displayModelsGroupByThematique;
  final ProfilType profilType;

  List<String> get thematiqueLabels => displayModelsGroupByThematique.keys.toList();

  const BibliothequeArticlesDePreventionScreenViewModel._internal({
    required this.articleDePreventionScreenStatus,
    required this.fetchPreventionData,
    required this.displayModelsGroupByThematique,
    required this.profilType,
  });

  factory BibliothequeArticlesDePreventionScreenViewModel.from(Store<EnsState> store) {
    final preventionListState = store.state.preventionState.preventionListState;

    final List<ArticleDisplayModel> displayModels = [];
    final List<Article> articlesPrevention = [];

    final articleDePreventionScreenStatus = ScreenStatus.getFromAllPurposesStatus(preventionListState.status);
    if (preventionListState.status.isSuccess()) {
      articlesPrevention.addAll(preventionListState.articles);
    }

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    _populateArticleDePreventionPersoList(
      state: store.state,
      displayModels: displayModels,
      articlesPrevention: articlesPrevention,
    );

    final groupByThematique = displayModels.groupListsBy((element) => element.thematique);
    groupByThematique.remove(ACTU_SANTE_THEMATIQUE);

    return BibliothequeArticlesDePreventionScreenViewModel._internal(
      articleDePreventionScreenStatus: articleDePreventionScreenStatus,
      fetchPreventionData: (force) => _fetchPreventionArticles(store, force),
      displayModelsGroupByThematique: groupByThematique,
      profilType: profilType,
    );
  }

  static void _populateArticleDePreventionPersoList({
    required EnsState state,
    required List<ArticleDisplayModel> displayModels,
    required List<Article> articlesPrevention,
  }) {
    final filteredPreventionArticles =
        articlesPrevention.where((article) => UserSelectors.isArticleMatchingFilters(article, state));
    displayModels.addAll(
      filteredPreventionArticles.map(
        (article) => _mapToDisplayModel(
          article: article,
        ),
      ),
    );
  }

  static void _fetchPreventionArticles(Store<EnsState> store, bool force) {
    final currentProfile = store.state.userState.currentProfile;
    if (currentProfile != null && currentProfile.sexe != null) {
      store.dispatch(
        FetchPreventionArticlesAction(force: force, sexLabel: currentProfile.sexe!.label, age: currentProfile.age),
      );
    }
  }

  @override
  List<Object?> get props => [
        articleDePreventionScreenStatus,
        displayModelsGroupByThematique,
        profilType,
      ];

  static ArticleDisplayModel _mapToDisplayModel({
    required Article article,
  }) {
    return ArticleDisplayModel(
      id: article.id,
      backgroundColor: article.backgroundColor.image,
      image: article.image,
      imageActuSantePage: article.imageActuSantePage,
      title: article.title,
      body: article.resume,
      link: article.link,
      textLink: article.linkText,
      hasDetailArticle: article.hasDetailArticle,
      questionnaireCode: article.questionnaireCode,
      shouldShowVisiteMedicalBottomSheet: article.showVisiteMedicaleBottomSheet,
      imageFromCms: article.imageFromCms,
      thematique: article.thematique ?? ACTU_SANTE_THEMATIQUE,
    );
  }
}
