/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/raccourcis/data/raccourcis_repository.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis.dart';

class GuestRaccourcisRepository extends IRaccourcisRepository {
  @override
  List<Raccourcis> getAllRaccourcis() {
    return Raccourcis.values;
  }

  @override
  Future<List<Raccourcis>> getRaccourcis(String patientId) {
    return Future.value([Raccourcis.RECHERCHER_PS, Raccourcis.AJOUTER_DOCUMENT]);
  }

  @override
  Future<void> setRaccourcis(String patientId, List<Raccourcis> raccourcis) {
    return Future.value(null);
  }
}
