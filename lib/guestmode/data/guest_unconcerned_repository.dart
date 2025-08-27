/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/data/unconcerned_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';

class GuestUnconcernedRepository extends IUnconcernedRepository {
  @override
  Future<RequestResult<EnsUnconcerned>> setUnconcerned(SectionUnconcerned section, String patientId) {
    return Future.value(
      RequestResultSuccess(
        EnsUnconcerned(
          date: DateTime.parse('2022-06-02T15:34:00'),
          section: section,
        ),
      ),
    );
  }
}
