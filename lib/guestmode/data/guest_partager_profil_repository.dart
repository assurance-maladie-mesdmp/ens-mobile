/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_repository.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_gestionnaire.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_second_gestionnaire_data.dart';

class GuestPartagerProfilRepository extends IPartagerProfilRepository {
  @override
  Future<RequestResult<List<PartagerProfilGestionnaire>>> getPartagerProfilData(String patientId) async {
    final gestionnaires = [
      const PartagerProfilGestionnaire(
        lastName: 'Michel',
        firstName: 'Julia',
        status: PartagerProfilGestionnaireStatus.VALIDE,
      ),
    ];
    return RequestResultSuccess(gestionnaires);
  }

  @override
  Future<RequestResult<void>> sendPartagerProfilForm({
    required String connectedUserPatientId,
    required String currentProfilPatientId,
    required PartagerProfilSecondGestionnaireData secondGestionnaireData,
  }) async {
    return RequestResultSuccess(null);
  }
}
