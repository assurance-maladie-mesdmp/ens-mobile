/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_detail.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class PreventionDetailScreenViewModel extends Equatable {
  final AllPurposesStatus preventionDetailStatus;
  final ArticleDetail? articleDetail;
  final void Function() loadDetailPage;

  const PreventionDetailScreenViewModel._internal({
    required this.preventionDetailStatus,
    this.articleDetail,
    required this.loadDetailPage,
  });

  factory PreventionDetailScreenViewModel.from(
    Store<EnsState> store, {
    required String articleId,
    required bool isGenerique,
  }) {
    final preventionDetailState = store.state.preventionState.preventionDetailState;
    return PreventionDetailScreenViewModel._internal(
      preventionDetailStatus: preventionDetailState.status,
      articleDetail: preventionDetailState.articleDetail,
      loadDetailPage: () => store.dispatch(FetchPreventionDetailAction(articleId, isGenerique)),
    );
  }

  @override
  List<Object?> get props => [preventionDetailStatus, articleDetail];
}
