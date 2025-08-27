/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professionnels_de_sante_redux.dart';

class ProfessionnelsDeSanteMiddlewares {
  final IProfessionnelsDeSanteRepository _professionnelsDeSanteRepository;
  final ISecureStorageRepository _secureStorageRepository;

  ProfessionnelsDeSanteMiddlewares(this._professionnelsDeSanteRepository, this._secureStorageRepository);

  static List<Middleware<EnsState>> create(
    IProfessionnelsDeSanteRepository professionnelsDeSanteRepository,
    ISecureStorageRepository secureStorageRepository,
  ) {
    final middlewares = ProfessionnelsDeSanteMiddlewares(professionnelsDeSanteRepository, secureStorageRepository);
    return [
      TypedMiddleware<EnsState, FetchProfessionnelsDeSanteAction>(middlewares._onFetchProfessionnelsDeSanteAction).call,
      TypedMiddleware<EnsState, AddPsAction>(middlewares._onAddPsAction).call,
      TypedMiddleware<EnsState, RemovePsAction>(middlewares._onRemovePsAction).call,
      TypedMiddleware<EnsState, FetchAsSuggestionsAction>(middlewares._onFetchAsSuggestionsAction).call,
      TypedMiddleware<EnsState, FetchShouldDisplayPsHorsRefInfoAction>(
        middlewares._onFetchHorsRefPsInfoViewDisplayAction,
      ).call,
      TypedMiddleware<EnsState, UpdateNonRefPsInfoViewDisplayAction>(middlewares._onUpdateNonRefPsInfoViewDisplayAction)
          .call,
      TypedMiddleware<EnsState, FetchProfessionnelSanteDetailAction>(
        middlewares._onFetchProfessionnelSanteDetailAction,
      ).call,
      TypedMiddleware<EnsState, FetchProfessionnelsDeSanteSynchroMedecinTraitantAction>(
        middlewares._onFetchProfessionnelsDeSanteSynchroMedecinTraitantAction,
      ).call,
      TypedMiddleware<EnsState, FetchProfessionnelSanteConfidentialitiesAction>(
        middlewares._onFetchProfessionnelSanteConfidentialitiesAction,
      ).call,
      TypedMiddleware<EnsState, UpdatePsRoleAction>(
        middlewares._onUpdatePsRoleAction,
      ).call,
      TypedMiddleware<EnsState, RemoveRoleFromPsAction>(
        middlewares._onRemoveRoleFromPsAction,
      ).call,
    ];
  }

