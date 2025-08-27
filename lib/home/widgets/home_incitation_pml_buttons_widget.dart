/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/home/widgets/incitation_pml_home_button_widget.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/pml_button_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class HomeIncitationPmlButtonsWidget extends StatelessWidget {
  const HomeIncitationPmlButtonsWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreConnector<EnsState, PmlButtonViewModel>(
          converter: (store) => PmlButtonViewModel.from(store),
          distinct: true,
          onInitialBuild: (vm) {
            vm.fetchRecommandations();
          },
          builder: (_, vm) {
            switch (vm.status) {
              case AllPurposesStatus.NOT_LOADED:
              case AllPurposesStatus.LOADING:
                return const SkeletonCard();
              case AllPurposesStatus.SUCCESS:
                switch (vm.incitationPml) {
                  case IncitationPmlStatus.INCITER_COMPLETER_PML:
                    return EmptyPmlHomeButton(incitationPmlStatus: vm.incitationPml);
                  case IncitationPmlStatus.INCITER_ENREGISTRER_SYNTHESE_PML:
                  case IncitationPmlStatus.INCITER_RAFRAICHIR_SYNTHESE_PML:
                  case IncitationPmlStatus.SYNTHESE_ENREGISTRER:
                    return FilledPmlHomeButton(incitationPmlStatus: vm.incitationPml);
                }
              case AllPurposesStatus.ERROR:
                return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}
