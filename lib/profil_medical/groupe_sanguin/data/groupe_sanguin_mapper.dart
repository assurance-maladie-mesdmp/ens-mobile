/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_get_groupe_sanguin.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

extension GroupeSanguinMapper on GroupeSanguin {
  GBloodGroupEnum toGBloodGroupEnum() {
    switch (this) {
      case GroupeSanguin.A_PLUS:
        return GBloodGroupEnum.APOS;
      case GroupeSanguin.A_MOINS:
        return GBloodGroupEnum.ANEG;
      case GroupeSanguin.AB_PLUS:
        return GBloodGroupEnum.ABPOS;
      case GroupeSanguin.AB_MOINS:
        return GBloodGroupEnum.ABNEG;
      case GroupeSanguin.B_PLUS:
        return GBloodGroupEnum.BPOS;
      case GroupeSanguin.B_MOINS:
        return GBloodGroupEnum.BNEG;
      case GroupeSanguin.O_PLUS:
        return GBloodGroupEnum.OPOS;
      case GroupeSanguin.O_MOINS:
        return GBloodGroupEnum.ONEG;
    }
  }
}

extension GGroupeSanguinMapper on GBloodGroupEnum {
  GroupeSanguin toGroupeSanguinEnum() {
    return switch (this) {
      GBloodGroupEnum.APOS => GroupeSanguin.A_PLUS,
      GBloodGroupEnum.ANEG => GroupeSanguin.A_MOINS,
      GBloodGroupEnum.ABPOS => GroupeSanguin.AB_PLUS,
      GBloodGroupEnum.ABNEG => GroupeSanguin.AB_MOINS,
      GBloodGroupEnum.BPOS => GroupeSanguin.B_PLUS,
      GBloodGroupEnum.BNEG => GroupeSanguin.B_MOINS,
      GBloodGroupEnum.OPOS => GroupeSanguin.O_PLUS,
      GBloodGroupEnum.ONEG => GroupeSanguin.O_MOINS,
      _ => throw Exception('Unknown blood group: $this'),
    };
  }
}

extension FullNameMapper on Gget_groupe_sanguinData_fetchBloodGroup_author {
  String toFullName() {
    return '${firstName.split(' ').first.capitalizeName()} ${lastName.capitalizeName()}';
  }
}
