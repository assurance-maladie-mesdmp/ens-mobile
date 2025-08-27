/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_gestionnaire.dart';

class PartagerProfilMapper {
  static PartagerProfilGestionnaireStatus? toGestionnaireStatus(GDemandeAccesStatutEnum status) {
    return switch (status) {
      GDemandeAccesStatutEnum.VALIDATED => PartagerProfilGestionnaireStatus.VALIDE,
      GDemandeAccesStatutEnum.WAITING => PartagerProfilGestionnaireStatus.EN_ATTENTE,
      _ => null,
    };
  }
}
