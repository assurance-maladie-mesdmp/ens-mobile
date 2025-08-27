/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_global_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class EnrolementChoixFranceConnectPlusScreen extends StatelessWidget {
  static const routeName = '/enrolement/choix-france-connect-plus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: '',
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return ScrollviewWithScrollbar(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    const Text(
                      'J\'active mon profil avec FranceConnect+',
                      style: EnsTextStyle.text20_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'FranceConnect+ est la solution proposée par l\'État, pour renforcer la sécurité de vos services en ligne les plus sensibles.',
                      style: EnsTextStyle.text14_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ActionButton(
                      icon: const EnsSvg(EnsImages.france_connect_plus_btn_principal),
                      tooltip: 'S\'identifier avec FranceConnect+',
                      onTap: () {
                        context.tagInitialAction(TagsEnrolement.tag_2421_button_enrolement_france_connect_plus);
                        final franceConnectPlusBaseUrl =
                            EnsModuleContainer.commonInjector!.getAppConfig().franceConnectPlusBaseUrl;
                        launchUrlOnBrowser(franceConnectPlusBaseUrl);
                      },
                    ),
                    EnsExternalLink.withRedirection(
                      mainAxisAlignment: MainAxisAlignment.center,
                      linkUrl: 'https://franceconnect.gouv.fr/franceconnect-plus',
                      linkText: 'Qu\'est-ce que FranceConnect+ ?',
                      extraPadding: const EdgeInsets.all(12),
                      onTap: () {
                        context.tagInitialAction(TagsEnrolement.tag_2420_link_enrolement_info_france_connect_plus);
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: Container(height: 1, color: EnsColors.neutral200)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('ou', style: EnsTextStyle.text28_w600_normal_body),
                        ),
                        Expanded(child: Container(height: 1, color: EnsColors.neutral200)),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'J\'active mon profil en saisissant mes informations',
                      style: EnsTextStyle.text20_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    EnsButton(
                      label: 'Commencer',
                      onTap: () {
                        Navigator.pushNamed(context, EnrolementGlobalScreen.routeName);
                      },
                    ),
                    const SizedBox(height: 32),
                    const Spacer(),
                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          const Text(
                            'Je peux aussi ',
                            style: EnsTextStyle.text16_w400_normal_body,
                          ),
                          EnsExternalLink.withRedirection(
                            linkText: 'clôturer ou m\'opposer',
                            linkUrl: EnsModuleContainer.commonInjector!.getUrlsConfig().enrolementClotureUrl,
                            linkTextStyle: EnsTextStyle.text16_w700_primary_underline,
                          ),
                          const Text(
                            ' à Mon espace santé',
                            style: EnsTextStyle.text16_w400_normal_body,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
