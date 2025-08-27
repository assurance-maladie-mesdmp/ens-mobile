/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommandations_redux.dart';

class FetchRecommandationsAction {
  final bool force;

  const FetchRecommandationsAction({this.force = false});
}

class ProcessFetchRecommandationsSuccessAction {
  final GetRecommandationsResponse recommandationsResponse;

  ProcessFetchRecommandationsSuccessAction(this.recommandationsResponse);
}

class ProcessFetchRecommandationsErrorAction {}

class FetchRecommandationDiffereeAction {}

class _ProcessFetchRecommandationDiffereeSuccessAction {
  final RecommandationDifferee? recommandationDifferee;

  _ProcessFetchRecommandationDiffereeSuccessAction({required this.recommandationDifferee});
}

class DismissRecommandationDiffereeAction {
  final RecommandationDiffereeCode code;

  DismissRecommandationDiffereeAction(this.code);
}

class _ProcessDismissRecommandationSuccessAction {}
