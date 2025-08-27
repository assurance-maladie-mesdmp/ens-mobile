/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/data/professional_activities_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';

class GuestIProfessionalActivitiesRepository extends IProfessionalActivitiesRepository {
  @override
  Future<RequestResult<List<EnsProfessionalActivity>>> getProfessionsAndSpecialities() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => RequestResultSuccess(const [
        EnsSpecialite(treCode: 'String', label: 'Médecine générale', shortLabel: 'Médecine'),
        EnsSpecialite(treCode: 'String', label: 'Chirurgie cardio thoracique', shortLabel: 'Chirurgie'),
        EnsSpecialite(treCode: 'String', label: 'Tabacologie', shortLabel: 'Tabacologie'),
      ]),
    );
  }
}
