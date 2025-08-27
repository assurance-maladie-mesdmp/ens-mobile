/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/user/redux/states/main_user_data_states.dart';

class AdditionalHomeScreensViewHelper {
  static bool shouldDisplayCgu(MainUserDataState mainUserDataState) {
    if (mainUserDataState.isSuccessWithData) {
      final userData = mainUserDataState.userData!;
      final cguAcceptedAt = userData.cguAcceptedAt;
      final cguLastPublicationAt = userData.cguLastPublicationAt;
      if (cguAcceptedAt == null) {
        return true;
      } else if (cguLastPublicationAt != null) {
        return cguLastPublicationAt.isAfter(cguAcceptedAt);
      }
    }
    return false;
  }

  static bool shouldDisplayNouvellesFonctionalitesBottomSheet(NouvellesFonctionnalitesState newFeaturesState) {
    return newFeaturesState.nouvellesFonctionnalites != null && newFeaturesState.nouvellesFonctionnalites!.isNotEmpty;
  }
}
