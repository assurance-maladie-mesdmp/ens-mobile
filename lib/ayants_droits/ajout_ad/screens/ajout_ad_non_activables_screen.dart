/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ad_non_activables_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AjoutAdNonActivableScreen extends StatelessWidget {
  static const routeName = '/ajout-ad/non-activables';

  const AjoutAdNonActivableScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Profils non activables'),
      body: ScrollviewWithScrollbar(
        child: StoreConnector<EnsState, AdNonActivablesViewModel>(
          converter: (store) => AdNonActivablesViewModel.from(store),
          distinct: true,
          onInitialBuild: (_) {
            context.tagAction(TagsParameters.tag_1292_compte_profils_non_activables);
          },
          builder: (context, vm) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  child: Text(
                    'Le ou les profils suivants ont été clôturés avec une demande de suppression des données. Lorsque la suppression des données sera terminée, une notification vous sera envoyée à l’adresse ${vm.email}.\nVous pourrez alors de nouveau activer ces profils.',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ),
                ...vm.adsAvailables.map((ad) => _ADCard(ad)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  child: EnsButton(
                    label: 'J’ai compris',
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ADCard extends StatelessWidget {
  final AdNonActivableDisplayModel adToAdd;

  const _ADCard(this.adToAdd);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: EnsColors.disabled100,
          border: Border.all(color: EnsColors.disabled500),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Stack(
              alignment: Alignment.center,
              children: [
                EnsSvg(EnsImages.ic_circle_filled, width: 32, height: 32, color: EnsColors.disabled),
                Center(child: EnsSvg(EnsImages.ic_user, width: 20, height: 20)),
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    adToAdd.name,
                    style: EnsTextStyle.text16_w600_normal_title,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      EnsSvg(adToAdd.statusIcon, width: 12, height: 12),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          adToAdd.statusLabel,
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
