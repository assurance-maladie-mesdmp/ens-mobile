/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/raccourcis_widget_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_categorie.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_item.dart';
import 'package:fr_cnamts_ens/raccourcis/screens/gerer_raccourcis_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_raccourcis.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RaccourcisWidget extends StatelessWidget {
  final ProfilType profilType;

  const RaccourcisWidget({required this.profilType});

  static const RACCOURCIS_MAX_COUNT = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            _getTextTitle(profilType: profilType),
            style: EnsTextStyle.text20_w400_normal_title,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 24),
        StoreConnector<EnsState, RaccourcisWidgetViewModel>(
          converter: (store) => RaccourcisWidgetViewModel.from(store),
          onInitialBuild: (vm) {
            vm.checkIsAddTraitementFirstTime();
            vm.checkIsAddVaccinationFirstTime();
          },
          onDidChange: (oldVm, vm) {
            if (oldVm?.mustFetchLastMesures == false && vm.mustFetchLastMesures) {
              vm.fetchLastMesures();
            }
          },
          distinct: true,
          builder: (context, vm) {
            if (vm.raccourcis.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text('Aucun accès rapide ajouté', style: EnsTextStyle.text14_w400_normal_body),
                    EnsInkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () {
                        context.tagAction(TagsRaccourcis.tag_2351_button_ajouter_raccourcis_empty);
                        Navigator.pushNamed(context, GererRaccourcisScreen.routeName);
                      },
                      child: Row(
                        children: [
                          const EnsSvg(EnsImages.plus, height: 24, width: 24),
                          EnsLinkText(
                            label: _getLinkText(profilType: profilType),
                            textStyle: EnsTextStyle.text14_w600_normal_primary,
                            textPadding: const EdgeInsets.fromLTRB(8, 12, 24, 8),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return MediaQuery.withClampedTextScaling(
                maxScaleFactor: 2,
                child: EnsCarousel(
                  height: 183,
                  // 0.68 => taille minimale pour que le composant soit accessible, ne pas changer
                  viewportFraction: 0.68,
                  disableCenter: true,
                  enableInfiniteScroll: false,
                  padEnds: false,
                  items: [
                    ...vm.raccourcis.map(
                      (item) {
                        final itemMesure = item.categorie == Categorie.MESURES ? item as RaccourcisMesuresItem : null;
                        return EnsCarouselItemRaccourcis(
                          vm: vm,
                          imagePath: item.imagePath,
                          label: item.titre,
                          formattedMetricValue: itemMesure?.formattedMetricValue,
                          unit: itemMesure?.unit,
                          formattedDate: itemMesure?.formattedDate,
                          onTap: () {
                            context.tagAction(TagsRaccourcis.tag_2349_button_usage_raccourcis);
                            item.onTap?.call(context);
                          },
                        );
                      },
                    ),
                    EnsCarouselHomeEndItem(
                      label: _getTextCarouselHomeEndItem(profilType: profilType),
                      padding: const EdgeInsets.fromLTRB(8, 8, 24, 8),
                      onTapAction: () {
                        context.tagAction(TagsRaccourcis.tag_2350_button_gerer_raccourcis);
                        Navigator.pushNamed(context, GererRaccourcisScreen.routeName);
                      },
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

String _getTextTitle({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Mes raccourcis',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Les raccourcis'
  };
}

String _getLinkText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Ajouter mes raccourcis',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Ajouter les raccourcis'
  };
}

String _getTextCarouselHomeEndItem({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Gérer mes raccourcis',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Gérer les raccourcis'
  };
}
