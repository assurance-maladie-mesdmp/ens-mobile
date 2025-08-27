/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsFloatingActionAddButton extends StatelessWidget {
  final void Function() onPressed;
  final String? tooltip;
  final double size;
  final String? heroTag;

  const EnsFloatingActionAddButton({super.key, required this.onPressed, this.tooltip, this.size = 60, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      tooltip: tooltip,
      onPressed: onPressed,
      shape: const CircleBorder(),
      backgroundColor: EnsColors.primary,
      child: Ink(
        width: size,
        height: size,
        child: const Icon(
          Icons.add,
          size: 40,
          color: EnsColors.light,
        ),
      ),
    );
  }
}
