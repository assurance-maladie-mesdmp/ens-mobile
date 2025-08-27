/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_display_model.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class PreventionPersonnaliseeSegmentViewModel extends Equatable {
  final List<ArticleDisplayModel> actuSanteDisplayModels;
  final ScreenStatus preventionPersoScreen;

  const PreventionPersonnaliseeSegmentViewModel._internal({
    required this.actuSanteDisplayModels,
    required this.preventionPersoScreen,
  });

  factory PreventionPersonnaliseeSegmentViewModel.from(Store<EnsState> store) {
    final monActuListState = store.state.monActuState.monActuListState;

    final List<ArticleDisplayModel> displayModels = [];
    final List<Article> articlesMonActuSante = [];

    final preventionPersoScreen = ScreenStatus.getFromAllPurposesStatus(monActuListState.status);

    if (monActuListState.status.isSuccess()) {
      articlesMonActuSante.addAll(monActuListState.articles);
    }

    _populateArticlesPersoList(displayModels, articlesMonActuSante, store.state);

    return PreventionPersonnaliseeSegmentViewModel._internal(
      preventionPersoScreen: preventionPersoScreen,
      actuSanteDisplayModels: displayModels,
    );
  }

  static void _populateArticlesPersoList(
    List<ArticleDisplayModel> displayModels,
    List<Article> articlesMonActuSante,
    EnsState state,
  ) {
    displayModels.addAll(
      articlesMonActuSante
          .where((article) => UserSelectors.isArticleMatchingFilters(article, state))
          .map(mapToDisplayModel),
    );
  }

  @override
  List<Object?> get props => [
        preventionPersoScreen,
        actuSanteDisplayModels,
      ];
}

ArticleDisplayModel mapToDisplayModel(Article article) {
  return ArticleDisplayModel(
    id: article.id,
    backgroundColor: article.backgroundColor.image,
    image: article.image,
    imageActuSantePage: article.imageActuSantePage,
    body: article.title,
    link: article.link,
    textLink: article.linkText,
    hasDetailArticle: article.hasDetailArticle,
    questionnaireCode: article.questionnaireCode,
    shouldShowVisiteMedicalBottomSheet: article.showVisiteMedicaleBottomSheet,
    imageFromCms: article.imageFromCms,
    thematique: ACTU_SANTE_THEMATIQUE,
  );
}
