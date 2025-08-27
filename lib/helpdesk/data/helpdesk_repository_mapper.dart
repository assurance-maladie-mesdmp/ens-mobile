/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';

class HelpdeskRepositoryMapper {
  static GTypeDemande toGTypeDemande(SignalementType signalementType) {
    switch (signalementType) {
      case SignalementType.PS:
        return GTypeDemande.SIGNALEMENT_PS;
      case SignalementType.CATALOGUE_DE_SERIVCE:
        return GTypeDemande.SIGNALEMENT_SNR;
      case SignalementType.DOCUMENT:
        return GTypeDemande.SIGNALEMENT_DOC;
    }
  }
}
