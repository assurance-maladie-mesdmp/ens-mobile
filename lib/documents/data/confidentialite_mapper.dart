/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';

class ConfidentialiteMapper {
  static KindOfConfidentiality fromGraphQl(GConfidentiality gqlConfidentiality) => switch (gqlConfidentiality) {
        GConfidentiality.MASQUE_PS => KindOfConfidentiality.PATIENT_ONLY,
        GConfidentiality.N => KindOfConfidentiality.PATIENT_AND_PS,
        GConfidentiality.INVISIBLE_REPRESENTANTS_LEGAUX => KindOfConfidentiality.INVISIBLE_REPRESENTANTS_LEGAUX,
        GConfidentiality.gUnknownEnumValue || _ => KindOfConfidentiality.UNKNOWN,
      };

  static GConfidentiality _toGraphQl(KindOfConfidentiality confidentialite) => switch (confidentialite) {
        KindOfConfidentiality.PATIENT_AND_PS => GConfidentiality.N,
        KindOfConfidentiality.PATIENT_ONLY => GConfidentiality.MASQUE_PS,
        KindOfConfidentiality.INVISIBLE_REPRESENTANTS_LEGAUX => GConfidentiality.INVISIBLE_REPRESENTANTS_LEGAUX,
        KindOfConfidentiality.UNKNOWN || _ => GConfidentiality.gUnknownEnumValue,
      };

  static ListBuilder<GConfidentiality> buildConfidentialities(List<KindOfConfidentiality> confidentialities) {
    // Les documents doivent inclure la confidentialité PATIENT_AND_PS
    final List<KindOfConfidentiality> newConfidentialities = List<KindOfConfidentiality>.from(confidentialities);
    if (!confidentialities.contains(KindOfConfidentiality.PATIENT_AND_PS)) {
      newConfidentialities.insert(0, KindOfConfidentiality.PATIENT_AND_PS);
    }
    return ListBuilder(newConfidentialities.map(ConfidentialiteMapper._toGraphQl));
  }
}
