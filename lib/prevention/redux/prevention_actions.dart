/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'prevention_redux.dart';

class FetchPreventionArticlesAction {
  final bool force;
  final String sexLabel;
  final String age;

  const FetchPreventionArticlesAction({this.force = false, required this.sexLabel, required this.age});
}

class _ProcessFetchPreventionArticlesSuccessAction {
  final List<Article> articles;

  _ProcessFetchPreventionArticlesSuccessAction(this.articles);
}

class ProcessFetchPreventionArticlesErrorAction {}

class _ProcessFetchMonActuSanteSuccessAction {
  final List<Article> articles;

  _ProcessFetchMonActuSanteSuccessAction(this.articles);
}

class ProcessFetchMonActuSanteErrorAction {}

class ProcessUpdateTuileQuestionnaireAction {
  final EnsRecommandation recommandation;
  final QuestionnaireCode questionnaireCode;
  final String? questionnaireVersion;
  final String? questionnaireLastVersion;

  ProcessUpdateTuileQuestionnaireAction({
    required this.recommandation,
    required this.questionnaireCode,
    this.questionnaireVersion,
    this.questionnaireLastVersion,
  });
}

class FetchPreventionDetailAction {
  final String articleId;
  final bool generique;

  const FetchPreventionDetailAction(this.articleId, this.generique);
}

class _ProcessFetchPreventionDetailSuccessAction {
  final ArticleDetail articleDetail;

  _ProcessFetchPreventionDetailSuccessAction(this.articleDetail);
}

class _ProcessFetchPreventionDetailErrorAction {}
