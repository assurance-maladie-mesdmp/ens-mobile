/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';

class VaccinationsSelectors {
  static EnsVaccination? getVaccinationById(EnsState state, String id) {
    final vaccinationsListState = state.vaccinationsState.vaccinationsListState;
    if (vaccinationsListState.status.isSuccess()) {
      return vaccinationsListState.vaccinations.firstWhereOrNull((vaccination) => vaccination.id == id);
    } else {
      return null;
    }
  }
}
