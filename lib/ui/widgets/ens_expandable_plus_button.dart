/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsExpandablePlusButton extends StatefulWidget {
  final Widget child;
  final String collapsedLabel;
  final String expandedLabel;
  final void Function()? onTap;

  const EnsExpandablePlusButton({
    required this.child,
    required this.collapsedLabel,
    required this.expandedLabel,
    this.onTap,
  });

  @override
  State<EnsExpandablePlusButton> createState() => _EnsExpandablePlusButtonState();
}

class _EnsExpandablePlusButtonState extends State<EnsExpandablePlusButton> with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late final AnimationController _animationController =
      AnimationController(duration: const Duration(milliseconds: 250), vsync: this);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EnsInkWell(
          onTap: () {
            widget.onTap?.call();
            setState(() {
              isExpanded ? _animationController.reverse() : _animationController.forward();
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: isExpanded
                    ? const EnsSvg(EnsImages.ic_minus_square, svgKey: ValueKey('expanded'), color: EnsColors.primary)
                    : const EnsSvg(EnsImages.ic_plus_square, svgKey: ValueKey('masked'), color: EnsColors.primary),
              ),
              const SizedBox(width: 8),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: isExpanded
                    ? Text(
                        widget.expandedLabel,
                        key: const ValueKey('expanded-label'),
                        style: EnsTextStyle.text12_w700_normal_primary,
                        textAlign: TextAlign.start,
                      )
                    : Text(
                        widget.collapsedLabel,
                        key: const ValueKey('collapsed-label'),
                        style: EnsTextStyle.text12_w700_normal_primary,
                        textAlign: TextAlign.start,
                      ),
              ),
            ],
          ),
        ),
        SizeTransition(
          axisAlignment: 1.0,
          sizeFactor: _animationController,
          child: Padding(padding: const EdgeInsets.only(top: 8), child: widget.child),
        ),
      ],
    );
  }
}
