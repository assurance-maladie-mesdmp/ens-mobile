/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/count_bubble_indicator.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_hollow_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsFilterButton extends StatelessWidget {
  final EdgeInsets padding;
  final int numberActiveFilters;
  final void Function()? onTap;
  final String? accessibilityButtonText;
  final Widget filterDialog;

  const EnsFilterButton({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    required this.numberActiveFilters,
    this.onTap,
    this.accessibilityButtonText,
    required this.filterDialog,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 48),
      padding: padding,
      child: EnsHollowButton(
        text: 'Filtrer',
        semanticsLabel: accessibilityButtonText,
        endChild: numberActiveFilters > 0 ? CountBubbleIndicator(count: numberActiveFilters) : null,
        onTap: () {
          onTap?.call();
          showFilterDialog(context, filterDialog);
        },
        icon: EnsImages.ic_parameters,
        color: Colors.white,
      ),
    );
  }
}

void showFilterDialog(BuildContext context, Widget filterDialog) {
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
    pageBuilder: (context, _, __) => filterDialog,
  );
}
