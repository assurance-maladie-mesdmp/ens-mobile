/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';

extension ProfessionnelDeSanteExtension on ProfessionnelDeSante {
  PsProfessionLinkToRole? get typeOfProfession {
    return PsProfessionLinkToRole.fromPsProfession(profession);
  }
}
