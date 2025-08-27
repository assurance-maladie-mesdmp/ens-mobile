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

class PersonneDeConfianceBlock extends StatelessWidget {
  final EntourageProfilInfoDisplayModel profilDisplayModel;
  final PersonneDeConfianceDisplayModel personneDeConfianceDisplayModel;
  final void Function() onAddContact;

  const PersonneDeConfianceBlock({
    required this.profilDisplayModel,
    required this.personneDeConfianceDisplayModel,
    required this.onAddContact,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Personne de confiance', style: EnsTextStyle.text20_w500_normal_title),
              const SizedBox(height: 8),
              Text(personneDeConfianceDisplayModel.description, style: EnsTextStyle.text14_w400_normal_body),
            ],
          ),
        ),
        if (personneDeConfianceDisplayModel.entourageContacts.isNotEmpty) ...[
          const SizedBox(height: 16),
          for (final contact in personneDeConfianceDisplayModel.entourageContacts) ...[
            const EnsDivider(),
            EntourageListItem(
              contact,
              profilDisplayModel.profilType,
              profilDisplayModel.nomComplet,
            ),
          ],
        ],
        if (personneDeConfianceDisplayModel.showLinkAddEntourage) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: EntourageClickableLink(
              text: 'Ajouter une personne de confiance',
              onTap: () => onAddContact(),
            ),
          ),
        ] else ...[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Text('Je ne peux ajouter qu\'une seule personne de confiance.'),
          ),
        ],
      ],
    );
  }
}
