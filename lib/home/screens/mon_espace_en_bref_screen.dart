/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class MonEspaceEnBrefScreen extends StatelessWidget {
  static const routeName = '/mon-espace-en-bref';

  const MonEspaceEnBrefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'À propos de Mon espace santé',
      ),
      body: StoreConnector<EnsState, AnalyticsViewModel>(
        converter: (store) => AnalyticsViewModel(store),
        onInitialBuild: (_) => context.tagAction(TagsHome.tag_1344_mes_bref),
        distinct: true,
        builder: (context, vm) => _Content(vm: vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final AnalyticsViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    final parametersUrl = EnsModuleContainer.currentInjector.getUrlsConfig().privacyInfosUrl;
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _MonEspaceSanteEnBrefItem(
            svgPath: EnsImages.mot_de_passe,
            description: 'Ma confidentialité',
            title: 'Je paramètre les accès',
            text: 'Je garde le contrôle à tout moment en gérant l’accès de mes professionnels de santé à mes données.',
            handler: () {
              vm.tagAction(TagsHome.tag_664_button_confidentialite);
              Navigator.pushNamed(context, ConsentementsPsScreen.routeName);
            },
            textLink: 'Gérer l’accès à mes données',
          ),
          _MonEspaceSanteEnBrefItem(
            svgPath: EnsImages.securite,
            description: 'Ma protection',
            title: 'Mes données sont sécurisées',
            backgroundColor: EnsColors.light,
            text:
                'Mes données sont hébergées en France dans un environnement sécurisé et protégées par l’Assurance Maladie.',
            externalLink: EnsExternalLink.withRedirection(
              linkUrl: parametersUrl,
              linkText: 'En savoir plus',
              onTap: () => vm.tagAction(TagsHome.tag_665_button_protection),
            ),
          ),
          _MonEspaceSanteEnBrefItem(
            svgPath: EnsImages.documents_de_sante,
            description: 'Mes documents',
            title: 'Je simplifie ma santé',
            text:
                'Je centralise mes données de santé dans un seul espace afin de faciliter le suivi et le partage avec mes professionnels de santé.',
            handler: () {
              vm.tagAction(TagsHome.tag_666_button_document);
              navigateInApp('/documents');
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            textLink: 'Découvrir mes documents',
          ),
          _MonEspaceSanteEnBrefItem(
            svgPath: EnsImages.profil_medical,
            description: 'Mon profil médical',
            title: 'Je suis ma santé',
            backgroundColor: EnsColors.light,
            text:
                'Je renseigne mon historique médical (maladies, traitements...) pour bénéficier d’un meilleur suivi de ma santé.',
            handler: () {
              vm.tagAction(TagsHome.tag_667_button_profil_medical);
              navigateInApp('/medical/profil');
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            textLink: 'Compléter mon profil médical',
          ),
          const SizedBox(height: 36),
        ],
      ),
    );
  }
}

class _MonEspaceSanteEnBrefItem extends StatelessWidget {
  final String svgPath;
  final String description;
  final String title;
  final String text;
  final VoidCallback? handler;
  final String? textLink;
  final Widget? externalLink;
  final Color backgroundColor;

  const _MonEspaceSanteEnBrefItem({
    required this.svgPath,
    required this.description,
    required this.title,
    required this.text,
    this.handler,
    this.textLink,
    this.externalLink,
    this.backgroundColor = EnsColors.neutral100,
  });

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 36, left: 24, right: 24, bottom: 32),
          child: Column(
            children: [
              EnsSvg(svgPath, height: 80, width: 80),
              const SizedBox(height: 12),
              Text(
                description,
                style: EnsTextStyle.text16_w400_secondary,
                textAlign: TextAlign.center,
              ),
              Text(
                title,
                style: EnsTextStyle.text24_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                text,
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              if (textLink != null)
                EnsInkWell(
                  onTap: handler,
                  child: Text(
                    textLink!,
                    style: EnsTextStyle.text14_w700_normal_primary_underline,
                  ),
                ),
              if (externalLink != null) externalLink!,
            ],
          ),
        ),
      );
}
