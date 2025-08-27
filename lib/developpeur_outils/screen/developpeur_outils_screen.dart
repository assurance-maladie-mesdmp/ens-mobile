/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/developpeur_outils_screen_view_model.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/historique_analytics_screen.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class DeveloppeurOutilsScreen extends StatelessWidget {
  static const routeName = '/developpeurOutilsScreen';

  const DeveloppeurOutilsScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, DeveloppeurOutilsScreenViewModel>(
      distinct: true,
      converter: (store) => DeveloppeurOutilsScreenViewModel(store),
      onInit: (store) {
        if (EnsModuleContainer.currentInjector.getAppConfig().configName != AppConfigName.PROD) {
          store.dispatch(GetDeveloppeurMenuInformation());
        }
      },
      builder: (context, vm) {
        return Scaffold(
          appBar: const EnsAppBarSubLevel(title: 'Outils développeur'),
          body: _Content(vm),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final DeveloppeurOutilsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    final packageInfo = EnsModuleContainer.currentInjector.getPackageInfo();
    final deviceInformationDisplayModel = vm.deviceInformationDisplayModel;
    return SafeArea(
      child: ScrollviewWithScrollbar(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _Item(
              text: 'Ces outils sont destinés aux développeurs pour faciliter le débogage de l’application.',
              textStyle: EnsTextStyle.text14_w400_normal_body,
            ),
            const _Section(text: 'Information d\'application'),
            _Item(text: 'Version : ${packageInfo.version}'),
            _Item(text: 'Build : ${packageInfo.buildNumber}'),
            const _Section(text: 'Information du device'),
            _Item(text: 'Device OS Version / SDK : ${deviceInformationDisplayModel.deviceVersion}'),
            _Item(text: 'Device model : ${deviceInformationDisplayModel.deviceModel}'),
            _Item(text: 'Device manufacture : ${deviceInformationDisplayModel.deviceManufacture}'),
            const _Section(text: 'Autorisation d\'activer le passwordless'),
            _Item(text: 'À l\'activation : ${deviceInformationDisplayModel.passwordlessForActivation}'),
            _Item(text: 'À la connexion : ${deviceInformationDisplayModel.passwordlessForConnexion}'),
            const SizedBox(height: 24),
            EnsButton(label: 'Reset Secure Storage', onTap: vm.clearSecureStorage),
            const SizedBox(height: 8),
            EnsButtonSecondary(label: 'Reset Shared Preferences', onTap: vm.clearSharedPreferences),
            const SizedBox(height: 8),
            EnsButton(
              color: EnsColors.error,
              label: 'Faire crasher l\'app',
              onTap: () => FirebaseCrashlytics.instance.crash(),
            ),
            const SizedBox(height: 8),
            EnsButton(
              label: 'Historique Analytics',
              onTap: () {
                Navigator.pushNamed(context, HistoriqueAnalyticsScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String text;

  const _Section({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Container(
        color: EnsColors.neutral200,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(text, style: EnsTextStyle.text14_w600_normal_title),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const _Item({required this.text, this.textStyle = EnsTextStyle.text14_w600_normal_body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(text, style: textStyle, textAlign: TextAlign.center),
    );
  }
}
