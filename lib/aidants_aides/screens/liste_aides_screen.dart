/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/revocation_acces_aide_confirmation_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/liste_aides_view_model.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/widgets/delegations_cards_widget.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class ListeAidesScreen extends StatelessWidget {
  static const routeName = '/mon-compte/aidants_aides/liste_aides';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Gestion des accès aux profils de mes aidés'),
      body: SafeArea(
        child: StoreConnector<EnsState, ListeAidesViewModel>(
          converter: (store) => ListeAidesViewModel.from(store),
          distinct: true,
          onWillChange: (oldVm, vm) {
            if (oldVm != null && oldVm.displayModels.isNotEmpty && vm.displayModels.isEmpty) {
              Navigator.pop(context);
            }
            if (oldVm?.deleteDelegationStatus.isLoading() == true && vm.deleteDelegationStatus.isSuccess()) {
              Navigator.pushNamed(context, RevocationAccesAideConfirmationScreen.routeName);
            }
          },
          builder: (context, vm) {
            return ScrollviewWithScrollbar(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Je gère l\'accès aux profils de mes proches aidés.',
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                        const SizedBox(height: 10),
                        EnsPersistentInfoBox.text(
                          'Je peux accéder aux profils de 5 proches aidés maximum.',
                          style: EnsTextStyle.text14_w600_normal_title,
                        ),
                      ],
                    ),
                  ),
                  ...vm.displayModels.map(
                    (dm) => DelegationEnCoursCard(
                      displayModel: dm,
                      delegationActeurType: DelegationActeurType.AIDE,
                      onConfirmDelete: vm.onDeleteDelegation,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
