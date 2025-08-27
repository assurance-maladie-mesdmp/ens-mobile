/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:intl/intl.dart';

class InactifContactMessageCard extends StatelessWidget {
  final List<String> inactifPsContactsNames;

  const InactifContactMessageCard({required this.inactifPsContactsNames});

  @override
  Widget build(BuildContext context) => EnsCard(
        backgroundColor: EnsColors.neutral200,
        borderRadius: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Intl.plural(
                inactifPsContactsNames.length,
                one:
                    '${ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(inactifPsContactsNames.first)} n\'est plus en activité',
                other:
                    '${inactifPsContactsNames.mapIndexed((index, contact) => '${ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(contact)}${index == inactifPsContactsNames.length - 1 ? ' ' : ', '}').join()}ne sont plus en activité',
              ),
              style: EnsTextStyle.text16_w600_normal_title,
            ),
            const SizedBox(height: 4),
            Text(
              Intl.plural(
                inactifPsContactsNames.length,
                one: 'Ce professionnel de santé est susceptible de ne plus répondre aux messages.',
                other: 'Ces professionnels de santé sont susceptible de ne plus répondre aux messages.',
              ),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ],
        ),
      );
}
