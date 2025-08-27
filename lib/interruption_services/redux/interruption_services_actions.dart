/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'interruption_services_redux.dart';

class FetchInterruptionServiceAction {}

class ProcessFetchedInterruptionServiceSuccessAction {
  final List<InterruptionDeServiceInfo> result;

  ProcessFetchedInterruptionServiceSuccessAction(this.result);
}

class ProcessFetchedInterruptionServiceErrorAction {}
