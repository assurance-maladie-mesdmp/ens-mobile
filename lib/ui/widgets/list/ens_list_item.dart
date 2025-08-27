/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsListItem extends StatelessWidget {
  final Color color;
  final void Function() onTap;
  final Widget child;

  const EnsListItem({this.color = EnsColors.light, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: color,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: child,
      ),
    );
  }
}
