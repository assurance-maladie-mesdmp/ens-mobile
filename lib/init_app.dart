/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:ens_plugin/trust_commander/trust_commander_bridge.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/ens_shell.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/infra/trust_commander_privacy.dart';
import 'package:fr_cnamts_ens/utils/extensions/firebase_crashlytics_extension.dart';
import 'package:fr_cnamts_ens/utils/plugin_utils.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:system_proxy/system_proxy.dart';

Future<void> initApp(AppConfig appConfig) async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();

      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final AtInternetTracker tracker = await AtInternetTracker.build(appConfig.atInternetTrackerConfig);
      final TrustCommanderService trustCommanderService =
          await TrustCommanderService.build(appConfig.trustCommanderServiceConfig);
      final bool shouldDisplayPrivacyBanner = await trustCommanderService.shouldDisplayPrivacyCenter();
      final bool isAnalyticsAccepted =
          await trustCommanderService.isCategoryAccepted(TrustCommanderPrivacy.ID_CATEGORY_ANALYTICS);
      final proxy = await SystemProxy.getProxySettings();
      final bool isDevicePreviewConfig = PluginUtils.isDevicePreviewActivated();
      final shell = EnsShell(
        appConfig: appConfig,
        sharedPrefs: prefs,
        packageInfo: packageInfo,
        tracker: tracker,
        trustCommanderService: trustCommanderService,
        initialAnalyticsStatus: isAnalyticsAccepted ? EnsPrivacyStatus.ACCEPTED : EnsPrivacyStatus.DECLINED,
        shouldDisplayPrivacyBanner: shouldDisplayPrivacyBanner,
        proxy: proxy,
      );

      if (!kReleaseMode && isDevicePreviewConfig) {
        runApp(
          DevicePreview(
            tools: const [...DevicePreview.defaultTools],
            builder: (_) => shell,
          ),
        );
      } else {
        runApp(shell);
      }
    },
    (error, stack) => FirebaseCrashlytics.instance.smartRecordError(error, stack),
  );
}
