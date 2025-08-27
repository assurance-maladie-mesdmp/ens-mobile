/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';

class InformationBottomSheet extends StatelessWidget {
  final String title;
  final Widget description;
  final Widget? redirectionLink;

  const InformationBottomSheet({
    required this.title,
    required this.description,
    this.redirectionLink,
  });

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      content: [
        Text(
          title,
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        description,
        const SizedBox(height: 24),
        if (redirectionLink != null) redirectionLink!,
        Row(
          children: [
            Expanded(
              child: EnsButton(
                label: 'J\'ai compris',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class EnsInformationWithIllustrationBottomSheet extends StatelessWidget {
  final String title;
  final String? description;
  final List<Widget> additionalContent;
  final String asset;
  final String positiveButtonLabel;
  final String? negativeButtonLabel;
  final void Function()? positiveButtonHandler;
  final void Function()? negativeButtonHandler;

  const EnsInformationWithIllustrationBottomSheet({
    required this.title,
    this.description,
    this.additionalContent = const [],
    required this.asset,
    this.positiveButtonLabel = 'J\'ai compris',
    this.negativeButtonLabel,
    this.positiveButtonHandler,
    this.negativeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return EnsIllustrationBottomSheet(
      title: title,
      subtitle: description,
      additionalContent: additionalContent,
      asset: asset,
      positiveButtonLabel: positiveButtonLabel,
      negativeButtonLabel: negativeButtonLabel,
      positiveButtonHandler: positiveButtonHandler,
      negativeButtonHandler: negativeButtonHandler,
    );
  }
}
