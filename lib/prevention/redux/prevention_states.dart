/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'prevention_redux.dart';

class PreventionState extends Equatable {
  final PreventionListState preventionListState;
  final PreventionDetailState preventionDetailState;

  const PreventionState({
    this.preventionListState = const PreventionListState(),
    this.preventionDetailState = const PreventionDetailState(),
  });

  PreventionState clone({
    PreventionListState? preventionListState,
    PreventionDetailState? preventionDetailState,
  }) {
    return PreventionState(
      preventionListState: preventionListState ?? this.preventionListState,
      preventionDetailState: preventionDetailState ?? this.preventionDetailState,
    );
  }

  @override
  List<Object?> get props => [preventionListState, preventionDetailState];
}

class PreventionListState extends Equatable {
  final AllPurposesStatus status;
  final List<Article> articles;

  const PreventionListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.articles = const [],
  });

  PreventionListState clone({
    AllPurposesStatus? status,
    List<Article>? articles,
  }) {
    return PreventionListState(
      status: status ?? this.status,
      articles: articles ?? this.articles,
    );
  }

  @override
  List<Object?> get props => [status, articles];
}

class PreventionDetailState extends Equatable {
  final AllPurposesStatus status;
  final ArticleDetail? articleDetail;

  const PreventionDetailState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.articleDetail,
  });

  PreventionDetailState clone({
    AllPurposesStatus? status,
    Optional<ArticleDetail>? articleDetailOptional,
  }) {
    return PreventionDetailState(
      status: status ?? this.status,
      articleDetail:
          articleDetailOptional != null ? articleDetailOptional.orElseNullable(articleDetail) : articleDetail,
    );
  }

  @override
  List<Object?> get props => [status, articleDetail];
}
