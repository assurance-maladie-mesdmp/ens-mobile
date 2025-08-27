/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';

abstract class IOfflineCovidCertificateRepository {
  Future<void> wipeQrCodeFromSecureStorage();

  Future<void> wipeCovidCertificateFromSecureStorage();
}

class OfflineCovidCertificateRepository extends IOfflineCovidCertificateRepository {
  static const String _SS_QR_CODE_KEY = 'offline_qr_code';
  static const String _SS_COVID_CERTIFICATE_KEY = 'offline_covid_certificate';

  final DeviceSecureStorageWrapper _secureStorage;

  OfflineCovidCertificateRepository(this._secureStorage);

  @override
  Future<void> wipeQrCodeFromSecureStorage() async {
    _secureStorage.delete(key: _SS_QR_CODE_KEY);
  }

  @override
  Future<void> wipeCovidCertificateFromSecureStorage() async {
    _secureStorage.delete(key: _SS_COVID_CERTIFICATE_KEY);
  }
}
