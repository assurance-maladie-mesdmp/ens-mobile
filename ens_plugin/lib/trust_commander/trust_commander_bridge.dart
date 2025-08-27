import 'dart:core';

import 'package:flutter/services.dart';

abstract class TrustCommanderPrivacyCallbacks {
  void consentUpdated(Map<String, String>? categories);

  void consentOutdated();

  void consentCategoryChanged();

  void significantChangesInPrivacy();
}

class _TrustCommanderPrivacyCallbacksWrapper {
  static Future<void> Function(MethodCall call) wrapTrustCommanderPrivacyCallback(
    TrustCommanderPrivacyCallbacks callbacks,
  ) {
    return (MethodCall call) async {
      switch (call.method) {
        case 'consentUpdated':
          {
            final arguments = call.arguments as Map<dynamic, dynamic>;
            final Map<String, String> strArguments = _convertArgumentToMapOfStrings(arguments);
            callbacks.consentUpdated(strArguments);
            return;
          }
        case 'consentOutdated':
          {
            callbacks.consentOutdated();
            return;
          }
        case 'consentCategoryChanged':
          {
            callbacks.consentCategoryChanged();
            return;
          }
        case 'significantChangesInPrivacy':
          {
            callbacks.significantChangesInPrivacy();
            return;
          }
      }
      return;
    };
  }

  static Map<String, String> _convertArgumentToMapOfStrings(Map<dynamic, dynamic> arguments) {
    final Map<String, String> strArguments = <String, String>{};
    arguments.forEach((key, value) {
      if (key.runtimeType == String) {
        strArguments[key as String] = value.runtimeType == String ? value as String : '';
      }
    });
    return strArguments;
  }
}

class TrustCommanderServiceConfig {
  final int siteId;
  final int privacyId;

  TrustCommanderServiceConfig(this.siteId, this.privacyId);
}

class TrustCommanderService {
  static const _platform = MethodChannel('com.octo.flutter/trustcommander_wrapper');

  static const String FUN_INIT = 'init';
  static const String FUN_SET_CALLBACK = 'setCallback';
  static const String FUN_OPEN_PRIVACY_CENTER = 'openPrivacyCenter';
  static const String FUN_ACCEPT_ALL = 'acceptAll';
  static const String FUN_DECLINE_ALL = 'declineAll';
  static const String FUN_SHOULD_DISPLAY_PRIVACY_CENTER = 'shouldDisplayPrivacyCenter';
  static const String FUN_IS_CATEGORY_ACCEPTED = 'isCategoryAccepted';

  static const String PARAM_SITE_ID = 'SITE_ID';
  static const String PARAM_PRIVACY_ID = 'PRIVACY_ID';
  static const String PARAM_CAT_ID = 'CAT_ID';

  final TrustCommanderServiceConfig config;

  TrustCommanderService._internal(this.config);

  static Future<TrustCommanderService> build(
    TrustCommanderServiceConfig config,
  ) async {
    final result = TrustCommanderService._internal(config);
    await _platform.invokeMethod(
      FUN_INIT,
      {
        PARAM_SITE_ID: config.siteId,
        PARAM_PRIVACY_ID: config.privacyId,
      },
    );
    return result;
  }

  void setCallback(TrustCommanderPrivacyCallbacks callbacks) {
    _platform.invokeMethod(
      FUN_SET_CALLBACK,
    );
    _platform.setMethodCallHandler(_TrustCommanderPrivacyCallbacksWrapper.wrapTrustCommanderPrivacyCallback(callbacks));
  }

  Future<void> acceptAll() => _platform.invokeMethod(FUN_ACCEPT_ALL);

  Future<void> declineAll() => _platform.invokeMethod(FUN_DECLINE_ALL);

  void openPrivacyCenter() {
    _platform.invokeMethod(FUN_OPEN_PRIVACY_CENTER);
  }

  Future<bool> shouldDisplayPrivacyCenter() async {
    final bool result = await _platform.invokeMethod(FUN_SHOULD_DISPLAY_PRIVACY_CENTER) as bool;
    return result;
  }

  Future<bool> isCategoryAccepted(int categoryId) async {
    final bool result = await _platform.invokeMethod(
      FUN_IS_CATEGORY_ACCEPTED,
      {
        PARAM_CAT_ID: categoryId,
      },
    ) as bool;
    return result;
  }
}
