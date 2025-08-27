/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsInformationCard extends StatelessWidget {
  final String image;
  final void Function() onTap;
  final Widget child;
  final Color? backgroundColor;

  const EnsInformationCard({
    required this.image,
    required this.onTap,
    required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: onTap,
      backgroundColor: backgroundColor ?? EnsColors.neutral200,
      highlightColor: EnsColors.inkHighlight,
      splashColor: EnsColors.inkSplash,
      borderRadius: 16,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EnsSvg(image, height: 56, width: 56),
          const SizedBox(width: 16),
          Expanded(child: child),
        ],
      ),
    );
  }
}
