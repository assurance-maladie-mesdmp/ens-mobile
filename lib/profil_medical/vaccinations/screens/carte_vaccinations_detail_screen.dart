/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/carte_vaccinations.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/carte_vaccinations_zoom_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/carte_vaccinations_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_vaccinations.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CarteVaccinationsDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/vaccination/carte_vaccinations_detail';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, CarteVaccinationsDetailScreenViewModel>(
      converter: (store) => CarteVaccinationsDetailScreenViewModel.from(store),
      onInitialBuild: (vm) {
        context.tagAction(TagsVaccinations.tag_472_vaccinations_a_realiser);
        vm.fetchCarteVaccination();
      },
      distinct: true,
      builder: (context, vm) {
        if (vm.carteVaccinationsStatus.isNotLoadedOrLoading()) {
          return _Loading();
        } else if (vm.carteVaccinationsStatus.isSuccess() && vm.carteVaccinations != null) {
          return _Content(vm.carteVaccinations!);
        } else {
          return ErrorPage(reloadFunction: vm.fetchCarteVaccination);
        }
      },
    );
  }
}

class _Content extends StatelessWidget {
  final CarteVaccinations carte;

  const _Content(this.carte);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: carte.title),
      body: SafeArea(
        child: ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Chaque année, le calendrier des vaccinations, publié par le ministère chargé de la santé, après avis de la Haute Autorité de santé (HAS), fixe les vaccinations applicables aux personnes résidant en France, en fonction de leur âge.',
                style: EnsTextStyle.text14_w400_normal_title,
              ),
              const SizedBox(height: 24),
              EnsInkWell(
                semanticLabel: 'Visualiser le ${carte.title}',
                excludeSemantics: true,
                onTap: () {
                  Navigator.pushNamed(context, CarteVaccinationsZoomScreen.routeName, arguments: carte);
                },
                child: EnsModuleContainer.currentInjector.isGuestMode()
                    ? Image.asset(EnsImages.carte_postale_vaccination_2024, excludeFromSemantics: true)
                    : Image.network(carte.imageLink, excludeFromSemantics: true),
              ),
              const SizedBox(height: 24),
              const EnsRichText(
                text: TextSpan(
                  text: 'Droits réservés \u00b7 Paru sur le site ',
                  children: [
                    WidgetSpan(
                      child: EnsExternalLink.withRedirection(
                        linkUrl: 'https://vaccination-info-service.fr/',
                        linkText: 'vaccination-info-service.fr',
                        semanticsLabel: 'vaccination info service point fr',
                      ),
                    ),
                  ],
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              const SizedBox(height: 32),
              _Description(carte.descriptions),
            ],
          ),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final List<String> description;

  const _Description(this.description);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final text in description)
            if (text.isNotEmpty)
              EnsBulletPoint(
                text: text,
                textStyle: EnsTextStyle.text14_w400_normal_body,
                margin: 8,
                isHtml: true,
              ),
        ],
      );
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonBox(width: 350.0),
            SizedBox(height: 12),
            SkeletonBox(width: 350.0),
            SizedBox(height: 12),
            SkeletonBox(width: 350.0),
            SizedBox(height: 12),
            SkeletonBox(width: 350.0),
            SizedBox(height: 32),
            SkeletonBox(width: 325.0),
            SizedBox(height: 12),
            SkeletonBox(width: 325.0),
            SizedBox(height: 12),
            SkeletonBox(width: 300.0),
            SizedBox(height: 32),
            SkeletonBox(width: 350.0),
            SizedBox(height: 12),
            SkeletonBox(width: 325.0),
          ],
        ),
      ),
    );
  }
}
