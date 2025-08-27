/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsErrorText extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final bool withPrefix;

  const EnsErrorText({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.only(bottom: 4),
    this.withPrefix = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: EnsSvg(EnsImages.ic_warning, width: 16, height: 16),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: MergeSemantics(
              child: Semantics(
                label: withPrefix ? 'Erreur: $text' : text,
                excludeSemantics: true,
                child: Text(text, style: EnsTextStyle.text14_w400_normal_error),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
