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
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class ClotureProfilScreen extends StatelessWidget {
  static const routeName = '/cloture-du-profil';

  const ClotureProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Clôture du profil',
      ),
      body: StoreConnector<EnsState, ParametersScreenViewModel>(
        onInit: (store) => store.dispatch(FetchUserDataAction(force: false)),
        onInitialBuild: (vm) => context.tagAction(TagsParameters.tag_409_compte_cloturer_profil),
        converter: (store) => ParametersScreenViewModel.from(store),
        distinct: true,
        builder: (context, vm) =>
            isRefonteParametresEnabled ? _ContentRefonteParametreEnable(vm: vm) : _Content(vm: vm),
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
          'Je peux clôturer mon profil Mon Espace Santé depuis le site. Si je le souhaite, je peux également demander la suppression de mes données personnelles.',
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
            onTap: () => context.tagAction(TagsParameters.tag_581_compte_cloturer_profil_lienexterne),
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

class _ContentRefonteParametreEnable extends StatelessWidget {
  final ParametersScreenViewModel vm;

  const _ContentRefonteParametreEnable({required this.vm});

  @override
  Widget build(BuildContext context) {
    final parametersUrl = EnsModuleContainer.currentInjector.getUrlsConfig().parametersUrl;
    return DisappearingIllustrationPage(
      asset: EnsImages.siteweb,
      children: [
        Text(
          _getTextIllustrationPage(profilType: vm.profilType, mainFirstName: vm.mainFirstName),
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 16),
        Text(
          _getSecondTextIllustrationPage(profilType: vm.profilType),
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 16),
        Center(
          child: EnsExternalLink.withRedirection(
            linkUrl: parametersUrl,
            onTap: () => context.tagAction(TagsParameters.tag_581_compte_cloturer_profil_lienexterne),
            linkText: 'monespacesante.fr',
            semanticsLabel: 'mon espace santé point fr',
          ),
        ),
        SizedBox(height: DeviceUtils.isSmallDevice(context) ? 24 : 56),
        EnsButton(
          label: _getButtonLabel(profilType: vm.profilType),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

String _getTextIllustrationPage({
  required ProfilType profilType,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Je peux clôturer mon profil Mon Espace Santé depuis le site. Si je le souhaite, je peux également demander la suppression de mes données personnelles.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je peux clôturer le profil Mon Espace Santé de $mainFirstName depuis le site. Si je le souhaite, je peux également demander la suppression de ses données personnelles.'
  };
}

String _getSecondTextIllustrationPage({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Rendez-vous dans la rubrique paramètres de votre profil.',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Rendez-vous dans la rubrique paramètres de son profil.'
  };
}

String _getButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai compris',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'C\'est compris'
  };
}
