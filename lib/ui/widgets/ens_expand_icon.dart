/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsExpandIcon extends StatefulWidget {
  const EnsExpandIcon({
    super.key,
    this.isExpanded = false,
    this.size = 24.0,
    required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.color,
    this.disabledColor,
    this.expandedColor,
    this.collapsedTileArrowDirection = ArrowDirection.UP,
  });

  final bool isExpanded;
  final double size;
  final ValueChanged<bool>? onPressed;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Color? disabledColor;
  final Color? expandedColor;
  final ArrowDirection collapsedTileArrowDirection;

  @override
  State<EnsExpandIcon> createState() => _ExpandIconState();
}

class _ExpandIconState extends State<EnsExpandIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconTurns;

  static final Animatable<double> _iconTurnTween =
      Tween<double>(begin: 0.0, end: 0.5).chain(CurveTween(curve: Curves.fastOutSlowIn));

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: kThemeAnimationDuration, vsync: this);
    _iconTurns = _controller.drive(_iconTurnTween);
    if (widget.isExpanded) {
      _controller.value = math.pi;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(EnsExpandIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded != oldWidget.isExpanded) {
      if (widget.isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  void _handlePressed() {
    widget.onPressed?.call(widget.isExpanded);
  }

  Color get _iconColor {
    if (widget.disabledColor != null && widget.onPressed == null) {
      return widget.disabledColor!;
    }

    if (widget.isExpanded && widget.expandedColor != null) {
      return widget.expandedColor!;
    }

    if (widget.color != null) {
      return widget.color!;
    }

    switch (Theme.of(context).brightness) {
      case Brightness.light:
        return Colors.black54;
      case Brightness.dark:
        return Colors.white60;
    }
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(context);
    final String onTapHint = widget.isExpanded ? localizations.expandedIconTapHint : localizations.collapsedIconTapHint;

    return EnsInkWell(
      semanticOnTapHint: widget.onPressed == null ? null : onTapHint,
      onTap: widget.onPressed == null ? null : _handlePressed,
      child: Padding(
        padding: widget.padding,
        child: RotationTransition(
          turns: _iconTurns,
          child: Icon(
            widget.collapsedTileArrowDirection == ArrowDirection.UP ? Icons.expand_less : Icons.expand_more,
            color: _iconColor,
            size: widget.size,
          ),
        ),
      ),
    );
  }
}

enum ArrowDirection { UP, DOWN }
