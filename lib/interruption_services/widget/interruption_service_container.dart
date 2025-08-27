/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_screen.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_widget.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/viewmodel/interruption_service_container_view_model.dart';

class InterruptionServiceContainer extends StatelessWidget {
  final DomaineInterruptionComposant composant;
  final Widget child;

  const InterruptionServiceContainer({
    required this.composant,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, InterruptionServiceContainerViewModel>(
      converter: (store) => InterruptionServiceContainerViewModel.from(store, composant.domaineInterruption),
      distinct: true,
      builder: (context, vm) {
        final interruptionServiceMessage = vm.message;
        if (interruptionServiceMessage != null) {
          switch (composant) {
            case final DomaineInterruptionFullscreenComposant fullScreen:
              return InterruptionServiceScreen(from: fullScreen.from, message: interruptionServiceMessage);
            case final DomaineInterruptionSectionComposant section:
              return InterruptionServiceSection(from: section.from, message: interruptionServiceMessage);
          }
        } else {
          return child;
        }
      },
    );
  }
}

sealed class DomaineInterruptionComposant {
  final DomaineInterruption domaineInterruption;

  const DomaineInterruptionComposant({required this.domaineInterruption});
}

class DomaineInterruptionFullscreenComposant extends DomaineInterruptionComposant {
  final InterruptionServiceScreenName from;

  const DomaineInterruptionFullscreenComposant({required super.domaineInterruption, required this.from});
}

class DomaineInterruptionSectionComposant extends DomaineInterruptionComposant {
  final InterruptionServiceSectionName from;

  const DomaineInterruptionSectionComposant({required super.domaineInterruption, required this.from});
}