  Future<void> _onFetchProfessionnelsDeSanteAction(
    Store<EnsState> store,
    FetchProfessionnelsDeSanteAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.professionnelsDeSanteState.professionnelDeSanteListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _professionnelsDeSanteRepository.getProfessionnelsDeSante(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteErrorAction());
      });
    }
  }

  Future<void> _onFetchProfessionnelsDeSanteSynchroMedecinTraitantAction(
    Store<EnsState> store,
    FetchProfessionnelsDeSanteSynchroMedecinTraitantAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.professionnelsDeSanteState.professionnelDeSanteListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _professionnelsDeSanteRepository.getProfessionnelsDeSanteSynchroMedecinTraitant(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteErrorAction());
        if (action.isFromAddPs) {
          store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        }
      });
    }
  }

  Future<void> _onAddPsAction(
    Store<EnsState> store,
    AddPsAction action,
    NextDispatcher next,
  ) async {
    next(action);

    store.dispatch(const DisplaySnackbarAction.loading(ADD_PS_LOADING));
    final patientId = UserSelectors.getPatientId(store.state);
    final requestResult = await _professionnelsDeSanteRepository.addPs(
      patientId: patientId,
      psId: action.professionnelSanteId,
      role: action.role,
    );

    requestResult.onSuccess((successResult) {
      store.dispatch(_ProcessAddPsSuccessAction(action.professionnelSanteId));
      store.dispatch(FetchProfessionnelsDeSanteSynchroMedecinTraitantAction(force: true, isFromAddPs: true));
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(
        DisplaySnackbarAction.success(
          action.role == null ? 'Professionnel de santé ajouté' : action.role!.snackbarAddPsWithRoleDisplayValue,
        ),
      );
    }).onError((domainError) {
      store.dispatch(_ProcessAddPsErrorAction());
      if (domainError is GuestModeDomainError) {
        store.dispatch(const DisplaySnackbarAction.unavailableInGuestMode());
      } else if (domainError is ProfessionnelsDeSanteDomainError) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage));
      }
    });
  }

  Future<void> _onRemovePsAction(
    Store<EnsState> store,
    RemovePsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours...'));

    final patientId = UserSelectors.getPatientId(store.state);
    final requestResult = await _professionnelsDeSanteRepository.removeProfessionnelDeSante(
      patientId,
      action.professionnelSanteId,
    );

    requestResult.onSuccess((successResult) {
      store.dispatch(ProcessRemovePsSuccessAction(action.professionnelSanteId));
      store.dispatch(FetchAsSuggestionsAction(force: true));
      store.dispatch(const DisplaySnackbarAction.success('Professionnel de santé supprimé'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchAsSuggestionsAction(
    Store<EnsState> store,
    FetchAsSuggestionsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.status.isNotSuccess()) {
      final result = await _professionnelsDeSanteRepository.getAsSuggestions(patientId);
      result.onSuccess((suggestions) {
        store.dispatch(ProcessFetchAsSuggestionsSuccessAction(suggestions));
      }).onError((_) {
        store.dispatch(const ProcessFetchAsSuggestionsErrorAction());
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    }
  }

  Future<void> _onFetchHorsRefPsInfoViewDisplayAction(
    Store<EnsState> store,
    FetchShouldDisplayPsHorsRefInfoAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _secureStorageRepository.readShouldDisplayInfoHorsRefPs(patientId);
    store.dispatch(_ProcessFetchShouldDisplayPsHorsRefInfoAction(result));
  }

  Future<void> _onUpdateNonRefPsInfoViewDisplayAction(
    Store<EnsState> store,
    UpdateNonRefPsInfoViewDisplayAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    await _secureStorageRepository.writePSNonRefInfoDisplayViews(patientId);
    store.dispatch(FetchShouldDisplayPsHorsRefInfoAction());
  }

  Future<void> _onFetchProfessionnelSanteDetailAction(
    Store<EnsState> store,
    FetchProfessionnelSanteDetailAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final psDetailsState = store.state.professionnelsDeSanteState.professionnelsDeSanteDetailsStates[action.psIdNat];
    if (psDetailsState == null || psDetailsState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _professionnelsDeSanteRepository.getProfessionnelDeSanteDetail(
        action.psIdNat,
        patientId,
      );
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionnelSanteDetailSuccessAction(action.psIdNat, successResult));
      }).onError((domainError) {
        store.dispatch(_ProcessFetchProfessionnelSanteDetailErrorAction(action.psIdNat));
        if (action.detailFrom == FetchProfessionnelSanteDetailFrom.PS_DETAIL ||
            domainError != ProfessionnelsDeSanteDomainError.INFORMATIONS_DETAILLEES_ERROR) {
          store.dispatch(
            DisplaySnackbarAction.error((domainError as ProfessionnelsDeSanteDomainError).errorMessage),
          );
        }
      });
    }
  }

  Future<void> _onFetchProfessionnelSanteConfidentialitiesAction(
    Store<EnsState> store,
    FetchProfessionnelSanteConfidentialitiesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.professionnelsDeSanteState.psConfidentialitiesState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _professionnelsDeSanteRepository.getProfessionnelDeSanteConfidentialities(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionnelSanteConfidentialitiesSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchProfessionnelSanteConfidentialitiesErrorAction());
      });
    }
  }

  Future<void> _onUpdatePsRoleAction(
    Store<EnsState> store,
    UpdatePsRoleAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    store.dispatch(const DisplaySnackbarAction.loading(ADD_PS_LOADING));

    final result = await _professionnelsDeSanteRepository.addRoleProfessionnelDeSante(
      patientId: patientId,
      psNationalId: action.psIdNat,
      role: action.role,
    );

    result.onSuccess((_) {
      store.dispatch(_ProcessUpdatePsRoleSuccessAction(psIdNat: action.psIdNat, role: action.role));
      store.dispatch(DisplaySnackbarAction.success(action.role.snackbarUpdatePsRoleDisplayValue));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveRoleFromPsAction(
    Store<EnsState> store,
    RemoveRoleFromPsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    store.dispatch(const DisplaySnackbarAction.loading(REMOVE_PS_LOADING));
    final result = await _professionnelsDeSanteRepository.removeRoleProfessionnelDeSante(
      patientId: patientId,
      psIdNat: action.psIdNat,
    );

    result.onSuccess((_) {
      store.dispatch(DisplaySnackbarAction.success(action.role.snackbarDisplayRemoveValue));
      store.dispatch(_ProcessRemoveRoleFromPsSuccessAction(psIdNat: action.psIdNat));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
