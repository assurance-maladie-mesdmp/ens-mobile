/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsCrossButton extends StatelessWidget {
  final String accessibilityLabel;
  final double size;
  final void Function()? onTap;

  const EnsCrossButton({
    this.accessibilityLabel = 'Fermer la fenêtre',
    this.onTap,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      semanticLabel: accessibilityLabel,
      borderRadius: BorderRadius.circular(40),
      onTap: onTap,
      child: SizedBox(
        width: 48,
        height: 48,
        child: Center(
          child: EnsSvg(EnsImages.ic_close_big, alignment: Alignment.centerRight, height: size, width: size),
        ),
      ),
    );
  }
}
