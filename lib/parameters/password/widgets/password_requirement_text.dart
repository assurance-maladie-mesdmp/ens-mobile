/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PasswordRequirementText extends StatelessWidget {
  final String label;
  final bool isValid;
  final String? semanticsLabel;

  const PasswordRequirementText({super.key, required this.label, this.isValid = false, this.semanticsLabel});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: isValid ? 'Validé: ${semanticsLabel ?? label}' : 'Non satisfait: ${semanticsLabel ?? label}',
      excludeSemantics: true,
      child: Row(
        children: [
          if (isValid)
            const EnsSvg(EnsImages.ic_check, width: 12, height: 9)
          else
            const EnsSvg(EnsImages.ic_close_small, width: 10, height: 10, color: EnsColors.error),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: isValid ? EnsTextStyle.text14_w600_normal_success : EnsTextStyle.text14_w600_normal_error,
            ),
          ),
        ],
      ),
    );
  }
}
