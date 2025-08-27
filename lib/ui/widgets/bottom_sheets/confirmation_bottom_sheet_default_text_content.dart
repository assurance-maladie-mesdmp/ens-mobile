/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class ConfirmationBottomSheetDefaultTextContent extends StatelessWidget {
  final String text;

  const ConfirmationBottomSheetDefaultTextContent(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: EnsTextStyle.text16_w400_normal_body,
      textAlign: TextAlign.center,
    );
  }
}
