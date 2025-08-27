/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AideReducers {
  static List<Reducer<EnsState>> create() {
    return [
      TypedReducer<EnsState, FetchPotentielAidantAction>(
        AideReducers._onFetchPotentielAidantAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchPotentielAidantSuccessAction>(
        AideReducers._onProcessFetchPotentielAidantSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchPotentielAidantErrorAction>(
        AideReducers._onProcessFetchPotentielAidantErrorAction,
      ).call,
      TypedReducer<EnsState, SendInvitationToPotentielAidantAction>(
        AideReducers._onSendInvitationToPotentielAidantAction,
      ).call,
      TypedReducer<EnsState, _ProcessSendInvitationToPotentielAidantSuccessAction>(
        AideReducers._onProcessSendInvitationToPotentielAidantSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessSendInvitationToPotentielAidantErrorAction>(
        AideReducers._onProcessSendInvitationToPotentielAidantErrorAction,
      ).call,
      TypedReducer<EnsState, FetchDelegationsPourAideAction>(
        AideReducers._onFetchDelegationsPourAideAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchDelegationsPourAideSuccessAction>(
        AideReducers._onProcessFetchDelegationsPourAideSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchDelegationsPourAideErrorAction>(
        AideReducers._onProcessFetchDelegationsPourAideErrorAction,
      ).call,
      TypedReducer<EnsState, DeleteAccesDeAidantAction>(AideReducers._onDeleteAccesDeAidantAction).call,
      TypedReducer<EnsState, _ProcessDeleteAccesDeAidantSuccessAction>(
        AideReducers._onProcessDeleteAccesDeAidantSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessDeleteAccesDeAidantErrorAction>(
        AideReducers._onProcessDeleteAccesDeAidantErrorAction,
      ).call,
      TypedReducer<EnsState, SaveNumeroSecuFromScanAidantAction>(
        AideReducers._onSaveNumeroSecuFromScanAidantAction,
      ).call,
      TypedReducer<EnsState, ResetNumeroSecuFromScanAidantAction>(
        AideReducers._onResetNumeroSecuFromScanAidantAction,
      ).call,
    ];
  }

  static EnsState _onFetchPotentielAidantAction(
    EnsState state,
    FetchPotentielAidantAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          rechercheAidantFormStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchPotentielAidantSuccessAction(
    EnsState state,
    _ProcessFetchPotentielAidantSuccessAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          rechercheAidantFormStatus: AllPurposesStatus.SUCCESS,
          potentielAidantOptional: Optional.of(action.potentielAidant),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchPotentielAidantErrorAction(
    EnsState state,
    _ProcessFetchPotentielAidantErrorAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          rechercheAidantFormStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onSendInvitationToPotentielAidantAction(
    EnsState state,
    SendInvitationToPotentielAidantAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          sendInvitationToPotentielAidantStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessSendInvitationToPotentielAidantSuccessAction(
    EnsState state,
    _ProcessSendInvitationToPotentielAidantSuccessAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          sendInvitationToPotentielAidantStatus: AllPurposesStatus.SUCCESS,
        ),
      ),
    );
  }

  static EnsState _onProcessSendInvitationToPotentielAidantErrorAction(
    EnsState state,
    _ProcessSendInvitationToPotentielAidantErrorAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          sendInvitationToPotentielAidantStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchDelegationsPourAideAction(
    EnsState state,
    FetchDelegationsPourAideAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          statut: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDelegationsPourAideSuccessAction(
    EnsState state,
    _ProcessFetchDelegationsPourAideSuccessAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          statut: AllPurposesStatus.SUCCESS,
          delegationsEnCours: action.delegationsEnCours,
          delegationsEnAttente: action.delegationsEnAttente,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDelegationsPourAideErrorAction(
    EnsState state,
    _ProcessFetchDelegationsPourAideErrorAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          statut: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onDeleteAccesDeAidantAction(
    EnsState state,
    DeleteAccesDeAidantAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          deleteDelegationState: state.aideState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.LOADING,
            idDelegationToDelete: Optional.of(action.delegationId),
            attestationDocumentIdOptional: Optional.ofNullable(null),
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessDeleteAccesDeAidantSuccessAction(
    EnsState state,
    _ProcessDeleteAccesDeAidantSuccessAction action,
  ) {
    final delegationsEnCours = state.aideState.delegationsState.delegationsEnCours;
    final delegationToRemove = delegationsEnCours.firstWhereOrNull(
      (delegation) => delegation.id == action.delegationId,
    );
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          deleteDelegationState: state.aideState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.SUCCESS,
            idDelegationToDelete: Optional.ofNullable(null),
            acteurFirstName: delegationToRemove?.acteur.firstName,
            attestationDocumentIdOptional: Optional.ofNullable(action.attestationDocumentId),
          ),
          delegationsEnCours: List<DelegationEnCours>.from(delegationsEnCours)..remove(delegationToRemove),
        ),
      ),
    );
  }

  static EnsState _onProcessDeleteAccesDeAidantErrorAction(
    EnsState state,
    _ProcessDeleteAccesDeAidantErrorAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        delegationsState: state.aideState.delegationsState.clone(
          deleteDelegationState: state.aideState.delegationsState.deleteDelegationState.clone(
            status: AllPurposesStatus.ERROR,
            idDelegationToDelete: Optional.ofNullable(null),
          ),
        ),
      ),
    );
  }

  static EnsState _onSaveNumeroSecuFromScanAidantAction(
    EnsState state,
    SaveNumeroSecuFromScanAidantAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          numeroSecuFromScanOptional: Optional.of(action.numeroSecu),
          isNumeroSecuFromScan: true,
        ),
      ),
    );
  }

  static EnsState _onResetNumeroSecuFromScanAidantAction(
    EnsState state,
    ResetNumeroSecuFromScanAidantAction action,
  ) {
    return state.clone(
      aideState: state.aideState.clone(
        sendInvitationState: state.aideState.sendInvitationState.clone(
          numeroSecuFromScanOptional: Optional.ofNullable(null),
          isNumeroSecuFromScan: false,
        ),
      ),
    );
  }
}
