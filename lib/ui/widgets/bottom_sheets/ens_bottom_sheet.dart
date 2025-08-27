/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class EnsBottomSheet extends StatelessWidget {
  final List<Widget> content;
  final EdgeInsetsGeometry contentPadding;
  final bool stretch;
  final bool withInsetsBottom;
  final EnsTag? pageTag;
  final void Function()? closeButtonHandler;
  final bool showCloseButton;

  const EnsBottomSheet({
    super.key,
    required this.content,
    this.stretch = false,
    this.withInsetsBottom = false,
    this.closeButtonHandler,
    this.pageTag,
    this.contentPadding = const EdgeInsets.only(left: 24, right: 24, bottom: 24),
    this.showCloseButton = true,
  });

  @override
  Widget build(BuildContext context) {
    if (pageTag != null) {
      context.tagAction(pageTag!);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: Material(
          color: EnsColors.light,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SafeArea(
              child: Padding(
                padding: withInsetsBottom
                    ? EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)
                    : EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (showCloseButton)
                      Container(
                        margin: EdgeInsets.only(top: DeviceUtils.isSmallDevice(context) ? 12 : 16, right: 16),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: EnsCrossButton(
                            onTap: () {
                              Navigator.pop(context);
                              closeButtonHandler?.call();
                            },
                          ),
                        ),
                      ),
                    Flexible(
                      child: ScrollviewWithScrollbar(
                        padding: contentPadding,
                        child: Column(
                          crossAxisAlignment: stretch ? CrossAxisAlignment.stretch : CrossAxisAlignment.center,
                          children: content,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EnsIllustrationBottomSheet extends StatefulWidget {
  final void Function()? closeButtonHandler;
  final void Function()? negativeButtonHandler;
  final void Function()? positiveButtonHandler;
  final List<Widget> additionalContent;
  final List<Widget> additionalContentCenter;
  final List<Widget> additionalContentEnd;
  final String title;
  final String? subtitle;
  final String positiveButtonLabel;
  final String? negativeButtonLabel;
  final String? asset;
  final bool areButtonsOnSameRow;
  final bool secondaryButtonOutlined;
  final bool isSubtitleHTML;
  final void Function()? linkHandler;
  final bool positiveButtonShouldPop;
  final bool isPositiveButtonLoading;
  final bool isNegativeButtonDisabled;

  const EnsIllustrationBottomSheet({
    super.key,
    this.closeButtonHandler,
    this.negativeButtonHandler,
    this.positiveButtonHandler,
    this.additionalContent = const [],
    this.additionalContentCenter = const [],
    this.additionalContentEnd = const [],
    required this.title,
    this.subtitle,
    required this.positiveButtonLabel,
    this.negativeButtonLabel,
    this.asset,
    this.areButtonsOnSameRow = false,
    this.secondaryButtonOutlined = true,
    this.isSubtitleHTML = false,
    this.linkHandler,
    this.positiveButtonShouldPop = true,
    this.isPositiveButtonLoading = false,
    this.isNegativeButtonDisabled = false,
  });

  @override
  State<EnsIllustrationBottomSheet> createState() => _EnsIllustrationBottomSheetState();
}

class _EnsIllustrationBottomSheetState extends State<EnsIllustrationBottomSheet> {
  final contentKey = GlobalKey();
  double illustrationHeight = 0;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final contentHeightWithoutIllustration = contentKey.currentContext?.size?.height ?? 0;
      final maxBottomSheetHeight = 9 * MediaQuery.of(context).size.height / 10;
      final headerHeight = (DeviceUtils.isSmallDevice(context) ? 46 : 50) + 34;
      setState(() {
        final illustrationMaxSize = maxBottomSheetHeight - headerHeight - contentHeightWithoutIllustration;
        illustrationHeight = max(0, min(160, illustrationMaxSize));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: Material(
          color: EnsColors.light,
          child: SafeArea(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.9,
              ),
              child: ScrollviewWithScrollbar(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: EnsCrossButton(
                        onTap: () {
                          Navigator.pop(context);
                          widget.closeButtonHandler?.call();
                        },
                      ),
                    ),
                    if (widget.asset != null)
                      ExcludeSemantics(
                        child: SizedBox(height: illustrationHeight, child: EnsIllustration(widget.asset!)),
                      ),
                    Column(
                      key: contentKey,
                      children: [
                        const SizedBox(height: 8),
                        Text(widget.title, style: EnsTextStyle.text26_w400_normal_title, textAlign: TextAlign.center),
                        if (widget.additionalContent.isNotEmpty) const SizedBox(height: 16),
                        ...widget.additionalContent,
                        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 24),
                        if (widget.subtitle != null)
                          if (widget.isSubtitleHTML)
                            EnsHtml(
                              data: widget.subtitle!,
                              showIcon: true,
                              onLinkTap: widget.linkHandler,
                            )
                          else
                            Text(
                              widget.subtitle!,
                              style: EnsTextStyle.text16_w400_normal_body,
                              textAlign: TextAlign.center,
                            ),
                        if (widget.additionalContentCenter.isNotEmpty) const SizedBox(height: 16),
                        ...widget.additionalContentCenter,
                        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 24),
                        if (widget.areButtonsOnSameRow && widget.negativeButtonLabel != null)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: EnsButtonSecondary(
                                  label: widget.negativeButtonLabel!,
                                  isDisabled: widget.isNegativeButtonDisabled,
                                  onTap: () {
                                    Navigator.pop(context);
                                    widget.negativeButtonHandler?.call();
                                  },
                                ),
                              ),
                              const SizedBox(width: 24),
                              Expanded(
                                child: EnsButton(
                                  label: widget.positiveButtonLabel,
                                  isLoading: widget.isPositiveButtonLoading,
                                  onTap: () {
                                    if (widget.positiveButtonShouldPop) {
                                      Navigator.pop(context);
                                    }
                                    widget.positiveButtonHandler?.call();
                                  },
                                ),
                              ),
                            ],
                          )
                        else
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              EnsButton(
                                label: widget.positiveButtonLabel,
                                isLoading: widget.isPositiveButtonLoading,
                                onTap: () {
                                  if (widget.positiveButtonShouldPop) {
                                    Navigator.pop(context);
                                  }
                                  widget.positiveButtonHandler?.call();
                                },
                              ),
                              if (widget.secondaryButtonOutlined && widget.negativeButtonLabel != null) ...[
                                SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 16),
                                EnsButtonSecondary(
                                  label: widget.negativeButtonLabel!,
                                  isDisabled: widget.isNegativeButtonDisabled,
                                  onTap: () {
                                    Navigator.pop(context);
                                    widget.negativeButtonHandler?.call();
                                  },
                                ),
                              ] else if (widget.negativeButtonLabel != null) ...[
                                SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 16),
                                EnsInkWell(
                                  color: EnsColors.light,
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: widget.isNegativeButtonDisabled
                                      ? null
                                      : () {
                                          Navigator.pop(context);
                                          widget.negativeButtonHandler?.call();
                                        },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      widget.negativeButtonLabel!,
                                      style: EnsTextStyle.text14_w700_normal_primary,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ...widget.additionalContentEnd,
                        const SizedBox(height: 28),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
