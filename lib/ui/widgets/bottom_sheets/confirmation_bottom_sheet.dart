/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class ConfirmationBottomSheet extends StatelessWidget {
  final String title;
  final Widget? content;
  final String positiveButtonLabel;
  final Color? positiveButtonColor;
  final String? negativeButtonLabel;
  final bool areButtonsOnSameRow;
  final bool setButtonsToVerySmallSize;
  final bool hasExternalLink;
  final String? image;
  final void Function() positiveButtonHandler;
  final void Function()? negativeButtonHandler;
  final void Function()? closeButtonHandler;
  final bool loading;
  final bool shouldPopOnPositiveClick;

  const ConfirmationBottomSheet({
    super.key,
    required this.title,
    required this.content,
    required this.positiveButtonLabel,
    this.positiveButtonColor = EnsColors.error,
    this.negativeButtonLabel,
    this.areButtonsOnSameRow = true,
    required this.positiveButtonHandler,
    this.hasExternalLink = false,
    this.image,
    this.negativeButtonHandler,
    this.setButtonsToVerySmallSize = false,
    this.closeButtonHandler,
    this.loading = false,
    this.shouldPopOnPositiveClick = true,
  });

  @override
  Widget build(BuildContext context) => EnsBottomSheet(
        closeButtonHandler: closeButtonHandler,
        content: [
          if (image != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: EnsSvg(image!, height: 160, width: 160),
            ),
          Text(title, style: EnsTextStyle.text26_w400_normal_title, textAlign: TextAlign.center),
          if (content != null)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: content,
            ),
          const SizedBox(height: 32),
          if (areButtonsOnSameRow)
            _ButtonsRow(
              negativeButtonLabel: negativeButtonLabel,
              setButtonsToVerySmallSize: setButtonsToVerySmallSize,
              negativeButtonHandler: negativeButtonHandler,
              positiveButtonLabel: positiveButtonLabel,
              positiveButtonColor: positiveButtonColor,
              hasExternalLink: hasExternalLink,
              loading: loading,
              shouldPopOnPositiveClick: shouldPopOnPositiveClick,
              positiveButtonHandler: positiveButtonHandler,
            )
          else
            _ButtonsOnTwoRows(
              positiveButtonLabel: positiveButtonLabel,
              positiveButtonColor: positiveButtonColor,
              hasExternalLink: hasExternalLink,
              loading: loading,
              shouldPopOnPositiveClick: shouldPopOnPositiveClick,
              positiveButtonHandler: positiveButtonHandler,
              negativeButtonLabel: negativeButtonLabel,
              negativeButtonHandler: negativeButtonHandler,
            ),
        ],
      );
}

class _ButtonsRow extends StatelessWidget {
  const _ButtonsRow({
    required this.negativeButtonLabel,
    required this.setButtonsToVerySmallSize,
    required this.negativeButtonHandler,
    required this.positiveButtonLabel,
    required this.positiveButtonColor,
    required this.hasExternalLink,
    required this.loading,
    required this.shouldPopOnPositiveClick,
    required this.positiveButtonHandler,
  });

  final String? negativeButtonLabel;
  final bool setButtonsToVerySmallSize;
  final void Function()? negativeButtonHandler;
  final String positiveButtonLabel;
  final Color? positiveButtonColor;
  final bool hasExternalLink;
  final bool loading;
  final bool shouldPopOnPositiveClick;
  final void Function() positiveButtonHandler;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textScaleFactor = TextScaleUtils.getTextScaleFactor(context);
        final maxButtonSize = (constraints.maxWidth - 12) / 2;
        final firstButtonLines = _processButtonLines(
          negativeButtonLabel ?? 'Annuler',
          setButtonsToVerySmallSize,
          maxButtonSize,
          textScaleFactor,
        );
        final secondButtonLines =
            _processButtonLines(positiveButtonLabel, setButtonsToVerySmallSize, maxButtonSize, textScaleFactor);
        if (firstButtonLines > 1 || secondButtonLines > 1) {
          return _ButtonsOnTwoRows(
            positiveButtonLabel: positiveButtonLabel,
            positiveButtonColor: positiveButtonColor,
            hasExternalLink: hasExternalLink,
            loading: loading,
            shouldPopOnPositiveClick: shouldPopOnPositiveClick,
            positiveButtonHandler: positiveButtonHandler,
            negativeButtonLabel: negativeButtonLabel,
            negativeButtonHandler: negativeButtonHandler,
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: EnsButtonSecondary(
                label: negativeButtonLabel ?? 'Annuler',
                size: setButtonsToVerySmallSize ? EnsButtonSize.VERY_SMALL : EnsButtonSize.MEDIUM,
                onTap: () {
                  Navigator.pop(context);
                  negativeButtonHandler?.call();
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: EnsButton(
                label: positiveButtonLabel,
                color: positiveButtonColor,
                hasExternalLink: hasExternalLink,
                size: setButtonsToVerySmallSize ? EnsButtonSize.VERY_SMALL : EnsButtonSize.MEDIUM,
                isLoading: loading,
                onTap: () {
                  if (shouldPopOnPositiveClick) {
                    Navigator.pop(context);
                  }
                  positiveButtonHandler();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  int _processButtonLines(String label, bool setButtonsToVerySmallSize, double maxButtonSize, double scaleFactor) {
    final span = TextSpan(text: label, style: EnsTextStyle.text16_w700_primary);
    final textPainter = TextPainter(text: span, textDirection: TextDirection.ltr);
    const accessibilityPadding = 12;
    final insidePadding = setButtonsToVerySmallSize ? 16 : 40;
    final padding = accessibilityPadding + insidePadding; // + borderPadding;
    textPainter.layout(maxWidth: (maxButtonSize - padding) / scaleFactor);
    return textPainter.computeLineMetrics().length;
  }
}

class _ButtonsOnTwoRows extends StatelessWidget {
  final String positiveButtonLabel;
  final Color? positiveButtonColor;
  final bool hasExternalLink;
  final bool loading;
  final bool shouldPopOnPositiveClick;
  final void Function() positiveButtonHandler;
  final String? negativeButtonLabel;
  final void Function()? negativeButtonHandler;

  const _ButtonsOnTwoRows({
    required this.positiveButtonLabel,
    required this.positiveButtonColor,
    required this.hasExternalLink,
    required this.loading,
    required this.shouldPopOnPositiveClick,
    required this.positiveButtonHandler,
    required this.negativeButtonLabel,
    required this.negativeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: EnsButton(
                label: positiveButtonLabel,
                color: positiveButtonColor,
                hasExternalLink: hasExternalLink,
                isLoading: loading,
                onTap: () {
                  if (shouldPopOnPositiveClick) {
                    Navigator.pop(context);
                  }
                  positiveButtonHandler();
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: EnsButtonSecondary(
                label: negativeButtonLabel ?? 'Annuler',
                onTap: () {
                  Navigator.pop(context);
                  negativeButtonHandler?.call();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
