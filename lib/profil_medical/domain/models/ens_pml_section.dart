/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';

enum EnsPmlSection {
  MALADIES,
  TRAITEMENTS,
  HOSPITALISATIONS,
  ANTECEDENTS_FAMILIAUX,
  ALLERGIES,
  VACCINATIONS,
  HABITUDES_DE_VIE,
  MESURES,
  DIRECTIVES_ANTICIPEES,
  HISTORIQUE_SOINS,
  PIECES_ADMINISTRATIVES,
}

extension EnsPmlSectionExtension on EnsPmlSection {
  GSectionToDownload get toSectionToDownload {
    switch (this) {
      case EnsPmlSection.ALLERGIES:
        return GSectionToDownload.ALLERGIES;
      case EnsPmlSection.MALADIES:
        return GSectionToDownload.DISEASES;
      case EnsPmlSection.TRAITEMENTS:
        return GSectionToDownload.TREATMENTS;
      case EnsPmlSection.HOSPITALISATIONS:
        return GSectionToDownload.HOSPITALIZATIONS;
      case EnsPmlSection.ANTECEDENTS_FAMILIAUX:
        return GSectionToDownload.FAMILY_HISTORY;
      case EnsPmlSection.VACCINATIONS:
        return GSectionToDownload.VACCINES;
      case EnsPmlSection.HABITUDES_DE_VIE:
        return GSectionToDownload.LIFESTYLES;
      case EnsPmlSection.MESURES:
        return GSectionToDownload.MEASURES;
      case EnsPmlSection.DIRECTIVES_ANTICIPEES:
        return GSectionToDownload.WISHES;
      case EnsPmlSection.PIECES_ADMINISTRATIVES:
        return GSectionToDownload.ADMINISTRATIVE_DOCUMENTS;
      default:
        return GSectionToDownload.gUnknownEnumValue;
    }
  }
}
