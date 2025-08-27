/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'entourage_et_volontes_redux.dart';

class EntourageEtVolonteReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchEntourageEtVolontesAction>(
          EntourageEtVolonteReducers._onFetchEntourageEtVolontesAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchEntourageEtVolontesSuccessAction>(
          EntourageEtVolonteReducers._onProcessFetchEntourageEtVolontesSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchEntourageEtVolontesErrorAction>(
          EntourageEtVolonteReducers._onProcessFetchEntourageEtVolontesErrorAction,
        ).call,
        TypedReducer<EnsState, CreateEntourageContactAction>(
          EntourageEtVolonteReducers._onCreateEntourageContactAction,
        ).call,
        TypedReducer<EnsState, _ProcessCreateOrUpdateEntourageContactSuccessAction>(
          EntourageEtVolonteReducers._onProcessCreateOrUpdateEntourageContactSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessCreateOrUpdateEntourageContactFailureAction>(
          EntourageEtVolonteReducers._onProcessCreateOrUpdateEntourageContactFailureAction,
        ).call,
        TypedReducer<EnsState, UpdateEntourageContactAction>(
          EntourageEtVolonteReducers._onUpdateEntourageContactAction,
        ).call,
        TypedReducer<EnsState, DeleteEntourageContactAction>(
          EntourageEtVolonteReducers._onDeleteEntourageContactAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteEntourageContactSuccessAction>(
          EntourageEtVolonteReducers._onProcessDeleteEntourageContactSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteEntourageContactErrorAction>(
          EntourageEtVolonteReducers._onProcessDeleteEntourageContactErrorAction,
        ).call,
        TypedReducer<EnsState, ToggleConsentDonOrganeAction>(
          EntourageEtVolonteReducers._onToggleConsentDonOrganeAction,
        ).call,
        TypedReducer<EnsState, _ProcessToggleConsentDonOrganeSuccessAction>(
          EntourageEtVolonteReducers._onProcessToggleConsentDonOrganeSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessToggleConsentDonOrganeErrorAction>(
          EntourageEtVolonteReducers._onProcessToggleConsentDonOrganeErrorAction,
        ).call,
      ];

  static EnsState _onFetchEntourageEtVolontesAction(EnsState state, FetchEntourageEtVolontesAction action) {
    if (action.force || state.entourageEtVolontesState.entourageContactsStatus.isNotSuccess()) {
      return state.clone(
        entourageEtVolontesState: state.entourageEtVolontesState.clone(
          entourageContactsStatus: AllPurposesStatus.LOADING,
          createOrUpdateEntourageContactStatus: AllPurposesStatus.NOT_LOADED,
          deleteEntourageContactStatus: AllPurposesStatus.NOT_LOADED,
          isUpdateConsentLoading: false,
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchEntourageEtVolontesSuccessAction(
    EnsState state,
    ProcessFetchEntourageEtVolontesSuccessAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        entourageContactsStatus: AllPurposesStatus.SUCCESS,
        entourageContacts: action.entourageEtVolontes.entourageContacts,
        consent: action.entourageEtVolontes.consent,
      ),
    );
  }

  static EnsState _onProcessFetchEntourageEtVolontesErrorAction(
    EnsState state,
    ProcessFetchEntourageEtVolontesErrorAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        entourageContactsStatus: AllPurposesStatus.ERROR,
        consent: null,
      ),
    );
  }

  static EnsState _onCreateEntourageContactAction(EnsState state, CreateEntourageContactAction action) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        createOrUpdateEntourageContactStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessCreateOrUpdateEntourageContactSuccessAction(
    EnsState state,
    _ProcessCreateOrUpdateEntourageContactSuccessAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        createOrUpdateEntourageContactStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessCreateOrUpdateEntourageContactFailureAction(
    EnsState state,
    _ProcessCreateOrUpdateEntourageContactFailureAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        createOrUpdateEntourageContactStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onUpdateEntourageContactAction(
    EnsState state,
    UpdateEntourageContactAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        createOrUpdateEntourageContactStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onDeleteEntourageContactAction(
    EnsState state,
    DeleteEntourageContactAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        deleteEntourageContactStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessDeleteEntourageContactSuccessAction(
    EnsState state,
    _ProcessDeleteEntourageContactSuccessAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        deleteEntourageContactStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessDeleteEntourageContactErrorAction(
    EnsState state,
    _ProcessDeleteEntourageContactErrorAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        deleteEntourageContactStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onToggleConsentDonOrganeAction(EnsState state, ToggleConsentDonOrganeAction action) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        isUpdateConsentLoading: true,
      ),
    );
  }

  static EnsState _onProcessToggleConsentDonOrganeSuccessAction(
    EnsState state,
    _ProcessToggleConsentDonOrganeSuccessAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        consent: action.consent,
        isUpdateConsentLoading: false,
      ),
    );
  }

  static EnsState _onProcessToggleConsentDonOrganeErrorAction(
    EnsState state,
    _ProcessToggleConsentDonOrganeErrorAction action,
  ) {
    return state.clone(
      entourageEtVolontesState: state.entourageEtVolontesState.clone(
        isUpdateConsentLoading: false,
      ),
    );
  }
}
