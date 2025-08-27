/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'entourage_et_volontes_redux.dart';

class EntourageEtVolonteMiddleware {
  final IEntourageContactRepository repository;

  EntourageEtVolonteMiddleware(this.repository);

  static List<Middleware<EnsState>> create(IEntourageContactRepository repository) {
    final middleware = EntourageEtVolonteMiddleware(repository);
    return [
      TypedMiddleware<EnsState, FetchEntourageEtVolontesAction>(middleware._onFetchEntourageEtVolontesAction).call,
      TypedMiddleware<EnsState, CreateEntourageContactAction>(middleware._onCreateEntourageContactAction).call,
      TypedMiddleware<EnsState, UpdateEntourageContactAction>(middleware._onUpdateEntourageContactAction).call,
      TypedMiddleware<EnsState, DeleteEntourageContactAction>(middleware._onDeleteEntourageContactAction).call,
      TypedMiddleware<EnsState, ToggleConsentDonOrganeAction>(middleware._onToggleConsentDonOrganeAction).call,
    ];
  }

  Future<void> _onFetchEntourageEtVolontesAction(
    Store<EnsState> store,
    FetchEntourageEtVolontesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.entourageEtVolontesState.entourageContactsStatus.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await repository.getEntourageEtVolontes(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchEntourageEtVolontesSuccessAction(successResult));
      });
      result.onError((error) {
        store.dispatch(ProcessFetchEntourageEtVolontesErrorAction());
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    }
  }

  Future<void> _onCreateEntourageContactAction(
    Store<EnsState> store,
    CreateEntourageContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await repository.createEntourageContact(patientId, action.editingEntourageContact);
    result.onSuccess((_) {
      store.dispatch(FetchEntourageEtVolontesAction(force: true));
      store.dispatch(_ProcessCreateOrUpdateEntourageContactSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Contact ajouté.'));
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessCreateOrUpdateEntourageContactFailureAction());
    });
  }

  Future<void> _onUpdateEntourageContactAction(
    Store<EnsState> store,
    UpdateEntourageContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await repository.updateEntourageContact(patientId, action.editingEntourageContact);
    result.onSuccess((_) {
      store.dispatch(FetchEntourageEtVolontesAction(force: true));
      store.dispatch(_ProcessCreateOrUpdateEntourageContactSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Contact modifié.'));
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessCreateOrUpdateEntourageContactFailureAction());
    });
  }

  Future<void> _onDeleteEntourageContactAction(
    Store<EnsState> store,
    DeleteEntourageContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await repository.deleteEntourageContact(patientId, action.contactId);
    result.onSuccess((successResult) {
      store.dispatch(FetchEntourageEtVolontesAction(force: true));
      store.dispatch(_ProcessDeleteEntourageContactSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Contact supprimé.'));
    });
    result.onError((error) {
      store.dispatch(_ProcessDeleteEntourageContactErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onToggleConsentDonOrganeAction(
    Store<EnsState> store,
    ToggleConsentDonOrganeAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await repository.updateOrganConsent(patientId, action.consent);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessToggleConsentDonOrganeSuccessAction(action.consent));
    });
    result.onError((error) {
      store.dispatch(_ProcessToggleConsentDonOrganeErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
