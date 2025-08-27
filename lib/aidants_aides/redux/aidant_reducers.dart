/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AidantReducers {
  static List<Reducer<EnsState>> create() {
    return [
      TypedReducer<EnsState, FetchInvitationsFromAidesAction>(
        AidantReducers._onFetchInvitationsFromAidesAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchInvitationsFromAidesSuccessAction>(
        AidantReducers._onProcessFetchInvitationsFromAidesSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchInvitationsFromAidesErrorAction>(
        AidantReducers._onProcessFetchInvitationsFromAidesErrorAction,
      ).call,
      TypedReducer<EnsState, FetchDelegationsPourAidantAction>(
        AidantReducers._onFetchDelegationsPourAidantAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchDelegationsPourAidantSuccessAction>(
        AidantReducers._onProcessFetchDelegationsPourAidantSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchDelegationsPourAidantErrorAction>(
        AidantReducers._onProcessFetchDelegationsPourAidantErrorAction,
      ).call,
      TypedReducer<EnsState, AcceptInvitationFromAideAction>(
        AidantReducers._onAcceptInvitationFromAideAction,
      ).call,
      TypedReducer<EnsState, _ProcessAcceptInvitationFromAideSuccessAction>(
        AidantReducers._onProcessAcceptInvitationFromAideSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessAcceptInvitationFromAideErrorAction>(
        AidantReducers._onProcessAcceptInvitationFromAideErrorAction,
      ).call,
      TypedReducer<EnsState, RefuseInvitationFromAideAction>(
        AidantReducers._onRefuseInvitationFromAideAction,
      ).call,
      TypedReducer<EnsState, _ProcessRefuseInvitationFromAideSuccessAction>(
        AidantReducers._onProcessRefuseInvitationFromAideSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessRefuseInvitationFromAideErrorAction>(
        AidantReducers._onProcessRefuseInvitationFromAideErrorAction,
      ).call,
      TypedReducer<EnsState, DeleteAccesAuProfilAideAction>(AidantReducers._onDeleteAccesAuProfilAideAction).call,
      TypedReducer<EnsState, _ProcessDeleteAccesAuProfilAideSuccessAction>(
        AidantReducers._onProcessDeleteAccesAuProfilAideSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessDeleteAccesAuProfilAideErrorAction>(
        AidantReducers._onProcessDeleteAccesAuProfilAideErrorAction,
      ).call,
    ];
  }

  static EnsState _onFetchInvitationsFromAidesAction(
    EnsState state,
    FetchInvitationsFromAidesAction action,
  ) {
    final aidantState = state.aidantState;
    final invitationsFromAidesState = aidantState.invitationsFromAidesState;
    return state.clone(
      aidantState: aidantState.clone(
        invitationsFromAidesState: invitationsFromAidesState.fetchInvitationsFromAidesStatus.isNotSuccess()
            ? invitationsFromAidesState.clone(fetchInvitationsFromAidesStatus: AllPurposesStatus.LOADING)
            : invitationsFromAidesState,
      ),
    );
  }

  static EnsState _onProcessFetchInvitationsFromAidesSuccessAction(
    EnsState state,
    _ProcessFetchInvitationsFromAidesSuccessAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          pendingInvitationsFromAides: action.invitations,
          fetchInvitationsFromAidesStatus: AllPurposesStatus.SUCCESS,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchInvitationsFromAidesErrorAction(
    EnsState state,
    _ProcessFetchInvitationsFromAidesErrorAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          fetchInvitationsFromAidesStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchDelegationsPourAidantAction(
    EnsState state,
    FetchDelegationsPourAidantAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          statut: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDelegationsPourAidantSuccessAction(
    EnsState state,
    _ProcessFetchDelegationsPourAidantSuccessAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          statut: AllPurposesStatus.SUCCESS,
          delegationsEnCours: action.delegationsEnCours,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDelegationsPourAidantErrorAction(
    EnsState state,
    _ProcessFetchDelegationsPourAidantErrorAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          statut: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onAcceptInvitationFromAideAction(
    EnsState state,
    AcceptInvitationFromAideAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.LOADING,
            attestationPdfOptional: Optional.ofNullable(null),
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessAcceptInvitationFromAideSuccessAction(
    EnsState state,
    _ProcessAcceptInvitationFromAideSuccessAction action,
  ) {
    final newInvitationsFromAides = List<InvitationFromAide>.from(
      state.aidantState.invitationsFromAidesState.pendingInvitationsFromAides,
    )..removeWhere((invitationFromAide) => invitationFromAide.invitationId == action.invitationFromAide.invitationId);

    final profilsRattaches = state.profilsRattachesState.profilsRattaches;

    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          pendingInvitationsFromAides: newInvitationsFromAides,
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.ACCEPT_SUCCESS,
            invitationFromAideOptional: Optional.of(action.invitationFromAide),
            attestationPdfOptional: Optional.ofNullable(action.attestationPdf),
          ),
        ),
      ),
      profilsRattachesState: state.profilsRattachesState.clone(
        profilsRattaches: List<EnsProfilRattache>.from(profilsRattaches)
          ..add(
            EnsProfilRattache(
              patientId: action.invitationFromAide.aide.id,
              firstName: action.invitationFromAide.aide.firstName,
              lastName: action.invitationFromAide.aide.lastName,
              profilRattacheType: ProfilRattacheType.AIDE,
              index: profilsRattaches.length,
            ),
          ),
      ),
    );
  }

  static EnsState _onProcessAcceptInvitationFromAideErrorAction(
    EnsState state,
    _ProcessAcceptInvitationFromAideErrorAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.ERROR,
          ),
        ),
      ),
    );
  }

  static EnsState _onRefuseInvitationFromAideAction(
    EnsState state,
    RefuseInvitationFromAideAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.LOADING,
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessRefuseInvitationFromAideSuccessAction(
    EnsState state,
    _ProcessRefuseInvitationFromAideSuccessAction action,
  ) {
    final newInvitationsFromAides = List<InvitationFromAide>.from(
      state.aidantState.invitationsFromAidesState.pendingInvitationsFromAides,
    )..removeWhere((invitationFromAide) => invitationFromAide.invitationId == action.invitationId);

    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          pendingInvitationsFromAides: newInvitationsFromAides,
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.REFUSE_SUCCESS,
            invitationFromAideOptional: Optional.ofNullable(null),
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessRefuseInvitationFromAideErrorAction(
    EnsState state,
    _ProcessRefuseInvitationFromAideErrorAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        invitationsFromAidesState: state.aidantState.invitationsFromAidesState.clone(
          acceptOrRefuseInvitationState:
              state.aidantState.invitationsFromAidesState.acceptOrRefuseInvitationState.clone(
            acceptOrRefuseStatus: AcceptOrRefuseInvitationStatus.ERROR,
          ),
        ),
      ),
    );
  }

  static EnsState _onDeleteAccesAuProfilAideAction(
    EnsState state,
    DeleteAccesAuProfilAideAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          deleteDelegationState: state.aidantState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.LOADING,
            idDelegationToDelete: Optional.of(action.delegationId),
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessDeleteAccesAuProfilAideSuccessAction(
    EnsState state,
    _ProcessDeleteAccesAuProfilAideSuccessAction action,
  ) {
    final newProfilsRattaches = List<EnsProfilRattache>.from(state.profilsRattachesState.profilsRattaches)
      ..removeWhere((profilRattache) => profilRattache.patientId == action.patientId);
    final delegationsEnCours = state.aidantState.delegationsState.delegationsEnCours;

    final delegationToRemove =
        delegationsEnCours.firstWhereOrNull((delegation) => delegation.id == action.delegationId);

    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          deleteDelegationState: state.aidantState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.SUCCESS,
            idDelegationToDelete: Optional.ofNullable(null),
            attestationPdfOptional: Optional.ofNullable(action.attestation),
            acteurFirstName: delegationToRemove?.acteur.firstName,
          ),
          delegationsEnCours: List<DelegationEnCours>.from(delegationsEnCours)..remove(delegationToRemove),
        ),
      ),
      profilsRattachesState: state.profilsRattachesState.clone(profilsRattaches: newProfilsRattaches),
    );
  }

  static EnsState _onProcessDeleteAccesAuProfilAideErrorAction(
    EnsState state,
    _ProcessDeleteAccesAuProfilAideErrorAction action,
  ) {
    return state.clone(
      aidantState: state.aidantState.clone(
        delegationsState: state.aidantState.delegationsState.clone(
          deleteDelegationState: state.aidantState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.ERROR,
            idDelegationToDelete: Optional.ofNullable(null),
          ),
        ),
      ),
    );
  }
}
