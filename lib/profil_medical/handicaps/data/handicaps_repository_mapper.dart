/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_get.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicaps.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';

class HandicapsRepositoryMapper {
  static EnsHandicaps toEnsHandicaps(
    Iterable<Gget_handicapsData_fetchAllDisabilities_disabilities> disabilities,
    String? declarationDate,
  ) {
    final handicaps = disabilities.map(_toEnsHandicap).toList();
    final unconcernedDate = declarationDate != null && handicaps.isEmpty ? DateTime.parse(declarationDate) : null;
    return EnsHandicaps(handicaps, unconcernedDate);
  }

  static EnsHandicap _toEnsHandicap(
    Gget_handicapsData_fetchAllDisabilities_disabilities handicap,
  ) =>
      EnsHandicap(
        id: handicap.id,
        name: handicap.name,
        comment: handicap.comment,
        disabilityRate: handicap.disabilityRate.fromGraphQl(),
        humanHelp: handicap.humanHelp.fromGraphQl(),
        technicalHelp: handicap.technicalHelp,
        types: handicap.types.map((e) => e.fromHandicapTypeEnum()).toList(),
      );
}

extension HumanHelpMapper on EnsHumanHelp {
  GHumanHelpEnum toGraphQl() {
    switch (this) {
      case EnsHumanHelp.YES:
        return GHumanHelpEnum.YES;
      case EnsHumanHelp.NO:
        return GHumanHelpEnum.NO;
      case EnsHumanHelp.NONE:
        return GHumanHelpEnum.NONE;
      case EnsHumanHelp.UNKNOWN:
        return GHumanHelpEnum.gUnknownEnumValue;
    }
  }
}

extension _HumanHelpEnumMapper on GHumanHelpEnum {
  EnsHumanHelp fromGraphQl() {
    switch (this) {
      case GHumanHelpEnum.YES:
        return EnsHumanHelp.YES;
      case GHumanHelpEnum.NO:
        return EnsHumanHelp.NO;
      case GHumanHelpEnum.NONE:
        return EnsHumanHelp.NONE;
      case GHumanHelpEnum.gUnknownEnumValue:
      default:
        return EnsHumanHelp.UNKNOWN;
    }
  }
}

extension DisabilityRateMapper on EnsDisabilityRate? {
  GDisabilityRateEnum? toGraphQl() {
    switch (this) {
      case EnsDisabilityRate.LESS_THAN_50:
        return GDisabilityRateEnum.LESS_THAN_50;
      case EnsDisabilityRate.BETWEEN_50_AND_70:
        return GDisabilityRateEnum.BETWEEN_50_AND_79;
      case EnsDisabilityRate.BIGGER_THAN_80_OR_EQUAL:
        return GDisabilityRateEnum.BIGGER_THAN_80_OR_EQUAL;
      case EnsDisabilityRate.UNKNOWN:
        return GDisabilityRateEnum.UNKNOWN;
      default:
        return null;
    }
  }
}

extension _EnsDisabilityRateMapper on GDisabilityRateEnum? {
  EnsDisabilityRate fromGraphQl() {
    switch (this) {
      case GDisabilityRateEnum.LESS_THAN_50:
        return EnsDisabilityRate.LESS_THAN_50;
      case GDisabilityRateEnum.BETWEEN_50_AND_79:
        return EnsDisabilityRate.BETWEEN_50_AND_70;
      case GDisabilityRateEnum.BIGGER_THAN_80_OR_EQUAL:
        return EnsDisabilityRate.BIGGER_THAN_80_OR_EQUAL;
      default:
        return EnsDisabilityRate.UNKNOWN;
    }
  }
}

extension HandicapTypeMapper on HandicapTypeEnum {
  GDisabilitiesTypesEnum toGraphQl() {
    switch (this) {
      case HandicapTypeEnum.SENSORY:
        return GDisabilitiesTypesEnum.SENSORY;
      case HandicapTypeEnum.PSYCHIC:
        return GDisabilitiesTypesEnum.PSYCHIC;
      case HandicapTypeEnum.ENGINE:
        return GDisabilitiesTypesEnum.ENGINE;
      case HandicapTypeEnum.POLY:
        return GDisabilitiesTypesEnum.POLY_DISABILITY;
      case HandicapTypeEnum.OTHERS:
        return GDisabilitiesTypesEnum.OTHERS;
      case HandicapTypeEnum.UNKNOWN:
        return GDisabilitiesTypesEnum.gUnknownEnumValue;
      case HandicapTypeEnum.NEURO_DEVELOPMENTAL:
        return GDisabilitiesTypesEnum.NEURO_DEVELOPMENTAL_DISORDER;
      case HandicapTypeEnum.DISABLING_DISEASE:
        return GDisabilitiesTypesEnum.DISABLING_DISEASES;
    }
  }
}

extension _DisabilitiesTypeMapper on GDisabilitiesTypesEnum {
  HandicapTypeEnum fromHandicapTypeEnum() {
    switch (this) {
      case GDisabilitiesTypesEnum.SENSORY:
        return HandicapTypeEnum.SENSORY;
      case GDisabilitiesTypesEnum.PSYCHIC:
        return HandicapTypeEnum.PSYCHIC;
      case GDisabilitiesTypesEnum.ENGINE:
        return HandicapTypeEnum.ENGINE;
      case GDisabilitiesTypesEnum.POLY_DISABILITY:
        return HandicapTypeEnum.POLY;
      case GDisabilitiesTypesEnum.OTHERS:
        return HandicapTypeEnum.OTHERS;
      case GDisabilitiesTypesEnum.NEURO_DEVELOPMENTAL_DISORDER:
        return HandicapTypeEnum.NEURO_DEVELOPMENTAL;
      case GDisabilitiesTypesEnum.DISABLING_DISEASES:
        return HandicapTypeEnum.DISABLING_DISEASE;
      case GDisabilitiesTypesEnum.gUnknownEnumValue:
      default:
        return HandicapTypeEnum.UNKNOWN;
    }
  }
}
