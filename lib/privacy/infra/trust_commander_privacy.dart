/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ens_plugin/trust_commander/trust_commander_bridge.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';

class TrustCommanderPrivacy extends IEnsPrivacy {
  static const String ID_CATEGORY_PREFIX = 'PRIVACY_CAT_';
  static const int ID_CATEGORY_ANALYTICS = 1;

  static const String TC_CONSENT_REFUSED = '0';
  static const String TC_CONSENT_ACCEPTED = '1';
  static const String TC_CONSENT_MANDATORY = '2';
  static const String TC_CONSENT_MANDATORY_ACCEPT = '3';

  final TrustCommanderService _trustCommanderService;
  EnsPrivacyStatus _analyticsStatus;

  TrustCommanderPrivacy(this._trustCommanderService, this._analyticsStatus);

  void updatePrivacy(Map<String, String> consentValues) {
    final String? value = consentValues['$ID_CATEGORY_PREFIX$ID_CATEGORY_ANALYTICS'];
    switch (value) {
      case '0':
        _analyticsStatus = EnsPrivacyStatus.DECLINED;
      case '1':
      case '2':
      case '3':
        _analyticsStatus = EnsPrivacyStatus.ACCEPTED;
    }
  }

  @override
  Future<void> acceptAll() => _trustCommanderService.acceptAll();

  @override
  Future<void> declineAll() => _trustCommanderService.declineAll();

  @override
  void openPrivacyCenter() => _trustCommanderService.openPrivacyCenter();

  @override
  EnsPrivacyStatus getAnalyticsConsentment() => _analyticsStatus;

  @override
  Future<bool> shouldAskForConsentment() => _trustCommanderService.shouldDisplayPrivacyCenter();
}

class EnsTCCallback extends TrustCommanderPrivacyCallbacks {
  final TrustCommanderPrivacy _privacy;

  EnsTCCallback(this._privacy);

  @override
  void consentCategoryChanged() {}

  @override
  void consentOutdated() {}

  @override
  void consentUpdated(Map<String, String>? categories) {
    if (categories != null) {
      _privacy.updatePrivacy(categories);
    }
  }

  @override
  void significantChangesInPrivacy() {}
}
