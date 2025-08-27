/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_hollow_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsSortingButton extends StatelessWidget {
  final EdgeInsets padding;
  final void Function()? onTap;
  final String? accessibilityButtonText;
  final Widget sortingDialog;

  const EnsSortingButton({
    super.key,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    this.onTap,
    this.accessibilityButtonText,
    required this.sortingDialog,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: EnsHollowButton(
        text: 'Trier',
        icon: EnsImages.filter_outline,
        semanticsLabel: accessibilityButtonText,
        onTap: () {
          onTap?.call();
          showGeneralDialog(
            context: context,
            barrierDismissible: false,
            transitionDuration: const Duration(milliseconds: 350),
            transitionBuilder: (_, anim1, __, child) {
              return SlideTransition(
                position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim1),
                child: child,
              );
            },
            pageBuilder: (context, _, __) => sortingDialog,
          );
        },
      ),
    );
  }
}
