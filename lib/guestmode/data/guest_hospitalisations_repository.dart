/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisations.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';

class GuestHospitalisationsRepository extends IHospitalisationsRepository {
  final List<EnsHospitalisation> _hospitalisations = [
    const EnsHospitalisation(
      id: '0',
      name: 'Accouchement',
      startDate: EnsDate(day: '23', month: '08', year: '2021'),
      comment: 'Accouchement et suivi à la Maternité Necker. Voie basse, RAS',
      duration: EnsHospitalisationDuration(
        duration: 3,
        unit: EnsHospitalisationDurationUnit.DAY,
      ),
      linkedDocumentsIds: [],
    ),
  ];

  @override
  Future<RequestResult<EditingHospitalisation>> addHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteHospitalisation(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<EnsHospitalisations>> getHospitalisations(String patientId) {
    return Future.value(RequestResultSuccess<EnsHospitalisations>(EnsHospitalisations(_hospitalisations.copy(), null)));
  }

  @override
  Future<RequestResult<EditingHospitalisation>> updateHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
    List<String> addedDocumentIds,
    List<String> removedDocumentIds,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
