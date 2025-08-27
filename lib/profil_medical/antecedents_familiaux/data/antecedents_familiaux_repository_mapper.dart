/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_antecedents_familiaux.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedents_familiaux.dart';

class AntecedentsFamiliauxRepositoryMapper {
  static EnsAntecedentsFamiliaux toEnsAntecedentsFamiliaux(
    List<Gget_antecedents_familiauxData_familyHistories_familyHistories> familyHistories,
    String? declarationDate,
  ) {
    final antecedents = familyHistories.map(_toEnsAntecedent).toList();
    final unconcernedDate = declarationDate != null && antecedents.isEmpty ? DateTime.parse(declarationDate) : null;
    return EnsAntecedentsFamiliaux(antecedents, unconcernedDate);
  }

  static EnsAntecedentFamilial _toEnsAntecedent(
    Gget_antecedents_familiauxData_familyHistories_familyHistories antecedent,
  ) =>
      EnsAntecedentFamilial(
        id: antecedent.id,
        name: antecedent.name,
        familyRelationship: toEnsFamilyRelationship(antecedent.familyRelationship),
        comment: antecedent.comment,
      );

  static GFamilyHistoryInput? toFamilyHistoryInput(
    String patientId,
    EditingAntecedentFamilial? editingAntecedentFamilial,
  ) {
    if (editingAntecedentFamilial != null &&
        editingAntecedentFamilial.name != null &&
        editingAntecedentFamilial.familyRelationship != null) {
      return GFamilyHistoryInput(
        (input) => input
          ..patientId = patientId
          ..name = editingAntecedentFamilial.name
          ..comment = editingAntecedentFamilial.comment
          ..familyRelationship = toFamilyRelationshipEnum(editingAntecedentFamilial.familyRelationship!),
      );
    } else {
      return null;
    }
  }

  static GFamilyHistoryUpdateInput? toFamilyHistoryUpdateInput(
    String patientId,
    EditingAntecedentFamilial? editingAntecedentFamilial,
  ) {
    if (editingAntecedentFamilial != null &&
        editingAntecedentFamilial.id != null &&
        editingAntecedentFamilial.name != null &&
        editingAntecedentFamilial.familyRelationship != null) {
      return GFamilyHistoryUpdateInput(
        (input) => input
          ..patientId = patientId
          ..name = editingAntecedentFamilial.name
          ..comment = editingAntecedentFamilial.comment
          ..familyRelationship = toFamilyRelationshipEnum(editingAntecedentFamilial.familyRelationship!)
          ..id = editingAntecedentFamilial.id,
      );
    } else {
      return null;
    }
  }

  static EnsFamilyRelationship toEnsFamilyRelationship(GFamilyRelationshipEnum value) {
    return switch (value) {
      GFamilyRelationshipEnum.FATHER => EnsFamilyRelationship.FATHER,
      GFamilyRelationshipEnum.MOTHER => EnsFamilyRelationship.MOTHER,
      GFamilyRelationshipEnum.GRANDFATHER => EnsFamilyRelationship.GRANDFATHER,
      GFamilyRelationshipEnum.GRANDMOTHER => EnsFamilyRelationship.GRANDMOTHER,
      GFamilyRelationshipEnum.GREAT_GRANDFATHER => EnsFamilyRelationship.GREAT_GRANDFATHER,
      GFamilyRelationshipEnum.GREAT_GRANDMOTHER => EnsFamilyRelationship.GREAT_GRANDMOTHER,
      GFamilyRelationshipEnum.BROTHER => EnsFamilyRelationship.BROTHER,
      GFamilyRelationshipEnum.SISTER => EnsFamilyRelationship.SISTER,
      GFamilyRelationshipEnum.UNCLE => EnsFamilyRelationship.UNCLE,
      GFamilyRelationshipEnum.AUNT => EnsFamilyRelationship.AUNT,
      GFamilyRelationshipEnum.OTHER => EnsFamilyRelationship.OTHER,
      GFamilyRelationshipEnum.gUnknownEnumValue => EnsFamilyRelationship.UNKNOWN,
      GFamilyRelationshipEnum() => EnsFamilyRelationship.UNKNOWN,
    };
  }

  static GFamilyRelationshipEnum toFamilyRelationshipEnum(EnsFamilyRelationship value) {
    return switch (value) {
      EnsFamilyRelationship.FATHER => GFamilyRelationshipEnum.FATHER,
      EnsFamilyRelationship.MOTHER => GFamilyRelationshipEnum.MOTHER,
      EnsFamilyRelationship.GRANDFATHER => GFamilyRelationshipEnum.GRANDFATHER,
      EnsFamilyRelationship.GRANDMOTHER => GFamilyRelationshipEnum.GRANDMOTHER,
      EnsFamilyRelationship.GREAT_GRANDFATHER => GFamilyRelationshipEnum.GREAT_GRANDFATHER,
      EnsFamilyRelationship.GREAT_GRANDMOTHER => GFamilyRelationshipEnum.GREAT_GRANDMOTHER,
      EnsFamilyRelationship.BROTHER => GFamilyRelationshipEnum.BROTHER,
      EnsFamilyRelationship.SISTER => GFamilyRelationshipEnum.SISTER,
      EnsFamilyRelationship.UNCLE => GFamilyRelationshipEnum.UNCLE,
      EnsFamilyRelationship.AUNT => GFamilyRelationshipEnum.AUNT,
      EnsFamilyRelationship.OTHER => GFamilyRelationshipEnum.OTHER,
      EnsFamilyRelationship.UNKNOWN => GFamilyRelationshipEnum.gUnknownEnumValue,
    };
  }
}
