/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/secure_storage/data/secure_storage_repository.dart';

class GuestSecureStorageRepository extends ISecureStorageRepository {
  @override
  Future<RequestResult<List<String>>> readIncitationWelcomePageViews() {
    return Future.value(RequestResultSuccess(const []));
  }

  @override
  Future<void> writeIncitationWelcomePageViews(String patientId) {
    return Future.value();
  }

  @override
  Future<bool> readShouldDisplayInfoHorsRefPs(String patientId) {
    return Future.value(true);
  }

  @override
  Future<void> writePSNonRefInfoDisplayViews(String patientId) {
    return Future.value();
  }

  @override
  Future<bool> readShouldDisplayIncitationPmlBottomSheet(String patientId) {
    return Future.value(false);
  }

  @override
  Future<void> writeShouldDisplayIncitationPmlBottomSheet(
    String patientId,
    bool shouldDisplayIncitationPmlBottomSheet,
  ) {
    return Future.value();
  }

  @override
  Future<bool> readShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(String patientId) {
    return Future.value(false);
  }

  @override
  Future<void> writeShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(
    String patientId,
    bool shouldDisplayCreateAvisArretDeTravailBottomSheet,
  ) {
    return Future.value();
  }

  @override
  Future<bool> readShouldDisplayMhsTutorial(String patientId) {
    return Future.value(false);
  }

  @override
  Future<void> writeShouldDisplayMhsTutorial(String patientId) {
    return Future.value();
  }
}
