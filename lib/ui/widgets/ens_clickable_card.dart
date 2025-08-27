/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class EnsClickableCard extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Widget svgPicture;
  final String? destinationPage;
  final Object? arguments;
  final bool availableInGuestMode;
  final void Function()? onTap;
  final bool openInNavigator;

  const EnsClickableCard({
    required this.title,
    required this.svgPicture,
    this.subTitle,
    this.destinationPage,
    this.arguments,
    this.onTap,
    this.availableInGuestMode = true,
    this.openInNavigator = false,
  });

  void _onMenuItemClick(BuildContext context) {
    onTap?.call();

    if (!availableInGuestMode && EnsModuleContainer.currentInjector.isGuestMode()) {
      StoreProvider.of<EnsState>(context).dispatch(
        const DisplaySnackbarAction.unavailableInGuestMode(),
      );
    } else if (destinationPage != null) {
      if (openInNavigator) {
        launchUrlOnBrowser(destinationPage!);
      } else {
        Navigator.pushNamed(
          context,
          destinationPage!,
          arguments: arguments,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      borderRadius: 16,
      onTap: () => _onMenuItemClick(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          svgPicture,
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: EnsTextStyle.text16_w700_normal_title),
                if (subTitle != null) Text(subTitle!, style: EnsTextStyle.text14_w400_normal_body),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (openInNavigator)
            const EnsSvg(EnsImages.ic_external_link, height: 24, width: 24, color: EnsColors.body)
          else
            const EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
        ],
      ),
    );
  }
}
