/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/editing_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitements.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';

class TraitementsRepositoryMapper {
  static GetTraitementResponse toTraitementResponse(
    Iterable<Gtraitement> traitementsDto,
    String? declarationDate,
  ) {
    final Map<String, EnsMaladie> maladiesList = {};
    final Map<String, EnsAllergie> allergiesList = {};
    final traitements = traitementsDto.map(
      (traitementDto) {
        final maladiesLinked = _buildEnsMaladies(traitementDto);
        for (final maladie in maladiesLinked) {
          final currentMaladie = maladiesList[maladie.id];
          if (currentMaladie != null) {
            currentMaladie.linkedTraitementIds.add(traitementDto.id);
          } else {
            maladiesList[maladie.id] = maladie;
          }
        }

        final allergiesLinked = _buildEnsAllergies(traitementDto);
        for (final allergie in allergiesLinked) {
          final currentAllergie = allergiesList[allergie.id];
          if (currentAllergie != null) {
            currentAllergie.linkedTraitementIds.add(traitementDto.id);
          } else {
            allergiesList[allergie.id] = allergie;
          }
        }

        return EnsTraitement(
          id: traitementDto.id,
          name: traitementDto.name,
          dosage: traitementDto.dosage,
          comment: traitementDto.comment,
          startDate: EnsDate(
            day: traitementDto.startDay,
            month: traitementDto.startMonth,
            year: traitementDto.startYear,
          ),
          endDate: EnsDate(day: traitementDto.endDay, month: traitementDto.endMonth, year: traitementDto.endYear),
          linkedMaladieIds: traitementDto.linkedDiseases?.map((maladieLie) => maladieLie.disease.id).toList() ?? [],
          linkedAllergieIds: traitementDto.linkedAllergies?.map((allergieLie) => allergieLie.allergy.id).toList() ?? [],
        );
      },
    ).toList();
    final unconcernedDate = declarationDate != null && traitements.isEmpty ? DateTime.parse(declarationDate) : null;
    return GetTraitementResponse(EnsTraitements(traitements, unconcernedDate), maladiesList, allergiesList);
  }

  static List<EnsMaladie> _buildEnsMaladies(Gtraitement traitement) {
    final linkedDiseases = traitement.linkedDiseases;
    if (linkedDiseases != null) {
      return linkedDiseases
          .map(
            (maladieLie) => EnsMaladie(
              id: maladieLie.disease.id,
              name: maladieLie.disease.name,
              startDate: EnsDate(
                day: maladieLie.disease.startDay,
                month: maladieLie.disease.startMonth,
                year: maladieLie.disease.startYear,
              ),
              comment: maladieLie.disease.comment,
              linkedDocumentIds: maladieLie.disease.linkedDocuments?.map((e) => e.document.id).toList() ?? [],
              linkedTraitementIds: [traitement.id],
            ),
          )
          .toList();
    } else {
      return [];
    }
  }

  static List<EnsAllergie> _buildEnsAllergies(Gtraitement traitement) {
    final linkedAllergies = traitement.linkedAllergies;
    if (linkedAllergies != null) {
      return linkedAllergies
          .map(
            (allergieLie) => EnsAllergie(
              id: allergieLie.allergy.id,
              name: allergieLie.allergy.name,
              comment: allergieLie.allergy.comment,
              linkedTraitementIds: [traitement.id],
            ),
          )
          .toList();
    } else {
      return [];
    }
  }

  static GTreatmentInputBuilder buildTraitementInput(String patientId, TraitementTemporaire editingTraitement) {
    final traitementInput = GTreatmentInput(
      (input) => input
        ..patientId = patientId
        ..name = editingTraitement.name
        ..dosage = editingTraitement.dosage
        ..comment = editingTraitement.comment
        ..startDay = editingTraitement.startDay
        ..startMonth = editingTraitement.startMonth
        ..startYear = editingTraitement.startYear
        ..endDay = editingTraitement.endDay
        ..endMonth = editingTraitement.endMonth
        ..endYear = editingTraitement.endYear,
    );
    final traitementInputBuilder = GTreatmentInputBuilder();
    traitementInputBuilder.replace(traitementInput);
    return traitementInputBuilder;
  }

  static GTreatmentUpdateInputBuilder buildTraitementUpdateInput(
    String patientId,
    EditingTraitement editingTraitement,
  ) {
    final traitementUpdateInput = GTreatmentUpdateInput(
      (input) => input
        ..patientId = patientId
        ..id = editingTraitement.id
        ..name = editingTraitement.name
        ..dosage = editingTraitement.dosage
        ..comment = editingTraitement.comment
        ..startDay = editingTraitement.startDay
        ..startMonth = editingTraitement.startMonth
        ..startYear = editingTraitement.startYear
        ..endDay = editingTraitement.endDay
        ..endMonth = editingTraitement.endMonth
        ..endYear = editingTraitement.endYear,
    );
    final traitementUpdateInputBuilder = GTreatmentUpdateInputBuilder();
    traitementUpdateInputBuilder.replace(traitementUpdateInput);
    return traitementUpdateInputBuilder;
  }
}
