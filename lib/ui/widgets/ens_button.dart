/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsButton extends StatefulWidget {
  static const MIN_TIME_BETWEEN_CLICKS = 1000;

  final String label;
  final void Function() onTap;
  final bool isLoading;
  final double? loadingSize;
  final bool isDisabled;
  final double verticalPadding;
  final EnsButtonSize size;
  final bool hasExternalLink;
  final bool hasFixedSize;
  final String? loadingText;
  final Color? color;
  final String? semanticLabel;
  final String? leadingIconPath;
  final bool isEnrolement;
  final EdgeInsetsGeometry paddingAround;
  final Color bordersColor;
  final TextStyle labelTextStyle;

  const EnsButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isDisabled = false,
    this.isLoading = false,
    this.loadingSize,
    this.hasFixedSize = false,
    this.verticalPadding = 16,
    this.size = EnsButtonSize.MEDIUM,
    this.hasExternalLink = false,
    this.loadingText,
    this.color,
    this.semanticLabel,
    this.leadingIconPath,
    this.isEnrolement = false, //FIXME: évite que le bouton en état LOADING "casse" la page
    this.paddingAround = const EdgeInsets.all(4),
    this.bordersColor = Colors.transparent,
    this.labelTextStyle = EnsTextStyle.text16_w700_normal_light,
  });

  @override
  State<EnsButton> createState() => _EnsButtonState();
}

class _EnsButtonState extends State<EnsButton> with SingleTickerProviderStateMixin {
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

  void _tapDown(TapDownDetails details) => _controller.forward();

  void _tapUp(TapUpDetails details) => _controller.reverse();

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
                  border: Border.all(
                    color: EnsColors.focus,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(60),
                )
              : const BoxDecoration(),
          child: Padding(
            padding: widget.paddingAround,
            child: Transform.scale(
              scale: _scale,
              child: Semantics(
                label: widget.semanticLabel,
                button: !widget.hasExternalLink,
                link: widget.hasExternalLink,
                child: SizedBox(
                  child: widget.isLoading
                      ? widget.isEnrolement
                          ? _PrimaryEnsLoadingEnrolementButton(
                              loadingText: widget.loadingText,
                              loadingSize: widget.loadingSize,
                              color: widget.color,
                              size: widget.size,
                              isDisabled: widget.isDisabled,
                            )
                          : _PrimaryEnsLoadingButton(
                              hasFixedSize: widget.hasFixedSize,
                              loadingSize: widget.loadingSize,
                              loadingText: widget.loadingText,
                              color: widget.color,
                              size: widget.size,
                              isDisabled: widget.isDisabled,
                              labelWidth: _labelWidth,
                            )
                      : _PrimaryEnsButton(
                          onTapDown: widget.isDisabled ? null : _tapDown,
                          onTapUp: widget.isDisabled ? null : _tapUp,
                          controller: _controller,
                          isDisabled: widget.isDisabled,
                          handleClick: _handleClick,
                          verticalPadding: widget.verticalPadding,
                          size: widget.size,
                          hasExternalLink: widget.hasExternalLink,
                          color: widget.color,
                          label: widget.label,
                          onSizeSet: (size) {
                            _labelWidth = size;
                          },
                          leadingIconPath: widget.leadingIconPath,
                          bordersColor: widget.bordersColor,
                          labelTextStyle: widget.labelTextStyle,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClick() {
    if (_shouldHandleClick && !widget.isLoading) {
      widget.onTap();
      _shouldHandleClick = false;
      Future.delayed(const Duration(milliseconds: EnsButton.MIN_TIME_BETWEEN_CLICKS), () {
        _shouldHandleClick = true;
      });
    }
  }
}

class _PrimaryEnsLoadingButton extends StatelessWidget {
  final String? loadingText;
  final double? loadingSize;
  final Color? color;
  final EnsButtonSize size;
  final bool isDisabled;
  final double labelWidth;
  final bool hasFixedSize;

  const _PrimaryEnsLoadingButton({
    required this.loadingText,
    required this.loadingSize,
    required this.color,
    required this.size,
    required this.isDisabled,
    required this.labelWidth,
    required this.hasFixedSize,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: hasFixedSize && labelWidth > 0 ? labelWidth : double.infinity),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return _PrimaryEnsLoadingButtonContent(
            loadingText: loadingText,
            loadingSize: loadingSize,
            color: color,
            size: size,
            isDisabled: isDisabled,
            padding: EdgeInsets.symmetric(
              vertical: size.loadingVerticalPadding + 8,
              horizontal: min((constraints.maxWidth - 40) / 2, size.loadingHorizontalPadding),
            ),
          );
        },
      ),
    );
  }
}

class _PrimaryEnsLoadingEnrolementButton extends StatelessWidget {
  final String? loadingText;
  final double? loadingSize;
  final Color? color;
  final EnsButtonSize size;
  final bool isDisabled;

  const _PrimaryEnsLoadingEnrolementButton({
    required this.loadingText,
    required this.loadingSize,
    required this.color,
    required this.size,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: _PrimaryEnsLoadingButtonContent(
        loadingText: loadingText,
        loadingSize: loadingSize,
        color: color,
        size: size,
        isDisabled: isDisabled,
        padding: EdgeInsets.symmetric(vertical: size.loadingVerticalPadding + 8, horizontal: 16),
      ),
    );
  }
}

class _PrimaryEnsLoadingButtonContent extends StatelessWidget {
  final String? loadingText;
  final double? loadingSize;
  final Color? color;
  final EnsButtonSize size;
  final bool isDisabled;
  final EdgeInsetsGeometry padding;

  const _PrimaryEnsLoadingButtonContent({
    required this.loadingText,
    required this.loadingSize,
    required this.color,
    required this.size,
    required this.isDisabled,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: padding,
      decoration: isDisabled
          ? const ShapeDecoration(color: EnsColors.disabled, shape: StadiumBorder())
          : ShapeDecoration(
              gradient: color == null ? EnsColors.gradient01 : null,
              color: color,
              shape: const StadiumBorder(),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: loadingSize ?? 22,
            width: loadingSize ?? 22,
            child: const CircularProgressIndicator(color: EnsColors.light, strokeWidth: 3),
          ),
          if (loadingText != null) Expanded(child: _LoadingText(loadingText!)),
        ],
      ),
    );
  }
}

