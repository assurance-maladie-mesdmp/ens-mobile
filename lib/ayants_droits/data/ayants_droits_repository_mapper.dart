/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';

extension AyantDroitsMapper on GayantDroits {
  EnsProfilRattache toEnsProfilRattache(int index) {
    return EnsProfilRattache(
      patientId: patientId,
      firstName: firstName,
      lastName: lastName,
      profilRattacheType: isAide ? ProfilRattacheType.AIDE : ProfilRattacheType.AYANT_DROIT,
      index: index,
    );
  }
}
