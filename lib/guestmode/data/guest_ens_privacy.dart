/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';

class GuestEnsPrivacy extends IEnsPrivacy {
  @override
  Future<void> acceptAll() async {}

  @override
  Future<void> declineAll() async {}

  @override
  EnsPrivacyStatus getAnalyticsConsentment() {
    return EnsPrivacyStatus.DECLINED;
  }

  @override
  void openPrivacyCenter() {}

  @override
  Future<bool> shouldAskForConsentment() async {
    return false;
  }
}
