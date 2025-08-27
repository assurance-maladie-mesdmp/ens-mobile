/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/data/search_ps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

class GuestSearchPsRepository extends ISearchPsRepository {
  final ps = [
    const ProfessionnelDeSante(
      nationalId: 'id1',
      idForDelete: '1',
      lastName: 'Dupont',
      firstName: 'Marc',
      profession: 'Infirmier',
      role: PsRoleDomaine.MEDECIN_TRAITANT,
      addresses: [
        ActeurDeSanteAdresse(
          cityZipCode: '75008',
          road: 'Mirabelle',
          roadNumber: '14 ',
          labelRoadType: 'avenue',
        ),
      ],
      active: true,
    ),
    const ProfessionnelDeSante(
      nationalId: 'id2',
      idForDelete: '2',
      lastName: 'Dupont',
      firstName: 'Jean',
      profession: 'Médecin',
      role: PsRoleDomaine.MEDECIN_TRAITANT,
      addresses: [
        ActeurDeSanteAdresse(
          cityZipCode: '75008',
          road: 'Mirabelle',
          roadNumber: '14 ',
          labelRoadType: 'avenue',
        ),
        ActeurDeSanteAdresse(
          cityZipCode: '75008',
          road: 'Mirabelle',
          roadNumber: '16 ',
          labelRoadType: 'avenue',
        ),
      ],
      exercices: [
        ProfessionnelDeSanteExercice(
          profession: 'Infirmier',
        ),
        ProfessionnelDeSanteExercice(
          profession: 'Médecin',
          specialites: 'spécialité 1, spécialité 2',
        ),
      ],
      active: false,
    ),
    const ProfessionnelDeSante(
      idForDelete: '3',
      lastName: 'Flantier',
      firstName: 'Noël',
      profession: 'Chirurgien',
      role: PsRoleDomaine.PHARMACIEN_CORRESPONDANT,
      addresses: [
        ActeurDeSanteAdresse(
          cityZipCode: '75000',
          road: 'Oswald Saint-Sabin',
          roadNumber: '117',
          labelRoadType: 'rue',
        ),
      ],
      active: false,
    ),
    const ProfessionnelDeSante(
      idForDelete: '4',
      lastName: 'Biscotte',
      firstName: 'Jacqueline',
      profession: 'Diététicienne',
      role: PsRoleDomaine.SAGE_FEMME_REFERENTE,
      addresses: [
        ActeurDeSanteAdresse(
          cityZipCode: '77000',
          road: 'des Miettes',
          roadNumber: '42',
          labelRoadType: 'avenue',
        ),
      ],
      active: true,
    ),
  ];

  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionelSante(
    String lastname,
    String firstname,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    EnsProfessionalActivity? professionalActivity,
  ) async {
    return RequestResultSuccess(ps);
  }
}
