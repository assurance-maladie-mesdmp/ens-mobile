/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/vaccinations_and_traitements_and_examen_recommandes_widget_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class VaccinationsAndTraitementsAndExamenRecommandesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      StoreConnector<EnsState, VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel>(
        distinct: true,
        converter: (store) => VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel(
          store,
          EnsModuleContainer.commonInjector!.getRemoteConfigWrapper(),
        ),
        builder: (context, vm) => _Content(vm),
      );
}

class _Content extends StatelessWidget {
  final VaccinationsAndTraitementsAndExamenRecommandesWidgetViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    final vaccinationsAndTraitementsAndExamenRecommandes = vm.vaccinationsAndTraitementsAndExamenRecommandes;
    if (vaccinationsAndTraitementsAndExamenRecommandes.isEmpty) {
      return const SizedBox();
    }
    final totalLenght = vaccinationsAndTraitementsAndExamenRecommandes.length;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: EnsCard(
        child: Column(
          children: vaccinationsAndTraitementsAndExamenRecommandes
              .mapIndexed(
                (index, displayModel) => _Item(
                  currentIndex: index,
                  totalLength: totalLenght,
                  displayModel: displayModel,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final int currentIndex;
  final int totalLength;
  final VaccinationsAndTraitementsAndExamenRecommandesDisplayModel displayModel;

  const _Item({required this.currentIndex, required this.totalLength, required this.displayModel});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () {
        context.tagAction(displayModel.tag);
        Navigator.pushNamed(context, displayModel.targetScreen);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                EnsCard(
                  borderRadius: 8,
                  backgroundColor: EnsColors.neutral200,
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: EnsSvg(displayModel.icon, color: EnsColors.primary),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(child: Text(displayModel.title, style: EnsTextStyle.text14_w600_normal_title)),
                const SizedBox(width: 12),
                Text(displayModel.number, style: EnsTextStyle.text24_w600_tertiary),
                const SizedBox(width: 16),
                const EnsSvg(EnsImages.ic_chevron_right, color: EnsColors.body),
              ],
            ),
          ),
          if (currentIndex != totalLength - 1) const EnsDivider(paddingLeft: 16, paddingRight: 16),
        ],
      ),
    );
  }
}
