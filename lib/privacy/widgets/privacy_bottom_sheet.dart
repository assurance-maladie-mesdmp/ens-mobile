/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class EnsPrivacyBottomSheet extends StatelessWidget {
  final void Function() acceptAllButtonHandler;
  final void Function() declineAllButtonHandler;
  final void Function() openPrivacyCenterButtonHandler;

  const EnsPrivacyBottomSheet({
    super.key,
    required this.acceptAllButtonHandler,
    required this.declineAllButtonHandler,
    required this.openPrivacyCenterButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: EnsColors.light,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SafeArea(
            child: ScrollviewWithScrollbar(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const EnsSvg(EnsImages.cookie, height: 160, width: 160),
                  SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 16),
                  const Text(
                    'Données de navigation',
                    style: EnsTextStyle.text26_w400_normal_title,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 23),
                  const Text(
                    "Mon espace santé conserve vos données de navigation pour garantir l'accès sécurisé à certaines fonctionnalités, nous assurer que vos données sont bien protégées et accessibles à vous seul ainsi que pour identifier d’éventuels dysfonctionnements sur le site et améliorer la qualité des services. ",
                    style: EnsTextStyle.text16_w400_normal_body,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  EnsButtonSecondary(
                    backgroundColor: EnsColors.light,
                    onTap: () {
                      Navigator.pop(context);
                      acceptAllButtonHandler.call();
                    },
                    label: 'Tout accepter',
                  ),
                  const SizedBox(height: 16),
                  EnsButtonSecondary(
                    backgroundColor: EnsColors.light,
                    onTap: () {
                      Navigator.pop(context);
                      declineAllButtonHandler.call();
                    },
                    label: 'Tout refuser',
                  ),
                  const SizedBox(height: 8),
                  EnsButtonSecondary(
                    backgroundColor: EnsColors.light,
                    borderColor: EnsColors.light,
                    onTap: () {
                      Navigator.pop(context);
                      openPrivacyCenterButtonHandler.call();
                    },
                    label: 'Paramétrer',
                    textStyle: EnsTextStyle.text16_w700_primary_underline,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
