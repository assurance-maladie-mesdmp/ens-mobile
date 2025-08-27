/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class EnsEtiquette extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final TextStyle textStyle;
  final EdgeInsets padding;

  const EnsEtiquette({
    required this.label,
    required this.backgroundColor,
    this.textStyle = EnsTextStyle.text14_w600_normal_title,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: backgroundColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Text(
          label,
          style: textStyle,
        ),
      ),
    );
  }
}
