/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/user/data/user_repository.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_model.dart';

class GuestUserRepository extends IUserRepository {
  EnsUser getGuestUser([String? idNat, String? username]) {
    return EnsUser(idNat: idNat ?? '0', username: username ?? 'Gabrielle');
  }
}
