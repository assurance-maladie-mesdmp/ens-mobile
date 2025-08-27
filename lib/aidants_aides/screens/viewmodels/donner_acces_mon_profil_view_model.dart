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

class DonnerAccesMonProfilViewModel extends Equatable {
  final AllPurposesStatus fetchDelegationsStatus;
  final AllPurposesStatus sendInvitationStatus;
  final AllPurposesStatus deleteDelegationStatus;
  final List<DelegationEnCoursDisplayModel> delegationsEnCours;
  final List<DelegationEnAttenteDisplayModel> delegationsEnAttente;
  final void Function() fetchDelegations;
  final void Function(String delegationId) onDeleteDelegation;

  bool get isNotEmpty {
    return fetchDelegationsStatus.isSuccess() && (delegationsEnCours.isNotEmpty || delegationsEnAttente.isNotEmpty);
  }

  const DonnerAccesMonProfilViewModel._({
    required this.fetchDelegationsStatus,
    required this.sendInvitationStatus,
    required this.deleteDelegationStatus,
    required this.delegationsEnCours,
    required this.delegationsEnAttente,
    required this.fetchDelegations,
    required this.onDeleteDelegation,
  });

  factory DonnerAccesMonProfilViewModel.from(Store<EnsState> store) {
    final delegationsPourAideState = store.state.aideState.delegationsState;

    return DonnerAccesMonProfilViewModel._(
      fetchDelegationsStatus: delegationsPourAideState.statut,
      sendInvitationStatus: store.state.aideState.sendInvitationState.sendInvitationToPotentielAidantStatus,
      deleteDelegationStatus: delegationsPourAideState.deleteDelegationState.status,
      delegationsEnCours: DelegationItemViewModelModelHelper.buildDelegationEnCoursDisplayModels(
        delegationsEnCours: delegationsPourAideState.delegationsEnCours,
        deleteDelegationState: delegationsPourAideState.deleteDelegationState,
      ),
      delegationsEnAttente: DelegationItemViewModelModelHelper.buildPendingDelegationEnAttenteDisplayModels(
        delegationsPourAideState.delegationsEnAttente,
      ),
      fetchDelegations: () => store.dispatch(FetchDelegationsPourAideAction()),
      onDeleteDelegation: (delegationId) => store.dispatch(
        DeleteAccesDeAidantAction(delegationId: delegationId),
      ),
    );
  }

  @override
  List<Object?> get props => [
        fetchDelegationsStatus,
        sendInvitationStatus,
        delegationsEnCours,
        delegationsEnAttente,
        deleteDelegationStatus,
      ];
}
