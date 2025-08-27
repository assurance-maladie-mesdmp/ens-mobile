/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';

class CategorieMapper {
  static EnsDocumentCategorie fromGraphQl(GCategory gqlCategory) => switch (gqlCategory) {
        GCategory.SYNTHESE => EnsDocumentCategorie.maSante,
        GCategory.ORD_SOIN => EnsDocumentCategorie.ordonnances,
        GCategory.RADIO_SC => EnsDocumentCategorie.radios,
        GCategory.BIOLOGIE => EnsDocumentCategorie.biologie,
        GCategory.CPT_REND => EnsDocumentCategorie.comptesRendus,
        GCategory.DEPISTAG => EnsDocumentCategorie.prevention,
        GCategory.CERT_MED => EnsDocumentCategorie.certificats,
        GCategory.SYNTH_PML => EnsDocumentCategorie.syntheseMedicale,
        GCategory.DOC_ADM => EnsDocumentCategorie.pieceAdministrative,
        GCategory.AUTR_DOC => EnsDocumentCategorie.autres,
        GCategory.DIR_ANT => EnsDocumentCategorie.directivesAnticipees,
        GCategory.QUEST_SANTE => EnsDocumentCategorie.questionnaireSante,
        GCategory.CAR_VAC => EnsDocumentCategorie.unknown,
        GCategory.VDP => EnsDocumentCategorie.unknown,
        GCategory.REMB => EnsDocumentCategorie.unknown,
        GCategory.gUnknownEnumValue || _ => EnsDocumentCategorie.unknown,
      };

  static GCategory toGraphQl(EnsDocumentCategorie categorie) {
    switch (categorie) {
      case EnsDocumentCategorie.maSante:
        return GCategory.SYNTHESE;
      case EnsDocumentCategorie.ordonnances:
        return GCategory.ORD_SOIN;
      case EnsDocumentCategorie.radios:
        return GCategory.RADIO_SC;
      case EnsDocumentCategorie.biologie:
        return GCategory.BIOLOGIE;
      case EnsDocumentCategorie.comptesRendus:
        return GCategory.CPT_REND;
      case EnsDocumentCategorie.prevention:
        return GCategory.DEPISTAG;
      case EnsDocumentCategorie.certificats:
        return GCategory.CERT_MED;
      case EnsDocumentCategorie.syntheseMedicale:
        return GCategory.SYNTH_PML;
      case EnsDocumentCategorie.pieceAdministrative:
        return GCategory.DOC_ADM;
      case EnsDocumentCategorie.directivesAnticipees:
        return GCategory.DIR_ANT;
      case EnsDocumentCategorie.questionnaireSante:
        return GCategory.QUEST_SANTE;
      case EnsDocumentCategorie.autres:
        return GCategory.AUTR_DOC;
      case EnsDocumentCategorie.unknown:
        return GCategory.gUnknownEnumValue;
    }
  }
}
