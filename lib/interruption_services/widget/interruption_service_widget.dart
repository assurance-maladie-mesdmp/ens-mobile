/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum InterruptionServiceSectionName {
  DOCUMENT,
  HISTORIQUE_ACTIVITE,
  PS_CONFIDENTIALITE,
  MHS;

  String get title {
    switch (this) {
      case InterruptionServiceSectionName.DOCUMENT:
        return 'Documents indisponibles';
      case InterruptionServiceSectionName.HISTORIQUE_ACTIVITE:
        return 'Historique d\'activité indisponible';
      case InterruptionServiceSectionName.PS_CONFIDENTIALITE:
        return 'Statut de confidentialité indisponible';
      case InterruptionServiceSectionName.MHS:
        return 'Mon histoire de santé est indisponible';
    }
  }
}

class InterruptionServiceSection extends StatelessWidget {
  final InterruptionServiceSectionName from;
  final String message;

  const InterruptionServiceSection({required this.from, required this.message});

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
            Text(from.title, style: EnsTextStyle.text24_w400_normal_title, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            Text(message, style: EnsTextStyle.text16_w400_normal_body, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
