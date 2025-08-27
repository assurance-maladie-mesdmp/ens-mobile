/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/utils/swipe_icons_icons.dart';

class DeleteSlidable extends StatelessWidget {
  final Widget child;
  final Function(BuildContext context) onPressed;
  final IconData icon;
  final String label;
  final String groupTag;

  const DeleteSlidable({
    required this.child,
    required this.onPressed,
    this.icon = SwipeIcons.trash,
    this.label = 'Supprimer',
    this.groupTag = '0',
  });

  @override
  Widget build(BuildContext context) => Slidable(
        groupTag: groupTag,
        closeOnScroll: false,
        endActionPane: ActionPane(
          extentRatio: 0.4,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: onPressed,
              backgroundColor: EnsColors.error,
              foregroundColor: Colors.white,
              icon: icon,
              label: label,
            ),
          ],
        ),
        child: child,
      );
}
