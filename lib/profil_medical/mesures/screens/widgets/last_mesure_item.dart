/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/last_mesures_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_icon.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class LastMesureItem extends StatelessWidget {
  final LastMesureDisplayModel lastMesure;

  const LastMesureItem({super.key, required this.lastMesure});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      converter: (store) => AnalyticsViewModel(store),
      distinct: true,
      builder: (_, vm) => _LastMesure(lastMesure: lastMesure, tagOnClick: () => _tagItemClick(vm)),
    );
  }

  void _tagItemClick(AnalyticsViewModel vm) {
    String name;

    switch (lastMesure.type) {
      case EnsMesureType.PERIMETRE_CRANIEN:
        name = 'button_carte_perimetre_cranien';
      case EnsMesureType.POIDS:
        name = 'button_carte_poids';
      case EnsMesureType.TAILLE:
        name = 'button_carte_taille';
      case EnsMesureType.IMC:
        name = 'button_carte_IMC';
      case EnsMesureType.TOUR_DE_TAILLE:
        name = 'button_carte_tour_de_taille';
      case EnsMesureType.TEMPERATURE:
        name = 'button_carte_temperature';
      case EnsMesureType.GLYCEMIE:
        name = 'button_carte_glycemie';
      case EnsMesureType.TENSION_ARTERIELLE:
        name = 'button_carte_tension_arterielle';
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        name = 'button_carte_niveau_de_douleur';
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        name = 'button_carte_frequence_cardiaque';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        name = 'button_carte_hba1c';
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        name = 'button_carte_taux_glucose';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        name = 'button_carte_igg';
      default:
        name = '';
    }
    if (name != '') {
      vm.tagAction(
        EnsTag(
          name: name,
          category: EnsAnalyticsCategory.CLICK,
          level1: 'profil_medical',
          level2: 'mesures',
        ),
      );
    }
  }
}

class _LastMesure extends StatelessWidget {
  final LastMesureDisplayModel lastMesure;
  final void Function() tagOnClick;

  const _LastMesure({required this.lastMesure, required this.tagOnClick});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        tagOnClick();
        Navigator.pushNamed(
          context,
          MesureHistoryScreen.routeName,
          arguments: lastMesure.type,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MesureIcon(lastMesure.type, width: 64, height: 64),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(lastMesure.label, style: EnsTextStyle.text16_w700_normal_title),
                  _MetricsForLastValue(lastMesure),
                ],
              ),
            ),
            const EnsSvg(EnsImages.ic_chevron_right, color: EnsColors.title, height: 12, width: 8),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class _MetricsForLastValue extends StatelessWidget {
  final LastMesureDisplayModel lastMesure;

  const _MetricsForLastValue(this.lastMesure);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EnsRichText(
          text: TextSpan(
            text: lastMesure.formattedMetricValue,
            style: EnsTextStyle.text24_w400_normal_title,
            children: [
              TextSpan(
                text: ' ${lastMesure.unit}',
                style: EnsTextStyle.text16_w400_normal_title,
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          lastMesure.formattedDate,
          style: EnsTextStyle.text14_w400_normal_body,
        ),
      ],
    );
  }
}
