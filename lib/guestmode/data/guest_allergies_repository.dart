/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/helper/guest_allergies_repository_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergie_repo_input.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/get_allergies_response.dart';

class GuestAllergiesRepository extends IAllergiesRepository {
  @override
  Future<RequestResult<GetAllergiesResponse>> getAllergies(String patientId) {
    return Future.value(RequestResultSuccess(GuestAllergiesRepositoryHelper.getAllergies(patientId)));
  }

  @override
  Future<RequestResult<void>> addAllergie(
    String patientId,
    AddAllergieInputModel addAllergieInputModel,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> updateAllergie(String patientId, UpdateAllergieInputModel updateAllergieInputModel) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteAllergie(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
