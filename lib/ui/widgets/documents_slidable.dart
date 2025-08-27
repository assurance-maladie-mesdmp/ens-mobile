/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DocumentsSlidable extends StatelessWidget {
  final Widget child;
  final Function() onDeletePressed;
  final Function() onPinPressed;
  final String iconPin;
  final String labelPin;
  final String groupTag;

  const DocumentsSlidable({
    required this.child,
    required this.onDeletePressed,
    required this.onPinPressed,
    required this.iconPin,
    required this.labelPin,
    this.groupTag = '0',
  });

  @override
  Widget build(BuildContext context) => Slidable(
        groupTag: groupTag,
        closeOnScroll: false,
        endActionPane: ActionPane(
          extentRatio: 0.8,
          motion: const DrawerMotion(),
          children: [
            EnsSlidableAction(
              onPressed: (context) => onPinPressed(),
              backgroundColor: EnsColors.info,
              iconPath: iconPin,
              label: labelPin,
              autoClose: true,
            ),
            EnsSlidableAction(
              onPressed: (context) => onDeletePressed(),
              backgroundColor: EnsColors.error,
              iconPath: EnsImages.ic_trash,
              label: 'Supprimer',
              autoClose: true,
            ),
          ],
        ),
        child: child,
      );
}

class EnsSlidableAction extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color backgroundColor;
  final void Function(BuildContext) onPressed;
  final bool autoClose;

  const EnsSlidableAction({
    required this.iconPath,
    required this.label,
    required this.backgroundColor,
    required this.onPressed,
    required this.autoClose,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ColoredBox(
        color: backgroundColor,
        child: SizedBox.expand(
          child: EnsInkWell(
            onTap: () => _handleTap(context),
            child: Container(
              constraints: const BoxConstraints(minWidth: 100.0),
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EnsSvg(iconPath, width: 24, height: 24, color: EnsColors.light),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: EnsTextStyle.text14_w700_normal_light,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleTap(BuildContext context) {
    onPressed.call(context);
    if (autoClose) {
      Slidable.of(context)?.close();
    }
  }
}
