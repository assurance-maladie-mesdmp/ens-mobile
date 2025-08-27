/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsButtonSecondary extends StatefulWidget {
  static const MIN_TIME_BETWEEN_CLICKS = 1000;

  final String label;
  final void Function() onTap;
  final bool loading;
  final double? loadingSize;
  final bool isDisabled;
  final double verticalPadding;
  final EnsButtonSize size;
  final bool hasExternalLink;
  final bool hasFixedSize;
  final Color borderColor;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final TextStyle disabledTextStyle;
  final TextStyle errorTextStyle;
  final String? iconName;
  final EdgeInsetsGeometry paddingAround;

  const EnsButtonSecondary({
    super.key,
    required this.label,
    required this.onTap,
    this.isDisabled = false,
    this.loading = false,
    this.loadingSize,
    this.verticalPadding = 16,
    this.size = EnsButtonSize.MEDIUM,
    this.hasExternalLink = false,
    this.borderColor = EnsColors.primary,
    this.hasFixedSize = false,
    this.backgroundColor,
    this.textStyle = EnsTextStyle.text16_w700_primary,
    this.disabledTextStyle = EnsTextStyle.text16_w700_disabled500,
    this.errorTextStyle = EnsTextStyle.text16_w700_normal_error,
    this.iconName,
    this.paddingAround = const EdgeInsets.all(4),
  });

  @override
  State<EnsButtonSecondary> createState() => _EnsButtonSecondaryState();
}

class _EnsButtonSecondaryState extends State<EnsButtonSecondary> with SingleTickerProviderStateMixin {
  var _shouldHandleClick = true;
  late AnimationController _controller;
  double _scale = 1;
  bool _isFocus = false;
  double _labelWidth = -1;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      lowerBound: 0.0,
      upperBound: 0.05,
    )..addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Focus(
      canRequestFocus: false,
      onFocusChange: (focus) {
        setState(() {
          _isFocus = focus;
        });
      },
      child: Material(
        color: Colors.transparent,
        shape: const StadiumBorder(),
        child: DecoratedBox(
          decoration: _isFocus
              ? BoxDecoration(
                  border: Border.all(color: EnsColors.focus, width: 2),
                  borderRadius: BorderRadius.circular(60),
                )
              : const BoxDecoration(),
          child: Padding(
            padding: widget.paddingAround,
            child: Transform.scale(
              scale: _scale,
              child: Semantics(
                button: true,
                child: SizedBox(
                  child: widget.loading
                      ? _SecondaryEnsLoadingButton(
                          loadingSize: widget.loadingSize,
                          hasFixedSize: widget.hasFixedSize,
                          verticalPadding: widget.size.loadingVerticalPadding,
                          horizontalPadding: widget.size.loadingHorizontalPadding,
                          borderColor: widget.borderColor,
                          labelWidth: _labelWidth,
                        )
                      : _SecondaryEnsButton(
                          borderColor: widget.borderColor,
                          backgroundColor: widget.backgroundColor,
                          isDisabled: widget.isDisabled,
                          controller: _controller,
                          verticalPadding: widget.verticalPadding,
                          horizontalPadding: widget.size.horizontalPadding,
                          label: widget.label,
                          iconName: widget.iconName,
                          textStyle: widget.textStyle,
                          disabledTextStyle: widget.disabledTextStyle,
                          errorTextStyle: widget.errorTextStyle,
                          onSizeSet: (size) {
                            _labelWidth = size;
                          },
                          onTap: () {
                            if (_shouldHandleClick) {
                              widget.onTap();
                              _shouldHandleClick = false;
                              Future.delayed(
                                const Duration(milliseconds: EnsButtonSecondary.MIN_TIME_BETWEEN_CLICKS),
                                () {
                                  _shouldHandleClick = true;
                                },
                              );
                            }
                          },
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondaryEnsLoadingButton extends StatelessWidget {
  final double? loadingSize;
  final Color borderColor;
  final double verticalPadding;
  final double horizontalPadding;
  final double labelWidth;
  final bool hasFixedSize;

  const _SecondaryEnsLoadingButton({
    required this.loadingSize,
    required this.borderColor,
    required this.verticalPadding,
    required this.horizontalPadding,
    required this.labelWidth,
    required this.hasFixedSize,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: hasFixedSize && labelWidth > 0 ? labelWidth : double.infinity),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Ink(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding + 8,
              horizontal: min((constraints.maxWidth - 40) / 2, horizontalPadding),
            ),
            decoration: ShapeDecoration(
              shape: StadiumBorder(side: BorderSide(width: 1, color: borderColor)),
            ),
            child: Center(
              child: SizedBox(
                height: loadingSize ?? 22,
                width: loadingSize ?? 22,
                child: CircularProgressIndicator(color: borderColor),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SecondaryEnsButton extends StatelessWidget {
  final Color borderColor;
  final Color? backgroundColor;
  final bool isDisabled;
  final AnimationController controller;
  final double verticalPadding;
  final double horizontalPadding;
  final String label;
  final String? iconName;
  final TextStyle textStyle;
  final TextStyle disabledTextStyle;
  final TextStyle errorTextStyle;
  final void Function() onTap;
  final void Function(double) onSizeSet;

  const _SecondaryEnsButton({
    required this.isDisabled,
    required this.controller,
    required this.borderColor,
    this.backgroundColor,
    required this.verticalPadding,
    required this.horizontalPadding,
    required this.label,
    this.iconName,
    required this.textStyle,
    required this.disabledTextStyle,
    required this.errorTextStyle,
    required this.onTap,
    required this.onSizeSet,
  });

  @override
  Widget build(BuildContext context) {
    return MeasureSize(
      onSizeSet: onSizeSet,
      child: EnsInkWell(
        onTap: isDisabled ? null : onTap,
        onTapDown: _tapDown,
        onTapUp: _tapUp,
        onTapCancel: () => controller.reverse(),
        customBorder: const StadiumBorder(),
        child: Ink(
          padding: EdgeInsets.symmetric(vertical: verticalPadding - 2, horizontal: horizontalPadding),
          decoration: ShapeDecoration(
            shape: StadiumBorder(
              side: BorderSide(width: 1, color: isDisabled ? EnsColors.disabled500 : borderColor),
            ),
            color: backgroundColor ?? EnsColors.light,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconName != null) ...[
                EnsSvg(iconName!, height: 24, width: 24, color: EnsColors.primary),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: isDisabled
                      ? disabledTextStyle
                      : borderColor == EnsColors.error
                          ? errorTextStyle
                          : textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) => controller.forward();

  void _tapUp(TapUpDetails details) => controller.reverse();
}

class _MeasureSizeRenderObject extends RenderProxyBox {
  final Function(double) onSizeSet;

  _MeasureSizeRenderObject(this.onSizeSet);

  @override
  void performLayout() {
    super.performLayout();
    if (child != null) {
      onSizeSet(child!.size.width);
    }
  }
}

class MeasureSize extends SingleChildRenderObjectWidget {
  final Function(double) onSizeSet;

  const MeasureSize({
    required this.onSizeSet,
    required Widget child,
  }) : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(onSizeSet);
  }
}
