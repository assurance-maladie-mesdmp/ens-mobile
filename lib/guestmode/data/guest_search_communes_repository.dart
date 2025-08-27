/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/data/search_communes_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';

class GuestSearchCommunesRepository implements ISearchCommunesRepository {
  @override
  Future<RequestResult<List<Commune>>> searchCommunes({required String input}) async {
    return Future.delayed(const Duration(seconds: 2), () {
      return RequestResultSuccess([
        Commune(nom: 'Paris', codeDepartement: '75', codesPostaux: CodePostaux(['75015']), codeCommune: 'PA'),
        Commune(nom: 'Lille', codeDepartement: '59', codesPostaux: CodePostaux(['59100']), codeCommune: 'LI'),
        Commune(nom: 'Marseille', codeDepartement: '', codesPostaux: CodePostaux(['00000']), codeCommune: 'MAR'),
      ]);
    });
  }
}
