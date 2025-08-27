/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/widgets/viewmodels/nouvelles_fonctionnalites_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';

class NouvellesFonctionnalitesBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, NouvellesFonctionnalitesBottomSheetViewModel>(
        converter: (store) => NouvellesFonctionnalitesBottomSheetViewModel(store),
        onInitialBuild: (vm) {
          context.tagAction(TagsHome.tag_1332_popin_nouvelles_fonctionnalites);
        },
        distinct: true,
        builder: (context, vm) => EnsBottomSheet(
          stretch: true,
          content: [
            const Text(
              'Nouvelles fonctionnalités sur Mon espace santé',
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            if (vm.hasNewFeatures)
              for (final feature in vm.newFeatures!) ...[
                _FeatureItem(
                  title: feature.title,
                  label: feature.description,
                  svg: feature.imageContent,
                ),
                const SizedBox(height: 32),
              ],
            const SizedBox(height: 8),
            EnsButton(
              label: 'Continuer',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
}

class _FeatureItem extends StatelessWidget {
  final String label;
  final String title;
  final String svg;

  const _FeatureItem({
    required this.label,
    required this.title,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SvgPicture.network(
          'https://$cmsUrl$imagePath$svg',
          width: 80,
          height: 80,
          excludeFromSemantics: true,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: EnsTextStyle.text14_w700_normal_title),
              Text(label, style: EnsTextStyle.text14_w400_normal_title),
            ],
          ),
        ),
      ],
    );
  }
}
