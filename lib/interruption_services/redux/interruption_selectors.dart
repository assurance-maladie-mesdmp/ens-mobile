/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';

class InterruptionSelectors {
  static InterruptionDeServiceInfo? getCurrentInterruptionInfos({
    required EnsState state,
    required DomaineInterruption domaine,
  }) {
    final interruptionServicesState = state.interruptionServicesState;
    if (interruptionServicesState.interruptionDeServiceInfosStatus.isSuccess()) {
      final now = clock.now();
      return interruptionServicesState.interruptionDeServiceInfos.firstWhereOrNull(
        (interruptionInfo) => interruptionInfo.domaine == domaine && interruptionInfo.isInterruptionPending(now),
      );
    }
    return null;
  }

  static InterruptionDeServiceInfo? getCurrentInterruptionInfosNonConnecte({
    required EnsInitialState state,
    required DomaineInterruption domaine,
  }) {
    final interruptionServicesState = state.interruptionServicesState;
    if (interruptionServicesState.interruptionDeServiceInfosStatus.isSuccess()) {
      final now = clock.now();
      return interruptionServicesState.interruptionDeServiceInfos.firstWhereOrNull(
        (interruptionInfo) => interruptionInfo.domaine == domaine && interruptionInfo.isInterruptionPending(now),
      );
    }
    return null;
  }
}