enum EnsButtonSize {
  MEDIUM(horizontalPadding: 20, loadingVerticalPadding: 8, loadingHorizontalPadding: 80),
  SMALL(horizontalPadding: 16, loadingVerticalPadding: 4, loadingHorizontalPadding: 20),
  VERY_SMALL(horizontalPadding: 8, loadingVerticalPadding: 4, loadingHorizontalPadding: 20);

  final double horizontalPadding;
  final double loadingVerticalPadding;
  final double loadingHorizontalPadding;

  const EnsButtonSize({
    required this.horizontalPadding,
    required this.loadingVerticalPadding,
    required this.loadingHorizontalPadding,
  });
}

class _PrimaryEnsButton extends StatelessWidget {
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final AnimationController controller;
  final bool isDisabled;
  final void Function() handleClick;
  final double verticalPadding;
  final EnsButtonSize size;
  final bool hasExternalLink;
  final Color? color;
  final String label;
  final String? leadingIconPath;
  final void Function(double) onSizeSet;
  final Color bordersColor;
  final TextStyle labelTextStyle;

  const _PrimaryEnsButton({
    required this.onTapDown,
    required this.onTapUp,
    required this.controller,
    required this.isDisabled,
    required this.handleClick,
    required this.verticalPadding,
    required this.size,
    required this.color,
    required this.hasExternalLink,
    required this.label,
    this.leadingIconPath,
    required this.onSizeSet,
    required this.bordersColor,
    required this.labelTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return MeasureSize(
      onSizeSet: onSizeSet,
      child: EnsInkWell(
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        onTapCancel: () => controller.reverse(),
        onTap: isDisabled ? null : () => handleClick(),
        highlightColor: _highlightColor,
        splashColor: _highlightColor,
        customBorder: const StadiumBorder(),
        child: Ink(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: size.horizontalPadding,
          ),
          decoration: isDisabled
              ? const ShapeDecoration(color: EnsColors.disabled, shape: StadiumBorder())
              : ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(color: bordersColor),
                  ),
                  color: color,
                  gradient: color == null ? EnsColors.gradient01 : null,
                ),
          child: hasExternalLink
              ? EnsExternalLink.withoutRedirection(
                  linkText: label,
                  linkTextStyle: labelTextStyle,
                  linkTextAlign: TextAlign.center,
                  iconColor: EnsColors.light,
                )
              : leadingIconPath != null
                  ? Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        EnsSvg(leadingIconPath!, width: 24, height: 24, color: EnsColors.light),
                        const SizedBox(width: 8),
                        Text(label, textAlign: TextAlign.center, style: labelTextStyle),
                      ],
                    )
                  : Text(label, textAlign: TextAlign.center, style: labelTextStyle),
        ),
      ),
    );
  }

  Color get _highlightColor {
    switch (color) {
      case null:
        return EnsColors.primaryHighlight;
      case EnsColors.error:
        return EnsColors.errorHighlight;
      default:
        return EnsColors.neutral200;
    }
  }
}

class _LoadingText extends StatelessWidget {
  final String loadingText;

  const _LoadingText(this.loadingText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(loadingText, style: EnsTextStyle.text16_w700_normal_light),
    );
  }
}
