/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/screens/viewModels/parameters_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class TelechargerDonneesScreen extends StatelessWidget {
  static const routeName = '/telecharger-les-donnees';

  const TelechargerDonneesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Télécharger les données',
      ),
      body: StoreConnector<EnsState, ParametersScreenViewModel>(
        onInit: (store) => store.dispatch(FetchUserDataAction()),
        onInitialBuild: (_) => context.tagAction(TagsParameters.tag_579_compte_historique_donnees_telecharger),
        converter: (store) => ParametersScreenViewModel.from(store),
        distinct: true,
        builder: (context, vm) => _Content(vm: vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ParametersScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    final parametersUrl = EnsModuleContainer.currentInjector.getUrlsConfig().parametersUrl;
    return DisappearingIllustrationPage(
      asset: EnsImages.siteweb,
      children: [
        const Text(
          'Fonctionnalité uniquement disponible sur le site',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text24_w400_normal_title,
        ),
        const SizedBox(height: 16),
        const Text(
          'Je peux télécharger toutes les données de mon profil et des profils qui me sont rattachés en accédant au site Mon espace santé.',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 16),
        const Text(
          'Rendez-vous dans la rubrique paramètres de votre profil.',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 16),
        Center(
          child: EnsExternalLink.withRedirection(
            linkUrl: parametersUrl,
            onTap: () => context.tagAction(TagsParameters.tag_580_compte_historique_donnees_telecharger_lienexterne),
            linkText: 'monespacesante.fr',
            semanticsLabel: 'mon espace santé point fr',
          ),
        ),
        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 24 : 56),
        EnsButton(
          label: 'J\'ai compris',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
