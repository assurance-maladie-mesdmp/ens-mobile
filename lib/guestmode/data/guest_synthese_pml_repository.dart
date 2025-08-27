/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/data/synthese_pml_repository.dart';

class GuestSynthesePmlRepository extends ISynthesePmlRepository {
  @override
  Future<RequestResult<EnsFileContent>> getSynthesePml(String patientId, {EnsPmlSection? rubrique}) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
