/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';

class EntourageEtVolontesSelector {
  static bool isEmergencyEnabled(EntourageEtVolontesState entourageEtVolontesState) {
    if (entourageEtVolontesState.entourageContactsStatus.isSuccess()) {
      return entourageEtVolontesState.entourageContacts
              .where((contact) => contact.contactType == EntourageContactType.URGENCE)
              .length <
          3;
    }
    return false;
  }

  static bool isTrustedEnabled(EntourageEtVolontesState entourageEtVolontesState) {
    if (entourageEtVolontesState.entourageContactsStatus.isSuccess()) {
      return entourageEtVolontesState.entourageContacts
          .every((contact) => contact.contactType != EntourageContactType.CONFIANCE);
    }
    return false;
  }
}
