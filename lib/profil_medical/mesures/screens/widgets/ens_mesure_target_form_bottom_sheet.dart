/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_target_form.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_target_form_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsMesureTargetFormBottomSheet extends StatelessWidget {
  final EnsMesureType mesureType;

  const EnsMesureTargetFormBottomSheet({super.key, required this.mesureType});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EnsMesureTargetFormBottomSheetViewModel>(
      converter: (store) => EnsMesureTargetFormBottomSheetViewModel(store, mesureType),
      onInit: (store) {
        store.dispatch(InitializeMesureFormAction(mesureType));
      },
      onDidChange: (_, vm) {
        if (vm.shouldPop) {
          Navigator.pop(context);
        }
      },
      distinct: true,
      builder: (context, vm) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            constraints: BoxConstraints(maxHeight: 9 * MediaQuery.of(context).size.height / 10),
            decoration: const BoxDecoration(
              color: EnsColors.light,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: EnsMesureTargetForm(vm: vm),
          ),
        );
      },
    );
  }
}
