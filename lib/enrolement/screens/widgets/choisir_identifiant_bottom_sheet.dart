/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';

class ChoisirIdentifiantBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const EnsIllustrationBottomSheet(
      title: 'Comment choisir mon identifiant ?',
      additionalContent: [
        Text(
          'L\'identifiant doit contenir 8 caractères minimum. Il ne doit pas contenir d’accent ou de caractères spéciaux autres que “. - _”. ',
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24),
        Text(
          'Les adresses e-mail, numéro de sécurité sociale et IBAN ne peuvent pas être utilisés.',
          style: EnsTextStyle.text16_w700_body,
          textAlign: TextAlign.center,
        ),
      ],
      positiveButtonLabel: 'J\'ai compris',
    );
  }
}
