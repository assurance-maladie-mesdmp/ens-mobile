/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class ChampsObligatoiresFormTextWidget extends StatelessWidget {
  final bool displayFullText;
  final FocusNode? focusNode;

  const ChampsObligatoiresFormTextWidget({required this.displayFullText, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: Text(
        displayFullText
            ? 'Tous les champs sont obligatoires sauf mention contraire.'
            : 'Tous les champs sont obligatoires.',
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}
