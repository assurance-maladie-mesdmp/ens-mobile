/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/link/data/links_repository.dart';

class GuestLinksRepository extends ILinksRepository {
  @override
  Future<RequestResult<String>> removeLinkBetweenEntities(String patientId, String linkId) {
    return Future.value(
      RequestResultSuccess(linkId),
    );
  }
}
