/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/helper/guest_maladies_repository_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';

class GuestMaladiesRepository extends IMaladiesRepository {
  @override
  Future<RequestResult<EditingMaladie>> addMaladie(String patientId, EditingMaladie editingMaladie) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteMaladie(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<GetMaladieResponse>> getMaladies(String patientId) {
    return Future.value(RequestResultSuccess(GuestMaladiesRepositoryHelper.getMaladies(patientId)));
  }

  @override
  Future<RequestResult<EditingMaladie>> updateMaladie(
    String patientId,
    EditingMaladie editingMaladie,
    List<String> documentsToAdd,
    List<String> documentsToRemove,
    List<String> traitementsToAdd,
    List<String> traitementsToRemove,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
