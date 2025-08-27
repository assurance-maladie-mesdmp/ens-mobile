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

enum ContactUrgenceType {
  MYSELF,
  NEW,
}

class ContactsUrgenceBlock extends StatelessWidget {
  final EntourageProfilInfoDisplayModel profilDisplayModel;
  final ContactUrgenceDisplayModel contactUrgenceDisplayModel;
  final void Function(ContactUrgenceType) onAddContact;

  const ContactsUrgenceBlock({
    required this.profilDisplayModel,
    required this.contactUrgenceDisplayModel,
    required this.onAddContact,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contacts d\'urgence', style: EnsTextStyle.text20_w500_normal_title),
              SizedBox(height: 8),
              Text(
                'Les personnes à contacter si je me trouve en situation d\'urgence médicale.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
        ),
        if (contactUrgenceDisplayModel.entourageContacts.isNotEmpty) ...[
          const SizedBox(height: 16),
          for (final contact in contactUrgenceDisplayModel.entourageContacts) ...[
            const EnsDivider(),
            EntourageListItem(
              contact,
              profilDisplayModel.profilType,
              profilDisplayModel.nomComplet,
            ),
          ],
        ],
        if (contactUrgenceDisplayModel.showLinkAddMyself) ...[
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: EntourageClickableLink(
              text: 'M\'ajouter comme contact d\'urgence',
              onTap: () => onAddContact(ContactUrgenceType.MYSELF),
            ),
          ),
        ],
        if (contactUrgenceDisplayModel.showLinkAddEntourage) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: EntourageClickableLink(
              text: 'Ajouter un contact d\'urgence',
              onTap: () => onAddContact(ContactUrgenceType.NEW),
            ),
          ),
        ],
      ],
    );
  }
}
