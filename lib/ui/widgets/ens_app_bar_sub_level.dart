/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class EnsAppBarSubLevel extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);
  final String title;
  final bool centerTitle;
  final double opacity;
  final Widget? action;
  final bool excludeSemantics;
  final bool automaticallyImplyLeading;

  const EnsAppBarSubLevel({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.opacity = 1.0,
    this.action,
    this.excludeSemantics = false,
    this.automaticallyImplyLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      title: Opacity(
        opacity: opacity,
        child: Text(
          title,
          style: EnsTextStyle.text16_title,
          textAlign: centerTitle ? TextAlign.center : TextAlign.start,
          maxLines: 2,
        ),
      ),
      backgroundColor: EnsColors.light,
      foregroundColor: EnsColors.title,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: [AppBarSubLevelAction(action: action)],
      iconTheme: const IconThemeData(color: EnsColors.title),
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeSemantics,
    );
  }
}

class AppBarSubLevelAction extends StatelessWidget {
  final Widget? action;

  const AppBarSubLevelAction({this.action, super.key});

  @override
  Widget build(BuildContext context) {
    if (action != null) {
      return action!;
    }
    return const SizedBox(width: 32);
  }
}
