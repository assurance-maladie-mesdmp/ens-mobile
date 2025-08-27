/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommander_app_redux.dart';

class FetchRecommanderAppAction {}

class _ProcessFetchedRecommanderAppAction {
  final bool isRecommanderAppDone;
  final DateTime? nextRecommanderAppDate;

  _ProcessFetchedRecommanderAppAction({required this.isRecommanderAppDone, this.nextRecommanderAppDate});
}

class SetRecommanderAppDoneAction {}

class _ProcessSetRecommanderAppDoneAction {
  final bool isRecommanderAppDone;

  _ProcessSetRecommanderAppDoneAction(this.isRecommanderAppDone);
}

class SetNextRecommanderAppDateAction {}

class _ProcessSetNextRecommanderAppDateAction {
  final DateTime nextRecommanderAppDate;

  _ProcessSetNextRecommanderAppDateAction(this.nextRecommanderAppDate);
}

class SetDoNotDisplayRecommanderAppAction {}

class TriggerRecommanderAppAction {
  final RecommanderAppActionTriggeredFrom actionTriggeredFrom;

  TriggerRecommanderAppAction(this.actionTriggeredFrom);
}
