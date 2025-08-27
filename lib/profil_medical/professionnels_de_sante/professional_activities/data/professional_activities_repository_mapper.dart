/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_specialities_and_professions.data.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';

class ProfessionalActivitiesRepositoryMapper {
  static List<EnsSpecialite> toEnsSpecialities(
    List<Gget_specialities_and_professionsData_specialities> specialityModelList,
  ) =>
      specialityModelList
          .map(
            (speciality) =>
                speciality.label == null ? null : EnsSpecialite(treCode: speciality.treCode, label: speciality.label!),
          )
          .nonNulls
          .toList();

  static List<EnsProfession> toEnsProfessions(
    List<Gget_specialities_and_professionsData_professions> professionModelList,
  ) =>
      professionModelList
          .map(
            (profession) =>
                profession.label == null ? null : EnsProfession(treCode: profession.treCode, label: profession.label!),
          )
          .nonNulls
          .toList();
}
