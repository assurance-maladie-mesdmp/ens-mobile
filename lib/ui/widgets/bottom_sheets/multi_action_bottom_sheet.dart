/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';

class MultiActionBottomSheet extends StatelessWidget {
  final String title;
  final String helpText;
  final List<EnsMultiActionOption> actionOptions;

  const MultiActionBottomSheet({super.key, required this.title, required this.helpText, required this.actionOptions});

  @override
  Widget build(BuildContext context) => EnsBottomSheet(
        content: [
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

class EnsMultiActionOption {
  final String buttonTitle;
  final void Function() buttonClickHandler;
  final bool isPrimaryAction;

  EnsMultiActionOption({required this.buttonTitle, required this.buttonClickHandler, required this.isPrimaryAction});
}
