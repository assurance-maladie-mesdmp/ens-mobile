/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/edit_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/edit_allergie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_categorie_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_first_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlAllergiesCard extends StatelessWidget {
  const IncitationPmlAllergiesCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationCategorieCardViewModel>(
      converter: (store) => IncitationCategorieCardViewModel.from(store, EnsIncitationType.ALLERGIES),
      distinct: true,
      builder: (context, vm) => IncitationPmlCard(
        title: 'Allergies',
        subTitle: vm.description,
        asset: EnsImages.allergie,
        isCompleted: vm.isChecked,
        onTap: () {
          if (vm.isChecked) {
            context.tagAction(TagsIncitation.tag_908_button_modifier_allergies);
            Navigator.pushNamed(context, AllergiesScreen.routeName, arguments: true);
          } else {
            vm.isProfilPrincipal
                ? context.tagAction(TagsIncitation.tag_872_button_carte_allergies_od)
                : context.tagAction(TagsIncitation.tag_878_button_carte_allergies_ad);
            showIncitationPmlFirstBottomSheet(
              context,
              vm,
              EditAllergieScreen.routeName,
              EnsIncitationType.ALLERGIES,
              EditAllergieArgument(fromIncitation: true),
            );
          }
        },
      ),
    );
  }
}
