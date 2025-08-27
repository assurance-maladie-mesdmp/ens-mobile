/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messages_pannes_redux.dart';

class FetchHomeConnecteeMessagePanneAction {}

class _ProcessFetchHomeConnecteeMessagePanneSuccessAction {
  final EnsMessagePanne? messagePanne;

  _ProcessFetchHomeConnecteeMessagePanneSuccessAction(this.messagePanne);
}

class _ProcessFetchHomeConnecteeMessagePanneErrorAction {}

class SetHomeConnecteeMessagePanneClosedByUserAction {}

class FetchLoginScreenMessagePanneAction {}

class _ProcessFetchLoginScreenMessagePanneSuccessAction {
  final EnsMessagePanne? messagePanne;

  _ProcessFetchLoginScreenMessagePanneSuccessAction(this.messagePanne);
}

class _ProcessFetchLoginScreenMessagePanneErrorAction {}

class SetLoginScreenMessagePanneClosedByUserAction {}
