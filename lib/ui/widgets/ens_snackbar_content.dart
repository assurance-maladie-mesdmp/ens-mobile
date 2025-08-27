/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsSnackBarContent extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color backgroundContentColor;
  final Widget icon;
  final bool showCloseButton;

  const EnsSnackBarContent._internal({
    super.key,
    required this.text,
    required this.borderColor,
    required this.backgroundContentColor,
    required this.icon,
    required this.showCloseButton,
  });

  factory EnsSnackBarContent({
    required String text,
    bool showCloseButton = true,
    required EnsSnackbarContentType contentType,
  }) {
    switch (contentType) {
      case EnsSnackbarContentType.SUCCESS:
        return EnsSnackBarContent._success(text: text, showCloseButton: showCloseButton);
      case EnsSnackbarContentType.ERROR:
        return EnsSnackBarContent._error(text: text, showCloseButton: showCloseButton);
      case EnsSnackbarContentType.INFO:
        return EnsSnackBarContent._info(text: text, showCloseButton: showCloseButton);
      case EnsSnackbarContentType.LOADING:
        return EnsSnackBarContent._loading(text: text, showCloseButton: showCloseButton);
    }
  }

  factory EnsSnackBarContent._success({Key? key, required String text, required bool showCloseButton}) {
    return EnsSnackBarContent._internal(
      key: key,
      text: text,
      borderColor: EnsColors.success,
      backgroundContentColor: EnsColors.success100,
      icon: const EnsSvg(EnsImages.ic_circle_check, width: 24, height: 24),
      showCloseButton: showCloseButton,
    );
  }

  factory EnsSnackBarContent._error({Key? key, required String text, required bool showCloseButton}) {
    return EnsSnackBarContent._internal(
      key: key,
      text: text,
      borderColor: EnsColors.error,
      backgroundContentColor: EnsColors.error100,
      icon: const EnsSvg(EnsImages.ic_error, width: 24, height: 24),
      showCloseButton: showCloseButton,
    );
  }

  factory EnsSnackBarContent._info({Key? key, required String text, required bool showCloseButton}) {
    return EnsSnackBarContent._internal(
      key: key,
      text: text,
      borderColor: EnsColors.primary,
      backgroundContentColor: EnsColors.info100,
      icon: const EnsSvg(EnsImages.ic_info_circle, width: 24, height: 24),
      showCloseButton: showCloseButton,
    );
  }

  factory EnsSnackBarContent._loading({Key? key, required String text, bool showCloseButton = true}) {
    return EnsSnackBarContent._internal(
      key: key,
      text: text,
      borderColor: EnsColors.primary,
      backgroundContentColor: EnsColors.info100,
      icon: const Center(
        heightFactor: 1,
        widthFactor: 1,
        child: SizedBox(
          height: 16,
          width: 16,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(EnsColors.primary),
          ),
        ),
      ),
      showCloseButton: showCloseButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundContentColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 8),
              Expanded(
                flex: 8,
                child: Text(
                  text,
                  style: EnsTextStyle.text14_w600_normal_title,
                ),
              ),
              if (showCloseButton)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: EnsCrossButton(onTap: () => clearSnackbar(context)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum EnsSnackbarContentType { SUCCESS, ERROR, INFO, LOADING }
