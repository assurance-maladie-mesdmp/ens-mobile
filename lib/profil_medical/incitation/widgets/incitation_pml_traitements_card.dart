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
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlTraitementsCard extends StatelessWidget {
  const IncitationPmlTraitementsCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationCategorieCardViewModel>(
      converter: (store) => IncitationCategorieCardViewModel.from(store, EnsIncitationType.TRAITEMENTS),
      distinct: true,
      builder: (context, vm) => IncitationPmlCard(
        title: 'Traitements',
        subTitle: vm.description,
        asset: EnsImages.traitements,
        isCompleted: vm.isChecked,
        onTap: () {
          if (vm.isChecked) {
            context.tagAction(TagsIncitation.tag_910_button_modifier_traitements);
            Navigator.pushNamed(
              context,
              TraitementsScreen.routeName,
              arguments: const TraitementsScreenArguments(fromIncitation: true),
            );
          } else {
            vm.isProfilPrincipal
                ? context.tagAction(TagsIncitation.tag_874_button_carte_traitements_od)
                : context.tagAction(TagsIncitation.tag_880_button_carte_traitements_ad);
            showIncitationPmlFirstBottomSheet(
              context,
              vm,
              EditTraitementScreen.routeName,
              EnsIncitationType.TRAITEMENTS,
              const EditTraitementScreenArguments(
                launchMode: TraitementFormulaireMode.createTraitement(),
                fromIncitation: true,
              ),
            );
          }
        },
      ),
    );
  }
}
