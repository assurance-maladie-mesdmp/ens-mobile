/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class EnsEmptyButtonList {
  final EnsButton? primaryButton;
  final EnsButtonSecondary? secondaryButton;
  final EnsExternalLink? externalLink1;
  final EnsExternalLink? externalLink2;
  final EnsLinkText? topLinkTextButton;
  final EnsLinkText? bottomLinkTextButton;

  const EnsEmptyButtonList._({
    this.primaryButton,
    this.secondaryButton,
    this.externalLink1,
    this.externalLink2,
    this.topLinkTextButton,
    this.bottomLinkTextButton,
  });

  EnsEmptyButtonList.withPrimaryButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
  }) : this._(primaryButton: EnsButton(label: primaryButtonLabel, onTap: primaryButtonHandler));

  EnsEmptyButtonList.withPrimaryButtonWithIcon({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String leadingIconPath,
  }) : this._(
          primaryButton: EnsButton(
            label: primaryButtonLabel,
            onTap: primaryButtonHandler,
            leadingIconPath: leadingIconPath,
          ),
        );

  EnsEmptyButtonList.withPrimaryAndSecondaryButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String secondaryButtonLabel,
    required void Function() secondaryButtonHandler,
  }) : this._(
          primaryButton: EnsButton(label: primaryButtonLabel, onTap: primaryButtonHandler),
          secondaryButton: EnsButtonSecondary(label: secondaryButtonLabel, onTap: secondaryButtonHandler),
        );

  EnsEmptyButtonList.withPrimaryAndTopLinkTextButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String linkButtonLabel,
    required void Function() linkButtonHandler,
  }) : this._(
          primaryButton: EnsButton(label: primaryButtonLabel, onTap: primaryButtonHandler),
          topLinkTextButton: EnsLinkText(label: linkButtonLabel, onTap: linkButtonHandler),
        );

  EnsEmptyButtonList.withPrimaryAndBottomLinkTextButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String linkButtonLabel,
    required bool isLinkButtonLoading,
    required void Function() linkButtonHandler,
  }) : this._(
          primaryButton: EnsButton(
            label: primaryButtonLabel,
            isDisabled: isLinkButtonLoading,
            onTap: primaryButtonHandler,
          ),
          bottomLinkTextButton: EnsLinkText(
            label: linkButtonLabel,
            isLoading: isLinkButtonLoading,
            onTap: linkButtonHandler,
          ),
        );

  EnsEmptyButtonList.withPrimaryAndExternalLinkButtonAndBottomLinkText({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String linkButtonLabel,
    required bool isLinkButtonLoading,
    required void Function() linkButtonHandler,
    required String externalLinkLabel,
    required String externalLinkUrl,
  }) : this._(
          primaryButton: EnsButton(
            label: primaryButtonLabel,
            isDisabled: isLinkButtonLoading,
            onTap: primaryButtonHandler,
          ),
          externalLink1: EnsExternalLink.withRedirection(linkText: externalLinkLabel, linkUrl: externalLinkUrl),
          bottomLinkTextButton:
              EnsLinkText(label: linkButtonLabel, isLoading: isLinkButtonLoading, onTap: linkButtonHandler),
        );

  EnsEmptyButtonList.withPrimaryAndTwoExternalLinkButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String externalLinkLabel1,
    required String externalLinkUrl1,
    String? externalLinkUrlSemanticLabel1,
    required String externalLinkLabel2,
    required String externalLinkUrl2,
    String? externalLinkUrlSemanticLabel2,
  }) : this._(
          primaryButton: EnsButton(
            label: primaryButtonLabel,
            onTap: primaryButtonHandler,
          ),
          externalLink1: EnsExternalLink.withRedirection(
            linkText: externalLinkLabel1,
            linkUrl: externalLinkUrl1,
            semanticsLabel: externalLinkUrlSemanticLabel1,
          ),
          externalLink2: EnsExternalLink.withRedirection(
            linkText: externalLinkLabel2,
            linkUrl: externalLinkUrl2,
            semanticsLabel: externalLinkUrlSemanticLabel2,
          ),
        );

  EnsEmptyButtonList.withPrimaryAndExternalLinkButton({
    required String primaryButtonLabel,
    required void Function() primaryButtonHandler,
    required String externalLinkLabel,
    required String externalLinkUrl,
  }) : this._(
          primaryButton: EnsButton(
            label: primaryButtonLabel,
            onTap: primaryButtonHandler,
          ),
          externalLink1: EnsExternalLink.withRedirection(linkText: externalLinkLabel, linkUrl: externalLinkUrl),
        );

  EnsEmptyButtonList.withExternalLinkButton({
    required String externalLinkLabel,
    required String externalLinkUrl,
    required void Function() externalLinkOnTap,
  }) : this._(
          externalLink1: EnsExternalLink.withRedirection(
            linkText: externalLinkLabel,
            linkUrl: externalLinkUrl,
            onTap: externalLinkOnTap,
          ),
        );

  EnsEmptyButtonList.withoutButton() : this._();
}

