/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsChoixIllustrationBottomSheet extends StatelessWidget {
  final String title;
  final String? description;
  final String image;
  final double width;
  final double height;
  final void Function() positiveButtonHandler;
  final void Function()? negativeButtonHandler;
  final void Function()? closeButtonHandler;
  final String negativeButtonName;

  const EnsChoixIllustrationBottomSheet({
    super.key,
    required this.title,
    this.description,
    required this.image,
    this.width = 160,
    this.height = 160,
    required this.positiveButtonHandler,
    this.negativeButtonHandler,
    this.closeButtonHandler,
    this.negativeButtonName = 'Non',
  });

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      closeButtonHandler: closeButtonHandler,
      content: [
        EnsSvg(image, width: width, height: height),
        const SizedBox(height: 24),
        Text(
          title,
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Visibility(
          visible: description != null,
          child: Container(
            margin: const EdgeInsets.only(bottom: 32),
            child: Text(
              description ?? '',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: EnsButtonSecondary(
                label: negativeButtonName,
                onTap: () {
                  Navigator.pop(context);
                  negativeButtonHandler?.call();
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: EnsButton(
                label: 'Oui',
                onTap: () {
                  Navigator.pop(context);
                  positiveButtonHandler();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
