/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/professionnels_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/professionnel_sante_confidentialities.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

class GuestProfessionnelsDeSanteRepository extends IProfessionnelsDeSanteRepository {
  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSanteSynchroMedecinTraitant(
    String patientId,
  ) async {
    return RequestResultSuccess(
      const [
        ProfessionnelDeSante(
          idForDelete: 'id',
          nationalId: 'idNat',
          lastName: 'Dupont',
          firstName: 'Michel',
          profession: 'Test',
          addresses: [
            ActeurDeSanteAdresse(
              roadNumber: '31 ',
              city: 'Paris',
              cityZipCode: '75002',
              road: 'Avenue de l\'opéra',
              addressName: 'Cabinet du Dr Dupont',
            ),
          ],
          role: PsRoleDomaine.MEDECIN_TRAITANT,
          isMedecinTraitantDeclare: true,
          exercices: [
            ProfessionnelDeSanteExercice(
              profession: 'Médecin',
              specialites: 'spécialité 1, spécialité 2',
            ),
          ],
          active: true,
        ),
      ],
    );
  }

  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSante(String patientId) async {
    return RequestResultSuccess(
      const [
        ProfessionnelDeSante(
          idForDelete: 'id',
          nationalId: 'idNat',
          lastName: 'Dupont',
          firstName: 'Michel',
          profession: 'Test',
          addresses: [
            ActeurDeSanteAdresse(
              roadNumber: '31 ',
              city: 'Paris',
              cityZipCode: '75002',
              road: 'Avenue de l\'opéra',
              addressName: 'Cabinet du Dr Dupont',
            ),
          ],
          role: PsRoleDomaine.MEDECIN_TRAITANT,
          isMedecinTraitantDeclare: true,
          exercices: [
            ProfessionnelDeSanteExercice(
              profession: 'Médecin',
              specialites: 'spécialité 1, spécialité 2',
            ),
          ],
          active: true,
        ),
      ],
    );
  }

  @override
  Future<RequestResult<void>> addPs({
    required String patientId,
    required String psId,
    bool isMedecinTraitant = false,
    PsRoleDomaine? role,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> removeProfessionnelDeSante(String patientId, String id) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<ProfessionnelDeSante>> getProfessionnelDeSanteDetail(String id, String patientId) async {
    if (id == 'idNat2') {
      return RequestResultSuccess(
        const ProfessionnelDeSante(
          idForDelete: 'id2',
          nationalId: 'idNat2',
          lastName: 'Thomas',
          firstName: 'Christelle',
          addresses: [
            ActeurDeSanteAdresse(
              roadNumber: '31 ',
              city: 'Paris',
              cityZipCode: '75002',
              road: 'Avenue de l\'opéra',
              addressName: 'Cabinet du Dr Thomas',
            ),
          ],
          role: PsRoleDomaine.MEDECIN_TRAITANT,
          isMedecinTraitantDeclare: true,
          exercices: [
            ProfessionnelDeSanteExercice(
              profession: 'Médecin',
              specialites: 'spécialité 1, spécialité 2',
            ),
          ],
          active: true,
        ),
      );
    }
    return RequestResultSuccess(
      const ProfessionnelDeSante(
        idForDelete: 'id',
        nationalId: 'idNat',
        lastName: 'Dupont',
        firstName: 'Michel',
        addresses: [
          ActeurDeSanteAdresse(
            roadNumber: '31 ',
            city: 'Paris',
            cityZipCode: '75002',
            road: 'Avenue de l\'opéra',
            addressName: 'Cabinet du Dr Dupont',
          ),
        ],
        role: PsRoleDomaine.MEDECIN_TRAITANT,
        isMedecinTraitantDeclare: true,
        exercices: [
          ProfessionnelDeSanteExercice(
            profession: 'Médecin',
            specialites: 'spécialité 1, spécialité 2',
          ),
        ],
        active: true,
      ),
    );
  }

  @override
  Future<RequestResult<List<ActeurDeSanteSuggestion>>> getAsSuggestions(String patientId) async {
    return RequestResultSuccess(const [
      ProfessionelDeSanteSuggestion(
        id: 'id',
        profession: 'Chirurgien dentiste',
        name: 'Alice Dupont',
        adresse: '12 av Ste Marguerite, 06200, Nice',
        email: '',
      ),
      EtablissementDeSanteSuggestion(
        id: 'id1',
        name: 'Pharmacie De l\'arbre',
        adresse: '12 av de l\'isson, 51290, Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson',
        email: '',
      ),
      EtablissementDeSanteSuggestion(
        id: 'id2',
        name: 'Pharmacie Lafayette les chausses',
        adresse: '12 av Ste Marguerite, 06200, NICE',
        email: '',
      ),
      ProfessionelDeSanteSuggestion(
        id: 'id3',
        profession: 'Chirurgien',
        name: 'George Aladin',
        adresse: '12 av Ste Marguerite, 06200, Nice',
        email: '',
      ),
      ProfessionelDeSanteSuggestion(
        id: 'id4',
        profession: 'Médecin généraliste',
        name: 'Micheline Dupont',
        adresse: '12 av Ste Marguerite, 06200, Nice',
        email: '',
      ),
    ]);
  }

  @override
  Future<RequestResult<ProfessionnelSanteConfidentialities>> getProfessionnelDeSanteConfidentialities(
    String patientId,
  ) async {
    return RequestResultSuccess(
      const ProfessionnelSanteConfidentialities(
        confidentilities: [],
        shouldShowCasUrgence: false,
      ),
    );
  }

  @override
  Future<RequestResult<void>> addRoleProfessionnelDeSante({
    required String patientId,
    required String psNationalId,
    required PsRoleDomaine role,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> removeRoleProfessionnelDeSante({
    required String patientId,
    required String psIdNat,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