class EnsEmptyPage extends StatelessWidget {
  final EnsPersistentInfoBox? infoBox;
  final String? title;
  final String? description;
  final EnsRichText? descriptionRichText;
  final String? customImagePath;
  final EnsEmptyButtonList? buttonList;
  final ScrollPhysics? physics;
  final Widget? bottomWidget;

  const EnsEmptyPage({
    this.infoBox,
    this.title,
    this.description,
    this.descriptionRichText,
    this.customImagePath,
    this.buttonList,
    this.physics,
    this.bottomWidget,
  }) : assert(
          (description != null && descriptionRichText == null) || (description == null && descriptionRichText != null),
        );

  @override
  Widget build(BuildContext context) {
    final primaryButton = buttonList?.primaryButton;
    final secondaryButton = buttonList?.secondaryButton;
    final externalLinkButton1 = buttonList?.externalLink1;
    final externalLinkButton2 = buttonList?.externalLink2;
    final topLinkTextButton = buttonList?.topLinkTextButton;
    final bottomLinkTextButton = buttonList?.bottomLinkTextButton;

    final asset =
        customImagePath ?? (bottomLinkTextButton != null ? EnsImages.document_ajout : EnsImages.document_success);
    return DisappearingIllustrationPage(
      asset: asset,
      physics: physics,
      infoBox: infoBox,
      children: [
        if (title != null) ...[
          Text(
            title!,
            textAlign: TextAlign.center,
            style: DeviceUtils.isSmallDevice(context)
                ? EnsTextStyle.text20_w400_normal_title
                : EnsTextStyle.text26_w400_normal_title,
          ),
          SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 20),
        ],
        if (description != null)
          Text(
            description!,
            textAlign: TextAlign.center,
            style: DeviceUtils.isSmallDevice(context)
                ? EnsTextStyle.text14_w400_normal_body
                : EnsTextStyle.text16_w400_normal_body,
          ),
        descriptionRichText ?? Container(),
        if (externalLinkButton1 != null) ...[
          SizedBox(
            height: DeviceUtils.isSmallDevice(context) || externalLinkButton1.extraPadding.horizontal > 0.0 ? 4 : 8,
          ),
          Center(
            child: EnsExternalLink.withRedirection(
              linkText: externalLinkButton1.linkText,
              linkUrl: externalLinkButton1.linkUrl,
              semanticsLabel: externalLinkButton1.semanticsLabel,
              onTap: externalLinkButton1.onTap,
              borderRadius: BorderRadius.circular(48),
              extraPadding: const EdgeInsets.all(16),
            ),
          ),
        ],
        if (externalLinkButton2 != null) ...[
          Center(
            child: EnsExternalLink.withRedirection(
              linkText: externalLinkButton2.linkText,
              linkUrl: externalLinkButton2.linkUrl,
              semanticsLabel: externalLinkButton2.semanticsLabel,
              onTap: externalLinkButton2.onTap,
              borderRadius: BorderRadius.circular(48),
              extraPadding: const EdgeInsets.all(16),
            ),
          ),
        ],
        if (topLinkTextButton != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: EnsLinkText(
              label: topLinkTextButton.label,
              borderRadius: 40,
              shouldExpanded: true,
              textPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              textAlign: TextAlign.center,
              onTap: topLinkTextButton.onTap,
            ),
          ),
        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 24),
        if (primaryButton != null)
          EnsButton(
            label: primaryButton.label,
            onTap: primaryButton.onTap,
            isDisabled: primaryButton.isDisabled,
            paddingAround: EdgeInsets.zero,
            leadingIconPath: primaryButton.leadingIconPath,
          ),
        if (secondaryButton != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: EnsButtonSecondary(
              label: secondaryButton.label,
              onTap: secondaryButton.onTap,
              backgroundColor: EnsColors.neutral100,
              paddingAround: EdgeInsets.zero,
            ),
          ),
        if (bottomLinkTextButton != null)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: EnsLinkText(
              label: bottomLinkTextButton.label,
              isLoading: bottomLinkTextButton.isLoading,
              borderRadius: 40,
              shouldExpanded: true,
              textPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              textAlign: TextAlign.center,
              onTap: bottomLinkTextButton.onTap,
            ),
          ),
        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 22),
        if (bottomWidget != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: bottomWidget,
          ),
      ],
    );
  }
}
