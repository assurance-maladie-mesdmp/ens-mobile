/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_categorie_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_first_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/edit_maladie_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlMaladiesCard extends StatelessWidget {
  const IncitationPmlMaladiesCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationCategorieCardViewModel>(
      converter: (store) => IncitationCategorieCardViewModel.from(store, EnsIncitationType.MALADIES),
      distinct: true,
      builder: (context, vm) => IncitationPmlCard(
        title: 'Maladies',
        subTitle: vm.description,
        asset: EnsImages.maladie_sujet_de_sante,
        isCompleted: vm.isChecked,
        onTap: () {
          if (vm.isChecked) {
            context.tagAction(TagsIncitation.tag_909_button_modifier_maladies);
            Navigator.pushNamed(
              context,
              MaladiesScreen.routeName,
              arguments: const MaladiesScreenArguments(fromIncitation: true),
            );
          } else {
            vm.isProfilPrincipal
                ? context.tagAction(TagsIncitation.tag_873_button_carte_maladies_od)
                : context.tagAction(TagsIncitation.tag_879_button_carte_maladies_ad);
            showIncitationPmlFirstBottomSheet(
              context,
              vm,
              EditMaladieScreen.routeName,
              EnsIncitationType.MALADIES,
              const EditMaladieScreenArguments(true),
            );
          }
        },
      ),
    );
  }
}
