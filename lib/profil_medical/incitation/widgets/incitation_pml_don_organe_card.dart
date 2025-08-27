/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/don_organes_volonte_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_entourage_et_volonte_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_card.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlDonOrganeCard extends StatelessWidget {
  const IncitationPmlDonOrganeCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationEntourageEtVolonteCardViewModel>(
      converter: (store) => IncitationEntourageEtVolonteCardViewModel.from(
        store,
        EnsEntourageEtVolonteIncitationType.DON_ORGANE,
      ),
      distinct: true,
      builder: (context, vm) {
        return IncitationPmlCard(
          title: 'Don d\'organes',
          subTitle: vm.description,
          asset: EnsImages.cgus,
          isCompleted: vm.isChecked,
          onTap: () {
            Navigator.pushNamed(context, DonOrganesVolonteScreen.routeName);
            context.tagAction(TagsIncitation.tag_2644_button_carte_don_organes_od);
          },
        );
      },
    );
  }
}
