/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/delegation_item_display_model.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class DelegationItemViewModelModelHelper {
  static List<DelegationEnAttenteDisplayModel> buildPendingDelegationEnAttenteDisplayModels(
    List<DelegationEnAttente> delegationsEnAttente,
  ) {
    if (delegationsEnAttente.isNotEmpty) {
      delegationsEnAttente.sort((a, b) => -a.creationDate.compareTo(b.creationDate));
    }
    return delegationsEnAttente.map(
      (delegation) {
        return DelegationEnAttenteDisplayModel(
          fullName: delegation.acteur.fullName,
          expirationDate: EnsDateUtils.formatddmmyyyy(delegation.expirationDate),
          birthDate: EnsDateUtils.formatddmmyyyy(delegation.acteur.birthDate),
        );
      },
    ).toList();
  }

  static List<DelegationEnCoursDisplayModel> buildDelegationEnCoursDisplayModels({
    required List<DelegationEnCours> delegationsEnCours,
    required DeleteDelegationState deleteDelegationState,
  }) {
    if (delegationsEnCours.isNotEmpty) {
      delegationsEnCours.sort((a, b) => -a.startDate.compareTo(b.startDate));
    }
    return delegationsEnCours.map(
      (delegation) {
        final acteur = delegation.acteur;
        return DelegationEnCoursDisplayModel(
          id: delegation.id,
          patientId: acteur.id,
          fullName: acteur.fullName,
          firstName: acteur.mainFirstName,
          endDate: EnsDateUtils.formatddmmyyyy(delegation.endDate),
          startDate: EnsDateUtils.formatddmmyyyy(delegation.startDate),
          birthDate: EnsDateUtils.formatddmmyyyy(acteur.birthDate),
          deletionStatus: _deletionStatus(deleteDelegationState, delegation),
        );
      },
    ).toList();
  }

  static DeletionStatus _deletionStatus(DeleteDelegationState state, DelegationEnCours currentDelegation) {
    if (state.status.isLoading()) {
      if (state.idDelegationToDelete == currentDelegation.id) {
        return DeletionStatus.LOADING;
      }
      return DeletionStatus.DISABLED;
    }
    return DeletionStatus.ENABLED;
  }
}
