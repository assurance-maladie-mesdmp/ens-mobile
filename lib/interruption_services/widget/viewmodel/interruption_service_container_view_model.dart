/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:redux/redux.dart';

class InterruptionServiceContainerViewModel extends Equatable {
  final String? message;

  const InterruptionServiceContainerViewModel._internal({
    required this.message,
  });

  factory InterruptionServiceContainerViewModel.from(Store<EnsState> store, DomaineInterruption domaine) {
    final interruptionInfos = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: domaine,
    );

    return InterruptionServiceContainerViewModel._internal(
      message: interruptionInfos?.message,
    );
  }

  @override
  List<Object?> get props => [message];
}
