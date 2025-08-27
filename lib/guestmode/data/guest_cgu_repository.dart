/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/user/cgu/data/cgu_repository.dart';

class GuestCguRepository implements ICguRepository {
  @override
  Future<RequestResult<void>> acceptCgu({required String patientId}) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess(null);
  }
}
