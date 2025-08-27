/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class MultiActionIllustrationBottomSheet extends StatelessWidget {
  final String title;
  final String helpText;
  final String? image;
  final double width;
  final double height;
  final List<EnsMultiActionOption> actionOptions;
  final void Function()? closeButtonHandler;

  const MultiActionIllustrationBottomSheet({
    super.key,
    required this.title,
    required this.helpText,
    this.image,
    this.width = 160,
    this.height = 160,
    required this.actionOptions,
    this.closeButtonHandler,
  });

  @override
  Widget build(BuildContext context) => EnsBottomSheet(
        closeButtonHandler: closeButtonHandler,
        content: [
          if (image != null) EnsSvg(image!, width: width, height: height),
          const SizedBox(height: 24),
          Text(title, style: EnsTextStyle.text26_w400_normal_title, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          Text(helpText, style: EnsTextStyle.text16_w400_normal_body, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: actionOptions.map(
              (EnsMultiActionOption option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: option.isPrimaryAction
                      ? EnsButton(
                          label: option.buttonTitle,
                          onTap: () {
                            Navigator.pop(context);
                            option.buttonClickHandler.call();
                          },
                        )
                      : EnsButtonSecondary(
                          label: option.buttonTitle,
                          onTap: () {
                            Navigator.pop(context);
                            option.buttonClickHandler.call();
                          },
                        ),
                );
              },
            ).toList(),
          ),
        ],
      );
}
