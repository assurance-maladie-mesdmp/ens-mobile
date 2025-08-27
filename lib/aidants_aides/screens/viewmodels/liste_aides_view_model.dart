/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/delegation_item_display_model.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/delegation_item_view_model_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ListeAidesViewModel extends Equatable {
  final List<DelegationEnCoursDisplayModel> displayModels;
  final void Function(String delagationId, String patientId) onDeleteDelegation;
  final AllPurposesStatus deleteDelegationStatus;

  const ListeAidesViewModel._({
    required this.displayModels,
    required this.onDeleteDelegation,
    required this.deleteDelegationStatus,
  });

  factory ListeAidesViewModel.from(Store<EnsState> store) {
    final delegationsPourAidantState = store.state.aidantState.delegationsState;

    return ListeAidesViewModel._(
      displayModels: DelegationItemViewModelModelHelper.buildDelegationEnCoursDisplayModels(
        delegationsEnCours: delegationsPourAidantState.delegationsEnCours,
        deleteDelegationState: delegationsPourAidantState.deleteDelegationState,
      ),
      onDeleteDelegation: (delegationId, patientId) => store.dispatch(
        DeleteAccesAuProfilAideAction(delegationId: delegationId, patientId: patientId),
      ),
      deleteDelegationStatus: delegationsPourAidantState.deleteDelegationState.status,
    );
  }

  @override
  List<Object?> get props => [displayModels, deleteDelegationStatus];
}
