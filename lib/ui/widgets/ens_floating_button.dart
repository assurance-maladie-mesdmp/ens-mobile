/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';

class EnsFloatingButton extends StatelessWidget {
  final String? semanticsLabel;
  final String buttonLabel;
  final String? buttonLoadingLabel;
  final bool isLoading;
  final bool isDisabled;
  final EnsButtonSize size;
  final void Function() onTap;
  final String? leadingIconPath;
  final bool expanded;
  final EdgeInsets padding;
  final bool hasFixedSize;

  const EnsFloatingButton({
    required this.buttonLabel,
    required this.onTap,
    this.isDisabled = false,
    this.isLoading = false,
    this.size = EnsButtonSize.MEDIUM,
    this.buttonLoadingLabel,
    this.semanticsLabel,
    this.leadingIconPath,
    this.expanded = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
    this.hasFixedSize = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = EnsButton(
      label: buttonLabel,
      isLoading: isLoading,
      isDisabled: isDisabled,
      onTap: onTap,
      size: size,
      loadingText: buttonLoadingLabel,
      semanticLabel: semanticsLabel,
      leadingIconPath: leadingIconPath,
      paddingAround: EdgeInsets.zero,
      hasFixedSize: hasFixedSize,
    );
    if (expanded) {
      child = Padding(
        padding: padding,
        child: FractionallySizedBox(widthFactor: 1.0, child: child),
      );
    }
    return child;
  }
}
