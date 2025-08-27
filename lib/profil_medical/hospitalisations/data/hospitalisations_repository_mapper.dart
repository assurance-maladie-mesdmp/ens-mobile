/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_add.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_get.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_update.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisations.dart';

class HospitalisationsRepositoryMapper {
  static EnsHospitalisations toEnsHospitalisations(
    Iterable<Gget_hospitalisationsData_hospitalizations_hospitalizations> hospitalizations,
    String? declarationDate,
  ) {
    final hospitalisations = hospitalizations.map(_toEnsHospitalisation).toList();
    final unconcernedDate =
        declarationDate != null && hospitalisations.isEmpty ? DateTime.parse(declarationDate) : null;

    return EnsHospitalisations(hospitalisations, unconcernedDate);
  }

  static EnsHospitalisation _toEnsHospitalisation(
    Gget_hospitalisationsData_hospitalizations_hospitalizations hospitalization,
  ) =>
      EnsHospitalisation(
        id: hospitalization.id,
        name: hospitalization.name,
        comment: hospitalization.comment,
        startDate: EnsDate(
          day: hospitalization.startDay,
          month: hospitalization.startMonth,
          year: hospitalization.startYear,
        ),
        duration: EnsHospitalisationDuration(
          duration: hospitalization.duration == 0 ? null : hospitalization.duration.toInt(),
          unit: _toEnsDurationUnit(hospitalization.durationUnit),
        ),
        linkedDocumentsIds: _toLinkedDocumentsList(hospitalization.linkedDocuments?.toList()),
      );

  static List<String> _toLinkedDocumentsList(
    List<Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>? linkedDocuments,
  ) =>
      linkedDocuments?.map((linkedDoc) => linkedDoc.document.id).toList() ?? [];

  static Iterable<GLinkInput> docIdsToLinkInputs(
    Iterable<String> linkedDocumentsIds,
    String patientId,
    String hospitalisationId,
  ) =>
      linkedDocumentsIds.map(
        (docId) {
          final linkInput = GLinkInputBuilder()
            ..patientId = patientId
            ..sourceType = GLinkType.HOSPITALIZATION
            ..sourceId = hospitalisationId
            ..targetType = GLinkType.DOCUMENT
            ..targetId = docId;
          return linkInput.build();
        },
      );

  static EnsHospitalisationDurationUnit _toEnsDurationUnit(GDurationUnitEnum value) {
    switch (value) {
      case GDurationUnitEnum.DAY:
        return EnsHospitalisationDurationUnit.DAY;
      case GDurationUnitEnum.WEEK:
        return EnsHospitalisationDurationUnit.WEEK;
      case GDurationUnitEnum.MONTH:
        return EnsHospitalisationDurationUnit.MONTH;
      case GDurationUnitEnum.YEAR:
        return EnsHospitalisationDurationUnit.YEAR;
      case GDurationUnitEnum.gUnknownEnumValue:
        return EnsHospitalisationDurationUnit.UNKNOWN;
      default:
        return EnsHospitalisationDurationUnit.UNKNOWN;
    }
  }

  static Gadd_hospitalisationReqBuilder Function(Gadd_hospitalisationReqBuilder builder) buildAddHospitalisationInput(
    EditingHospitalisation editingHospitalisation,
    String patientId,
  ) {
    Gadd_hospitalisationReqBuilder updates(Gadd_hospitalisationReqBuilder builder) {
      builder.fetchPolicy = FetchPolicy.NetworkOnly;
      if (editingHospitalisation.name != null && editingHospitalisation.startYear != null) {
        builder.vars.hospitalization.patientId = patientId;
        builder.vars.hospitalization.name = editingHospitalisation.name;
        builder.vars.hospitalization.comment = editingHospitalisation.comment;
        builder.vars.hospitalization.startDay = editingHospitalisation.startDay;
        builder.vars.hospitalization.startMonth = editingHospitalisation.startMonth;
        builder.vars.hospitalization.startYear = editingHospitalisation.startYear;
        builder.vars.hospitalization.duration = _doubleValueOrZero(editingHospitalisation.duration);
        builder.vars.hospitalization.durationUnit = editingHospitalisation.durationUnit != null
            ? _toDurationUnitEnum(editingHospitalisation.durationUnit)
            : GDurationUnitEnum.DAY;
        builder.vars.hospitalization.linkedDocumentsId = ListBuilder(editingHospitalisation.linkedDocumentsIds);
      }
      return builder;
    }

    return updates;
  }

  static Gupdate_hospitalisationReqBuilder Function(Gupdate_hospitalisationReqBuilder builder)
      updateHospitalisationInput(
    EditingHospitalisation editingHospitalisation,
    String patientId,
    List<String> documentIdsToAdd,
    List<String> documentIdsToRemove,
    ILinksInMemoryInteractor linksInMemoryInteractor,
  ) {
    Gupdate_hospitalisationReqBuilder updates(Gupdate_hospitalisationReqBuilder builder) {
      builder.fetchPolicy = FetchPolicy.NetworkOnly;
      if (editingHospitalisation.name != null && editingHospitalisation.startYear != null) {
        builder.vars.hospitalization.patientId = patientId;
        builder.vars.hospitalization.id = editingHospitalisation.id;
        builder.vars.patientId = patientId;
        builder.vars.linksInput = ListBuilder(
          HospitalisationsRepositoryMapper.docIdsToLinkInputs(
            documentIdsToAdd,
            patientId,
            editingHospitalisation.id!,
          ),
        );
        builder.vars.hospitalization.name = editingHospitalisation.name;
        builder.vars.hospitalization.comment = editingHospitalisation.comment;
        builder.vars.hospitalization.startDay = editingHospitalisation.startDay;
        builder.vars.hospitalization.startMonth = editingHospitalisation.startMonth;
        builder.vars.hospitalization.startYear = editingHospitalisation.startYear;
        builder.vars.hospitalization.duration = _doubleValueOrZero(editingHospitalisation.duration);
        builder.vars.hospitalization.durationUnit = editingHospitalisation.durationUnit != null
            ? _toDurationUnitEnum(editingHospitalisation.durationUnit)
            : GDurationUnitEnum.DAY;
        builder.vars.hospitalization.linkedDocumentsId = ListBuilder(editingHospitalisation.linkedDocumentsIds);
        builder.vars.deleteLinksInput = ListBuilder(
          documentIdsToRemove
              .map(
                (docId) =>
                    linksInMemoryInteractor.getDocumentToHospitalisationLinkId(editingHospitalisation.id!, docId),
              )
              .nonNulls
              .map((linkId) {
            final builder = GDeleteLinkInputBuilder();
            builder.linkId = linkId;
            return builder.build();
          }),
        );
      }
      return builder;
    }

    return updates;
  }
}

double _doubleValueOrZero(int? duration) {
  return duration != null ? duration.toDouble() : 0;
}

GDurationUnitEnum _toDurationUnitEnum(EnsHospitalisationDurationUnit? value) {
  switch (value) {
    case EnsHospitalisationDurationUnit.DAY:
    case null:
      return GDurationUnitEnum.DAY;
    case EnsHospitalisationDurationUnit.WEEK:
      return GDurationUnitEnum.WEEK;
    case EnsHospitalisationDurationUnit.MONTH:
      return GDurationUnitEnum.MONTH;
    case EnsHospitalisationDurationUnit.YEAR:
      return GDurationUnitEnum.YEAR;
    case EnsHospitalisationDurationUnit.UNKNOWN:
      return GDurationUnitEnum.gUnknownEnumValue;
  }
}
