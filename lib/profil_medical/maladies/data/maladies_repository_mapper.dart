/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class MaladiesRepositoryMapper {
  static GetMaladieResponse toMaladieResponse(
    Iterable<Gmaladie> maladiesDto,
    String? declarationDate,
  ) {
    final List<EnsTraitement> traitements = [];
    final maladies = maladiesDto.map(
      (maladie) {
        final traitementsLinked = _toLinkedTraitementList(maladie);
        for (final traitementLink in traitementsLinked) {
          final existingTraitement = traitements.firstWhereOrNull((traitement) => traitement.id == traitementLink.id);
          if (existingTraitement != null) {
            existingTraitement.linkedMaladieIds.add(maladie.id);
          } else {
            traitements.add(traitementLink);
          }
        }
        return EnsMaladie(
          id: maladie.id,
          name: maladie.name,
          comment: maladie.comment,
          startDate: EnsDate(day: maladie.startDay, month: maladie.startMonth, year: maladie.startYear),
          endDate: EnsDate(day: maladie.endDay, month: maladie.endMonth, year: maladie.endYear),
          linkedDocumentIds: _toLinkedDocumentsList(maladie.linkedDocuments?.toList()),
          linkedTraitementIds:
              maladie.linkedTreatments?.map((traitementLie) => traitementLie.treatment.id).toList() ?? [],
        );
      },
    ).toList();

    final unconcernedDate = declarationDate != null && maladies.isEmpty ? DateTime.parse(declarationDate) : null;
    return GetMaladieResponse(maladies, unconcernedDate, traitements);
  }

  static List<EnsTraitement> _toLinkedTraitementList(Gmaladie maladie) {
    final linkedTraitements = maladie.linkedTreatments;
    if (linkedTraitements != null) {
      return linkedTraitements
          .map(
            (linkedTraitement) => EnsTraitement(
              id: linkedTraitement.treatment.id,
              name: linkedTraitement.treatment.name,
              startDate: EnsDate(
                day: linkedTraitement.treatment.startDay,
                month: linkedTraitement.treatment.startMonth,
                year: linkedTraitement.treatment.startYear,
              ),
              endDate: EnsDate(
                day: linkedTraitement.treatment.endDay,
                month: linkedTraitement.treatment.endMonth,
                year: linkedTraitement.treatment.endYear,
              ),
              dosage: linkedTraitement.treatment.dosage,
              comment: linkedTraitement.treatment.comment,
              linkedMaladieIds: [maladie.id],
            ),
          )
          .toList();
    } else {
      return [];
    }
  }

  static List<String> _toLinkedDocumentsList(
    List<Gmaladie_linkedDocuments>? linkedDocuments,
  ) =>
      linkedDocuments?.map((linkedDoc) => linkedDoc.document.id).toList() ?? [];

  static GDiseaseUpdateInput toDiseaseUpdateInput(String patientId, EditingMaladie editingMaladie) =>
      GDiseaseUpdateInput(
        (disease) => disease
          ..patientId = patientId
          ..id = editingMaladie.id
          ..name = editingMaladie.name
          ..comment = editingMaladie.comment
          ..startDay = editingMaladie.startDay
          ..startMonth = editingMaladie.startMonth
          ..startYear = editingMaladie.startYear
          ..endDay = editingMaladie.endDay
          ..endMonth = editingMaladie.endMonth
          ..endYear = editingMaladie.endYear,
      );

  static List<GLinkInput> toLinkInputs(
    List<String> linkedDocumentIds,
    List<String> linkedTraitementIds,
    String patientId,
    String maladieId,
  ) {
    final documentLink = linkedDocumentIds
        .map(
          (documentId) => GLinkInput(
            (link) => link
              ..patientId = patientId
              ..sourceType = GLinkType.DISEASE
              ..sourceId = maladieId
              ..targetType = GLinkType.DOCUMENT
              ..targetId = documentId,
          ),
        )
        .toList();

    final traitementsLink = linkedTraitementIds
        .map(
          (traitementId) => GLinkInput(
            (link) => link
              ..patientId = patientId
              ..sourceType = GLinkType.DISEASE
              ..sourceId = maladieId
              ..targetType = GLinkType.TREATMENT
              ..targetId = traitementId,
          ),
        )
        .toList();

    return documentLink + traitementsLink;
  }

  static List<GDeleteLinkInput> toDeleteLinkInputs({
    required List<String> documentLinkIds,
    required List<String> traitementLinkIds,
  }) {
    final List<GDeleteLinkInput> docList =
        documentLinkIds.map((docLinkId) => GDeleteLinkInput((link) => link.linkId = docLinkId)).toList();
    final List<GDeleteLinkInput> traitementList = traitementLinkIds
        .map((traitementLinkId) => GDeleteLinkInput((link) => link.linkId = traitementLinkId))
        .toList();

    return docList + traitementList;
  }
}
