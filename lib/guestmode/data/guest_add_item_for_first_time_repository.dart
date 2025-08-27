/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/data/add_item_for_first_time_repository.dart';

class GuestAddItemForFirstTimeRepository extends IAddItemForFirstTimeRepository {
  @override
  bool isAddItemForFirstTime(EnsPmlSection pmlSection) {
    return true;
  }

  @override
  Future<void> setItemAddedForFirstTime(EnsPmlSection pmlSection) {
    return Future.value();
  }
}
