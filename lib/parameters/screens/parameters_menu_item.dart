/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_box_shadow.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_clickable_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ParametersMenuUniqueItem extends StatelessWidget {
  final String title;
  final String? destinationPage;
  final void Function()? onTap;
  final String svgPath;
  final bool openInNavigator;

  const ParametersMenuUniqueItem({
    required this.title,
    this.destinationPage,
    required this.svgPath,
    this.onTap,
    this.openInNavigator = false,
  });

  @override
  Widget build(BuildContext context) {
    return EnsClickableCard(
      title: title,
      destinationPage: destinationPage,
      onTap: onTap,
      svgPicture: EnsSvg(svgPath, height: 64, width: 64),
      openInNavigator: openInNavigator,
    );
  }
}

class ParametersBlocMenu extends StatelessWidget {
  final String menuTitle;
  final String svgPath;
  final double svgHeight;
  final double svgWidth;
  final List<ParametersSubMenuItem> subMenuItems;

  const ParametersBlocMenu({
    required this.menuTitle,
    required this.svgPath,
    required this.svgHeight,
    required this.svgWidth,
    required this.subMenuItems,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: EnsColors.light,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [EnsBoxShadow.base],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EnsSvg(svgPath, height: svgHeight, width: svgWidth),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Expanded(child: Text(menuTitle, style: EnsTextStyle.text16_w700_normal_title)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 16),
            child: ListViewWithScrollbar.builder(
              padding: EdgeInsets.zero,
              itemCount: subMenuItems.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return subMenuItems[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ParametersSubMenuItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String destinationPage;
  final void Function()? onTap;
  final Object? arguments;
  final bool isClickable;

  const ParametersSubMenuItem({
    required this.title,
    this.subTitle,
    required this.destinationPage,
    this.arguments,
    this.onTap,
    this.isClickable = true,
  });

  void _onMenuItemClick(BuildContext context) {
    onTap?.call();
    Navigator.pushNamed(context, destinationPage, arguments: arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => isClickable ? _onMenuItemClick(context) : null,
        child: Ink(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: EnsColors.neutral100, borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: EnsTextStyle.text14_w700_normal_title,
                    ),
                    if (subTitle != null)
                      Text(
                        subTitle!,
                        style: EnsTextStyle.text14_w400_normal_title,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
              if (isClickable)
                const EnsSvg(
                  EnsImages.ic_chevron_right,
                  height: 12,
                  width: 8,
                  color: EnsColors.body,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
