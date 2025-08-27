/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class HomeButton extends StatefulWidget {
  final Widget content;
  final String iconUri;
  final VoidCallback handler;
  final Color color;
  final double iconSize;
  final double radius;
  final String? semanticLabel;

  const HomeButton({
    super.key,
    required this.content,
    required this.iconUri,
    required this.handler,
    required this.color,
    this.iconSize = 30,
    this.radius = 8,
    this.semanticLabel,
  });

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  bool _isFocus = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focus) {
        setState(() {
          _isFocus = focus;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: _isFocus ? Border.all(color: widget.color, width: 2) : null,
          borderRadius: _isFocus ? BorderRadius.zero : null,
          boxShadow: [
            BoxShadow(
              color: EnsColors.info.withAlpha(OpacityUtils.getAlpha(0.2)),
              blurRadius: widget.radius,
              spreadRadius: 2,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: EnsInkWell(
          color: widget.color,
          semanticLabel: widget.semanticLabel,
          highlightColor: _highlightColor,
          splashColor: _highlightColor,
          semanticExplicitChildNodes: true,
          onTap: widget.handler,
          borderRadius: BorderRadius.circular(widget.radius),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                EnsSvg(widget.iconUri, height: widget.iconSize),
                const SizedBox(width: 8),
                Expanded(child: widget.content),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color get _highlightColor {
    switch (widget.color) {
      case EnsColors.primary:
        return EnsColors.primaryHighlight;
      default:
        return EnsColors.neutral200;
    }
  }
}
