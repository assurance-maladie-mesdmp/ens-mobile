/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'prevention_redux.dart';

class MonActuState extends Equatable {
  final MonActuListState monActuListState;
  final Article? questionnaireArticle;

  const MonActuState({
    this.monActuListState = const MonActuListState(),
    this.questionnaireArticle,
  });

  MonActuState clone({
    MonActuListState? monActuListState,
    Optional<Article>? questionnaireArticleOptional,
  }) {
    return MonActuState(
      monActuListState: monActuListState ?? this.monActuListState,
      questionnaireArticle: questionnaireArticleOptional != null
          ? questionnaireArticleOptional.orElseNullable(questionnaireArticle)
          : questionnaireArticle,
    );
  }

  @override
  List<Object?> get props => [monActuListState, questionnaireArticle];
}

class MonActuListState extends Equatable {
  final AllPurposesStatus status;
  final List<Article> articles;

  const MonActuListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.articles = const [],
  });

  MonActuListState clone({
    AllPurposesStatus? status,
    List<Article>? articles,
  }) {
    return MonActuListState(
      status: status ?? this.status,
      articles: articles ?? this.articles,
    );
  }

  @override
  List<Object?> get props => [status, articles];
}
