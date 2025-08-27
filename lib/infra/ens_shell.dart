/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:ens_plugin/trust_commander/trust_commander_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/ens_app.dart';
import 'package:fr_cnamts_ens/infra/ens_initial_app.dart';
import 'package:fr_cnamts_ens/infra/ens_shell_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_reducer.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/urls_config.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/infra/trust_commander_privacy.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:fr_cnamts_ens/update/screens/update_app_screen.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnsShell extends StatelessWidget {
  final AppConfig appConfig;
  final SharedPreferences sharedPrefs;
  final PackageInfo packageInfo;
  final CommonInjector commonInjector;
  final Store<EnsInitialState> initialStore;

  const EnsShell._({
    super.key,
    required this.appConfig,
    required this.sharedPrefs,
    required this.packageInfo,
    required this.commonInjector,
    required this.initialStore,
  });

  factory EnsShell({
    Key? key,
    required AppConfig appConfig,
    required SharedPreferences sharedPrefs,
    required PackageInfo packageInfo,
    required AtInternetTracker tracker,
    required TrustCommanderService trustCommanderService,
    required EnsPrivacyStatus initialAnalyticsStatus,
    required bool shouldDisplayPrivacyBanner,
    Map<String, String>? proxy,
  }) {
    final TrustCommanderPrivacy privacy = TrustCommanderPrivacy(trustCommanderService, initialAnalyticsStatus);
    final commonInjector = EnsModuleContainer.getCommonInjector(
      appConfig,
      UrlsConfig(),
      sharedPrefs,
      packageInfo,
      tracker,
      privacy,
      proxy,
    );
    final initialStore = Store<EnsInitialState>(
      ensInitialReducer,
      initialState: EnsInitialState(
        authState: const AuthState(AuthStatus.NOT_LOGGED_IN),
        privacyBannerShown: !shouldDisplayPrivacyBanner,
        loginScreenMessagePanneState: const MessagePanneState(),
        receiveSharingState: const ReceiveSharingState([]),
        enrolementState: const EnrolementState(),
        snackbarContainerState: const SnackbarContainerState(
          snackbarState: SnackbarState.empty(),
          containerCount: 0,
        ),
        developpeurOutilsState: const DeveloppeurOutilsState(),
        interruptionServicesState: const InterruptionServicesState(),
      ),
      middleware: createEnsInitialMiddlewares(
        commonInjector.getAuthInteractor(),
        commonInjector.getEnsAnalytics(),
        privacy,
        commonInjector.getOfflineCovidCertificateRepository(),
        commonInjector.getOfflineUserDataRepository(),
        commonInjector.getMessagesPannesRepository(),
        commonInjector.getInterruptionServiceRepository(),
        commonInjector.getReceiveSharingHelper(),
        commonInjector.getFileHelper(),
        commonInjector.getEnrolementRepository(),
        commonInjector.getDeviceInfoWrapper(),
        commonInjector.getPasswordlessBlacklist(),
        commonInjector.getDeveloppeurOutilsRepository(),
        commonInjector.getAnalyticsHook(),
        commonInjector.getLogoutWrapper(),
      ),
    );
    commonInjector.getInitialStoreDependants().forEach((initialStateDependant) {
      initialStateDependant.initForInitialStore(initialStore);
    });
    trustCommanderService.setCallback(EnsTCCallback(privacy));
    return EnsShell._(
      key: key,
      appConfig: appConfig,
      sharedPrefs: sharedPrefs,
      packageInfo: packageInfo,
      commonInjector: commonInjector,
      initialStore: initialStore,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: commonInjector.getUpdateInteractor().shouldForceUpdate(),
      builder: (context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.data ?? false) {
          if (Platform.isAndroid) _showNativeAndroidPopup();
          return UpdateAppScreen();
        } else {
          return StoreProvider(
            store: initialStore,
            child: _InitialScreen(commonInjector),
          );
        }
      },
    );
  }

  Future<void> _showNativeAndroidPopup() async {
    final updateInfo = await InAppUpdate.checkForUpdate();
    if (updateInfo.immediateUpdateAllowed) {
      InAppUpdate.performImmediateUpdate();
    }
  }
}

class _InitialScreen extends StatelessWidget {
  final CommonInjector commonInjector;

  const _InitialScreen(this.commonInjector);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, EnsShellViewModel>(
      distinct: true,
      converter: (store) => EnsShellViewModel(store),
      onInit: (store) => store.dispatch(InitReceiveSharingAction()),
      builder: (BuildContext context, EnsShellViewModel vm) {
        switch (vm.authStatus) {
          case AuthStatus.LOGGED_IN:
            EnsModuleContainer.initForAuthenticatedMode(commonInjector);
            return const EnsApp();
          case AuthStatus.GUEST:
            EnsModuleContainer.initForGuestMode(commonInjector);
            return const EnsApp();
          default:
            EnsModuleContainer.initForGuestMode(commonInjector);
            return EnsInitialApp();
        }
      },
    );
  }
}

enum AppMode {
  INITIAL,
  NORMAL,
  GUEST,
}
