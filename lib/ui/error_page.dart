/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

class ErrorPage extends StatelessWidget {
  final void Function()? reloadFunction;
  final String? errorMessage;
  final Widget? endChild;

  const ErrorPage({super.key, this.reloadFunction, this.errorMessage, this.endChild});

  @override
  Widget build(BuildContext context) => Center(
        child: ScrollviewWithScrollbar(
          padding:
              DeviceUtils.isSmallDevice(context) ? const EdgeInsets.all(12) : const EdgeInsets.fromLTRB(24, 64, 24, 24),
          child: SafeArea(
            child: errorMessage != null
                ? EnsError(reloadFunction: reloadFunction, errorMessage: errorMessage!, endChild: endChild)
                : EnsError(reloadFunction: reloadFunction, endChild: endChild),
          ),
        ),
      );
}

class EnsError extends StatelessWidget {
  final String errorMessage;
  final Widget? endChild;

  const EnsError({
    super.key,
    required this.reloadFunction,
    this.errorMessage = GENERIC_ERROR_MESSAGE,
    this.endChild,
  });

  final void Function()? reloadFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EnsSvg(
          EnsImages.stethoscope,
          height: DeviceUtils.isSmallDevice(context) ? 172 : 192,
          width: DeviceUtils.isSmallDevice(context) ? 172 : 192,
        ),
        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 12 : 24),
        const Text('Oups !', style: EnsTextStyle.text26_w400_normal_title, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        Text(errorMessage, style: EnsTextStyle.text16_w400_normal_body, textAlign: TextAlign.center),
        ...(reloadFunction != null)
            ? [
                SizedBox(height: DeviceUtils.isSmallDevice(context) ? 24 : 56),
                EnsButton(label: 'Recharger la page', onTap: reloadFunction!),
              ]
            : [],
        if (endChild != null) endChild!,
      ],
    );
  }
}
