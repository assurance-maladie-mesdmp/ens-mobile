/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_pml_progress_card_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_stepper.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class IncitationPmlProgressCard extends StatelessWidget {
  const IncitationPmlProgressCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationPmlProgressCardViewModel>(
      converter: (store) => IncitationPmlProgressCardViewModel.from(store, isRefonteEntourageEtVolontesEnabled),
      distinct: true,
      builder: (_, vm) {
        return Visibility(
          visible: vm.isVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Text(
                '${vm.currentStep} rubrique${vm.currentStep == 1 ? '' : 's'} complétée${vm.currentStep == 1 ? '' : 's'} sur ${vm.totalStep}',
                style: EnsTextStyle.text16_w700_primary,
              ),
              const SizedBox(height: 8),
              EnsStepperIncitation(maxValue: vm.totalStep, value: vm.currentStep, minusPadding: 48),
            ],
          ),
        );
      },
    );
  }
}
