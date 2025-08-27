/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Widget icon;
  final String tooltip;
  final VoidCallback onTap;
  final Widget? secondaryIcon;
  final VoidCallback? onSecondaryTap;
  final bool? shouldDisplaySecondaryIcon;

  const ActionButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
    this.secondaryIcon,
    this.onSecondaryTap,
    this.shouldDisplaySecondaryIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Semantics(
        label: tooltip,
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (secondaryIcon != null && shouldDisplaySecondaryIcon!)
                IconButton(
                  icon: secondaryIcon!,
                  tooltip: tooltip,
                  onPressed: onSecondaryTap,
                  splashRadius: 24,
                  constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
                ),
              if (secondaryIcon != null) const SizedBox(width: 16),
              IconButton(
                icon: icon,
                tooltip: tooltip,
                onPressed: onTap,
                splashRadius: 24,
                constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
