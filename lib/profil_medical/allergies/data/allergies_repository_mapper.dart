/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergie_repo_input.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/get_allergies_response.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class AllergiesRepositoryMapper {
  static GetAllergiesResponse toEnsAllergies(
    Iterable<Gallergie> allergiesDto,
    String? declarationDate,
  ) {
    final List<EnsTraitement> traitements = [];
    final allergies = allergiesDto.map(
      (allergie) {
        final traitementsLinked = allergie.mapTraitementsInAllergies();
        for (final traitementLink in traitementsLinked) {
          final currentTraitement = traitements.firstWhereOrNull((traitement) => traitement.id == traitementLink.id);
          if (currentTraitement != null) {
            currentTraitement.linkedAllergieIds.add(allergie.id);
          } else {
            traitements.add(traitementLink);
          }
        }
        return allergie.toEnsAllergie();
      },
    ).toList();

    final unconcernedDate = declarationDate != null && allergies.isEmpty ? DateTime.parse(declarationDate) : null;
    return GetAllergiesResponse(allergies, unconcernedDate, traitements);
  }

  static GAllergyInputBuilder buildAllergieInput(
    String patientId,
    AddAllergieInputModel addAllergieInputModel,
  ) {
    final allergyInput = GAllergyInput(
      (input) => input
        ..patientId = patientId
        ..name = addAllergieInputModel.name
        ..comment = addAllergieInputModel.comment
        ..linkedTreatmentsId = ListBuilder(addAllergieInputModel.linkedTraitementsIds),
    );
    final allergieInputBuilder = GAllergyInputBuilder();
    allergieInputBuilder.replace(allergyInput);

    return allergieInputBuilder;
  }

  static GAllergyUpdateInputBuilder buildAllergieUpdateInput(
    String patientId,
    UpdateAllergieInputModel updateAllergieInputModel,
  ) {
    final allergyUpdateInput = GAllergyUpdateInput(
      (input) => input
        ..patientId = patientId
        ..id = updateAllergieInputModel.id
        ..name = updateAllergieInputModel.name
        ..comment = updateAllergieInputModel.comment
        ..linkedTreatmentUpdate = ListBuilder<GLinkUpdateInput>().from(
          updateAllergieInputModel.traitementsLinks,
          updateAllergieInputModel.id,
        ),
    );
    final allergieUpdateInputBuilder = GAllergyUpdateInputBuilder();
    allergieUpdateInputBuilder.replace(allergyUpdateInput);
    return allergieUpdateInputBuilder;
  }

  static ListBuilder<GDeleteLinkInput> toDeleteLinkInputs(List<String> traitementLinkIds) {
    return ListBuilder(
      traitementLinkIds.map((traitementLinkId) => GDeleteLinkInput((link) => link.linkId = traitementLinkId)),
    );
  }
}

extension GLinkUpdateInputMapper on ListBuilder<GLinkUpdateInput> {
  ListBuilder<GLinkUpdateInput>? from(Map<String, String> linkedTraitementIds, String? allergieId) {
    return ListBuilder(
      linkedTraitementIds.entries.map((entrie) {
        return GLinkUpdateInput(
          (link) => link
            ..linkId = entrie.value
            ..source.id = allergieId
            ..source.type = GLinkType.ALLERGY
            ..target.id = entrie.key
            ..target.type = GLinkType.TREATMENT,
        );
      }),
    );
  }
}

extension AllergieLinkedTreatmentsMapper on Gallergie_linkedTreatments_treatment {
  EnsTraitement toEnsTraitement(String allergieId) {
    return EnsTraitement(
      id: id,
      name: name,
      dosage: dosage,
      comment: comment,
      startDate: EnsDate(
        day: startDay,
        month: startMonth,
        year: startYear,
      ),
      endDate: EnsDate(day: endDay, month: endMonth, year: endYear),
      linkedAllergieIds: [allergieId],
    );
  }
}

extension AllergiesMapper on Gallergie {
  List<EnsTraitement> mapTraitementsInAllergies() {
    return linkedTreatments?.map((traitementDto) => traitementDto.treatment.toEnsTraitement(id)).toList() ?? [];
  }

  EnsAllergie toEnsAllergie() {
    return EnsAllergie(
      id: id,
      name: name,
      comment: comment,
      linkedTraitementIds:
          linkedTreatments?.map((linkedTraitementId) => linkedTraitementId.treatment.id).toList() ?? [],
    );
  }
}
