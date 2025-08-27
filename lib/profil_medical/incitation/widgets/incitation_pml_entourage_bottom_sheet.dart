/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_choix_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

void showEntourageIncitationPmlFirstBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => EnsChoixIllustrationBottomSheet(
      image: EnsImages.coordonnees_de_contact,
      width: 160,
      height: 160,
      title: 'Souhaitez-vous ajouter des contacts ?',
      description:
          'Je peux renseigner les coordonnées de mes proches pour que mes professionnels de santé puissent les informer rapidement en cas d\'urgence.',
      negativeButtonName: 'Plus tard',
      positiveButtonHandler: () async {
        context.tagAction(TagsIncitation.tag_2645_button_ajout_contact_od);
        Navigator.pushNamed(context, EntourageScreen.routeName);
      },
      negativeButtonHandler: () {
        context.tagAction(TagsIncitation.tag_2646_link_absence_contact_od);
      },
    ),
  );
}
