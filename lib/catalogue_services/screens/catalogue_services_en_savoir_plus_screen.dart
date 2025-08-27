/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/catalogue_services_en_savoir_plus_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class CatalogueServicesEnSavoirPlusScreen extends StatelessWidget {
  static const routeName = 'en-savoir-plus';

  const CatalogueServicesEnSavoirPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'En savoir plus',
      ),
      body: StoreConnector<EnsState, CatalogueServicesEnSavoirPlusScreenViewModel>(
        onInitialBuild: (vm) => context.tagAction(TagsCatalogueServices.tag_595_catalogue_en_savoir_plus),
        converter: (store) => CatalogueServicesEnSavoirPlusScreenViewModel.from(store),
        distinct: true,
        builder: (_, vm) {
          return _Content(profilType: vm.profilType);
        },
      ),
    );
  }
}

class _CatalogueServicesEnSavoirPlusItem extends StatelessWidget {
  final String svgPath;
  final String title;
  final Widget text;
  final Color backgroundColor;

  const _CatalogueServicesEnSavoirPlusItem({
    required this.svgPath,
    required this.title,
    required this.text,
    this.backgroundColor = EnsColors.neutral100,
  });

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 56),
          child: Column(
            children: [
              EnsSvg(svgPath, height: 160, width: 160),
              const SizedBox(height: 24),
              Text(
                title,
                style: EnsTextStyle.text24_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              text,
            ],
          ),
        ),
      );
}

class _Content extends StatelessWidget {
  final parametersUrl = EnsModuleContainer.currentInjector.getUrlsConfig().doctrineNumeriqueUrl;
  final ProfilType profilType;

  _Content({required this.profilType});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _CatalogueServicesEnSavoirPlusItem(
            svgPath: EnsImages.fusee,
            title: 'Des services numériques pour accompagner votre santé'
                .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
            text: const Text(
              'Un catalogue de services numériques de confiance, utiles et sélectionnés pour vous par l\'État.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
          _CatalogueServicesEnSavoirPlusItem(
            svgPath: EnsImages.mot_de_passe,
            title: 'Des solutions utiles pour votre santé'.resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
            text: Text(
              _getSolutionUtilesDescription(profilType: profilType),
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            backgroundColor: EnsColors.light,
          ),
          _CatalogueServicesEnSavoirPlusItem(
            svgPath: EnsImages.mesures,
            title: 'Des services de confiance parce qu\'ils ont été référencés',
            text: EnsRichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'Les services numériques du catalogue de services ont été sélectionnés par l\'Etat sur la base de critères éthiques et techniques.\n\nTous les services numériques référencés dans le catalogue de services Mon espace santé sont conformes à la',
                style: EnsTextStyle.text16_w400_normal_body,
                children: [
                  WidgetSpan(
                    child: EnsExternalLink.withRedirection(
                      linkUrl: parametersUrl,
                      linkText: 'doctrine du numérique en santé. ',
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Cette doctrine, publiée tous les ans, définit les règles communes de sécurité, d\'interopérabilité et d\'éthique qui s\'appliquent aux services numériques en santé.\n\nLes services numériques référencés dans le catalogue de service Mon espace santé s\'engagent également à respecter des règles en termes de qualité du contenu, de transparence, d\'accessibilité et d\'éco-responsabilité.\n\nCes services numériques sont soumis à des examens réguliers afin de vérifier que toutes ces règles sont respectées.',
                    style: EnsTextStyle.text16_w400_normal_body,
                  ),
                ],
              ),
            ),
          ),
          _CatalogueServicesEnSavoirPlusItem(
            svgPath: EnsImages.echange_donnees,
            title: 'Partagez vos informations de santé simplement et en toute sécurité'
                .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
            text: Text(
              _getPartageInformationDescription(profilType: profilType),
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            backgroundColor: EnsColors.light,
          ),
        ],
      ),
    );
  }
}

String _getSolutionUtilesDescription({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Au sein de Mon espace santé, vous avez accès à un catalogue de services numériques publics et privés dans le domaine de la santé, du bien-être ou du maintien de l\'autonomie.\n\nTous ces services numériques ont été sélectionnés pour leur qualité et leur respect de critères de sécurité. Ce sont des services utiles pour vous accompagner dans votre santé au quotidien.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Au sein de Mon espace santé, vous avez accès à un catalogue de services numériques publics et privés dans le domaine de la santé, du bien-être ou du maintien de l\'autonomie.\n\nTous ces services numériques ont été sélectionnés pour leur qualité et leur respect de critères de sécurité. Ce sont des services utiles pour l\'accompagner dans sa santé au quotidien.',
  };
}

String _getPartageInformationDescription({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Vous pouvez choisir les services que vous souhaitez synchroniser avec Mon espace santé pour, par exemple, alimenter et enrichir votre profil médical avec les données d\'un objet connecté (poids, rythme cardiaque, indice glycémique), ou encore partager simplement des informations de santé avec les services que vous utilisez au quotidien.\n\nNous avons fait en sorte que votre choix soit le plus éclairé possible. Vous pouvez sélectionner les informations que vous allez partager avec les services numériques que vous synchronisez avec Mon espace santé.\n\nVous avez la maîtrise de l\'usage qui est fait de vos informations de santé. Vous pouvez à tout moment modifier vos préférences et voir quelles actions ont été réalisées sur vos informations de santé par les services numériques que vous avez synchronisés.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Vous pouvez choisir les services que vous souhaitez synchroniser avec Mon espace santé pour, par exemple, alimenter et enrichir son profil médical avec les données d\'un objet connecté (poids, rythme cardiaque, indice glycémique), ou encore partager simplement des informations de santé avec les services que vous utilisez au quotidien.\n\nNous avons fait en sorte que votre choix soit le plus éclairé possible. Vous pouvez sélectionner les informations que vous allez partager avec les services numériques que vous synchronisez avec Mon espace santé.\n\nVous avez la maîtrise de l\'usage qui est fait de vos informations de santé. Vous pouvez à tout moment modifier vos préférences et voir quelles actions ont été réalisées sur vos informations de santé par les services numériques que vous avez synchronisés.',
  };
}
