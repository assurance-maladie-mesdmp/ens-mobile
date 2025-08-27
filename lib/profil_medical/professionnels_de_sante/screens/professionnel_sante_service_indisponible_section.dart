/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ProfessionnelSanteServiceIndisponibleSection extends StatelessWidget {
  final String label;

  const ProfessionnelSanteServiceIndisponibleSection({required this.label});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const EnsSvg(EnsImages.stethoscope, height: 120, width: 120),
            Text(label, style: EnsTextStyle.text24_w400_normal_title, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            const Text(
              'En raison d\'un problème technique, le service est temporairement indisponible.\n Vous pouvez réessayer plus tard.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
