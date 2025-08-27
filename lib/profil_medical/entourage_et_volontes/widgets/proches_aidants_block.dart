/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/viewModels/entourage_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/entourage_clickable_link.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/entourage_list_item.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';

class ProchesAidantsBlock extends StatelessWidget {
  final EntourageProfilInfoDisplayModel profilDisplayModel;
  final ProchesAidantsDisplayModel prochesDisplayModel;
  final void Function() onAddContact;

  const ProchesAidantsBlock({
    required this.profilDisplayModel,
    required this.prochesDisplayModel,
    required this.onAddContact,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Proches aidants', style: EnsTextStyle.text20_w500_normal_title),
              const SizedBox(height: 8),
              Text(prochesDisplayModel.description, style: EnsTextStyle.text14_w400_normal_body),
            ],
          ),
        ),
        if (prochesDisplayModel.entourageContacts.isNotEmpty) ...[
          const SizedBox(height: 16),
          for (final contact in prochesDisplayModel.entourageContacts) ...[
            const EnsDivider(),
            EntourageListItem(
              contact,
              profilDisplayModel.profilType,
              profilDisplayModel.nomComplet,
            ),
          ],
        ],
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: EntourageClickableLink(text: 'Ajouter un proche aidant', onTap: () => onAddContact()),
        ),
      ],
    );
  }
}
