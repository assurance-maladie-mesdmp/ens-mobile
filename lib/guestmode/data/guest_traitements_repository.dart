/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/helper/guest_traitements_repository_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/editing_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';

class GuestTraitementsRepository extends ITraitementsRepository {
  @override
  Future<RequestResult<String>> addTraitement(String patientId, TraitementTemporaire traitementTemporaire) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<List<String>>> addTraitements(
    String patientId,
    List<TraitementTemporaire> traitementTemporaireList,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteTraitement(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<GetTraitementResponse>> getTraitements(String patientId) {
    return Future.value(RequestResultSuccess(GuestTraitementsRepositoryHelper.getTraitements(patientId)));
  }

  @override
  Future<RequestResult<EditingTraitement>> updateTraitement(String patientId, EditingTraitement editingTraitement) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> getNomTraitementByCodeCip(String codeCip) {
    return Future.value(RequestResultSuccess<String>('Paracétamol'));
  }
}
