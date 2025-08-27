/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ayants_droits_redux.dart';

class AyantsDroitsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchProfilsRattachesAndAdPendingInvitationsAction>(
          AyantsDroitsReducers._onFetchProfilsRattachesAndAdPendingInvitationsAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchProfilsRattachesSuccessAction>(
          AyantsDroitsReducers._onProcessFetchProfilsRattachesSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchProfilsRattachesErrorAction>(
          AyantsDroitsReducers._onProcessFetchProfilsRattachesErrorAction,
        ).call,
        TypedReducer<EnsState, FetchOuvrantDroitInformationAction>(
          AyantsDroitsReducers._onFetchUserDomainInformationAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAyantsDroitsPendingInvitationsSuccessAction>(
          AyantsDroitsReducers._onProcessFetchAyantsDroitsPendingInvitationsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAyantsDroitsPendingInvitationsErrorAction>(
          AyantsDroitsReducers._onProcessFetchAyantsDroitsPendingInvitationsErrorAction,
        ).call,
        TypedReducer<EnsState, SendAyantDroitInvitationConfirmationAction>(
          AyantsDroitsReducers._onSendAyantDroitInvitationConfirmationAction,
        ).call,
        TypedReducer<EnsState, _ProcessSendAyantDroitInvitationConfirmationSuccessAction>(
          AyantsDroitsReducers._onProcessSendAyantDroitInvitationConfirmationSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSendAyantDroitInvitationConfirmationErrorAction>(
          AyantsDroitsReducers._onProcessSendAyantDroitInvitationConfirmationErrorAction,
        ).call,
      ];

  static EnsState _onFetchProfilsRattachesAndAdPendingInvitationsAction(
    EnsState state,
    FetchProfilsRattachesAndAdPendingInvitationsAction action,
  ) {
    return state.clone(
      profilsRattachesState: _getProfilsRattachesState(state),
      ayantsDroitsPendingInvitationsState:
          state.ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroitsStatus.isNotSuccess()
              ? const AyantsDroitsPendingInvitationsState(
                  pendingInvitationsFromAyantsDroitsStatus: AllPurposesStatus.LOADING,
                )
              : state.ayantsDroitsPendingInvitationsState,
    );
  }

  static EnsState _onProcessFetchProfilsRattachesSuccessAction(
    EnsState state,
    ProcessFetchProfilsRattachesSuccessAction action,
  ) {
    return state.clone(
      profilsRattachesState: ProfilsRattachesState(
        status: AllPurposesStatus.SUCCESS,
        profilsRattaches: action.profilsRattaches,
      ),
    );
  }

  static EnsState _onProcessFetchProfilsRattachesErrorAction(
    EnsState state,
    ProcessFetchProfilsRattachesErrorAction action,
  ) {
    return state.clone(
      profilsRattachesState: const ProfilsRattachesState(status: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onFetchUserDomainInformationAction(EnsState state, FetchOuvrantDroitInformationAction action) {
    return state.clone(
      profilsRattachesState: _getProfilsRattachesState(state),
    );
  }

  static ProfilsRattachesState _getProfilsRattachesState(EnsState state) {
    return state.profilsRattachesState.status.isNotSuccess()
        ? state.profilsRattachesState.clone(status: AllPurposesStatus.LOADING)
        : state.profilsRattachesState;
  }

  static EnsState _onProcessFetchAyantsDroitsPendingInvitationsSuccessAction(
    EnsState currentState,
    ProcessFetchAyantsDroitsPendingInvitationsSuccessAction action,
  ) {
    return currentState.clone(
      ayantsDroitsPendingInvitationsState: currentState.ayantsDroitsPendingInvitationsState.clone(
        pendingInvitationsFromAyantsDroitsStatus: AllPurposesStatus.SUCCESS,
        pendingInvitationsFromAyantsDroits: action.invitations,
      ),
    );
  }

  static EnsState _onProcessFetchAyantsDroitsPendingInvitationsErrorAction(
    EnsState currentState,
    ProcessFetchAyantsDroitsPendingInvitationsErrorAction action,
  ) {
    return currentState.clone(
      ayantsDroitsPendingInvitationsState: currentState.ayantsDroitsPendingInvitationsState.clone(
        pendingInvitationsFromAyantsDroitsStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onSendAyantDroitInvitationConfirmationAction(
    EnsState state,
    SendAyantDroitInvitationConfirmationAction action,
  ) {
    return state.clone(
      ayantsDroitsPendingInvitationsState: state.ayantsDroitsPendingInvitationsState.clone(
        confirmationRequestStatus: AllPurposesStatus.LOADING,
        confirmationPartageProfilStatut: action.confirmationPartageStatut,
      ),
    );
  }

  static EnsState _onProcessSendAyantDroitInvitationConfirmationSuccessAction(
    EnsState state,
    _ProcessSendAyantDroitInvitationConfirmationSuccessAction action,
  ) {
    final ayantDroitPartageProfil = action.invitationConfirmedProfile;
    final newPendingInvitations = List<AyantsDroitsPendingInvitation>.from(
      state.ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits,
    )..removeWhere((pendingInvitation) => action.invitationConfirmedProfile == pendingInvitation.adPartageProfile);

    return state.clone(
      ayantsDroitsPendingInvitationsState: state.ayantsDroitsPendingInvitationsState.clone(
        confirmationRequestStatus: AllPurposesStatus.SUCCESS,
        invitationConfirmedProfile: ayantDroitPartageProfil,
        pendingInvitationsFromAyantsDroits: newPendingInvitations,
      ),
      profilsRattachesState: action.statutPartage == ConfirmationPartageProfilStatut.ACCEPTED
          ? state.profilsRattachesState.clone(
              profilsRattaches: _buildNewProfilsRattaches(
                oldProfilsRattaches: state.profilsRattachesState.profilsRattaches,
                ayantDroitProfilToAdd: ayantDroitPartageProfil,
              ),
            )
          : state.profilsRattachesState,
    );
  }

  static List<EnsProfilRattache> _buildNewProfilsRattaches({
    required List<EnsProfilRattache> oldProfilsRattaches,
    required AyantDroitsPartageProfil ayantDroitProfilToAdd,
  }) {
    final newProfilsRattaches = List<EnsProfilRattache>.from(oldProfilsRattaches);
    newProfilsRattaches.add(
      EnsProfilRattache(
        patientId: ayantDroitProfilToAdd.patientId,
        firstName: ayantDroitProfilToAdd.firstName,
        lastName: ayantDroitProfilToAdd.lastName,
        profilRattacheType: ProfilRattacheType.AYANT_DROIT,
        index: oldProfilsRattaches.length,
      ),
    );
    newProfilsRattaches
        .sort((profile1, profile2) => profile1.profilRattacheType.compareTo(profile2.profilRattacheType));
    return newProfilsRattaches.mapIndexed((index, profile) => profile.clone(index: index)).toList();
  }

  static EnsState _onProcessSendAyantDroitInvitationConfirmationErrorAction(
    EnsState state,
    _ProcessSendAyantDroitInvitationConfirmationErrorAction action,
  ) {
    return state.clone(
      ayantsDroitsPendingInvitationsState: state.ayantsDroitsPendingInvitationsState.clone(
        confirmationRequestStatus: AllPurposesStatus.ERROR,
      ),
    );
  }
}
