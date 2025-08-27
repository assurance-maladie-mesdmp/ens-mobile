/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'etablissements_de_sante_redux.dart';

class EtablissementsDeSanteMiddlewares {
  final IEtablissementDeSanteRepository _etablissementsDeSanteRepository;

  EtablissementsDeSanteMiddlewares(this._etablissementsDeSanteRepository);

  static List<Middleware<EnsState>> create(
    IEtablissementDeSanteRepository etablissementsDeSanteRepository,
  ) {
    final middlewares = EtablissementsDeSanteMiddlewares(etablissementsDeSanteRepository);
    return [
      TypedMiddleware<EnsState, FetchEtablissementsDeSanteAction>(middlewares._onFetchEtablissementsDeSanteAction).call,
      TypedMiddleware<EnsState, AddEsAction>(middlewares._onAddEsAction).call,
      TypedMiddleware<EnsState, RemoveEsAction>(middlewares._onRemoveEsAction).call,
      TypedMiddleware<EnsState, FetchEtablissementDeSanteFromIdNatDetailsAction>(
        middlewares._onFetchEtablissementDeSanteFromIdNatDetailsAction,
      ).call,
      TypedMiddleware<EnsState, FetchPharmaciesSuggestionsAction>(middlewares._onFetchPharmaciesSuggestionsAction).call,
    ];
  }

  Future<void> _onFetchEtablissementsDeSanteAction(
    Store<EnsState> store,
    FetchEtablissementsDeSanteAction action,
    NextDispatcher next,
  ) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final currentEsListState = store.state.etablissementsDeSanteState.etablissementDeSanteListState;

    next(action);
    if (action.force || currentEsListState.status.isNotSuccess()) {
      final result = await _etablissementsDeSanteRepository.getEtablissementsDeSante(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchEtablissementsDeSanteSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchEtablissementsDeSanteErrorAction());
        if (action.isFromAddEs) {
          store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        }
      });
    }
  }

  Future<void> _onAddEsAction(Store<EnsState> store, AddEsAction action, NextDispatcher next) async {
    next(action);

    store.dispatch(const DisplaySnackbarAction.loading(ADD_PS_LOADING));
    final patientId = UserSelectors.getPatientId(store.state);

    final getEsRequestResult = await _etablissementsDeSanteRepository.getEtablissementDeSante(
      action.etablissementDeSanteId,
      patientId,
    );
    getEsRequestResult.onSuccess((etablissementDeSante) async {
      final requestResult = await _etablissementsDeSanteRepository.addEtablissementDeSante(
        patientId,
        etablissementDeSante.idNat,
      );

      requestResult.onSuccess((successResult) {
        store.dispatch(_ProcessAddEsSuccessAction(etablissementDeSante.idNat));
        store.dispatch(FetchEtablissementsDeSanteAction(force: true, isFromAddEs: true));
        store.dispatch(const DisplaySnackbarAction.success('Professionnel de santé ajouté'));
      }).onError((domainError) {
        store.dispatch(_ProcessAddEsErrorAction());
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
      });
    }).onError(
      (domainError) {
        store.dispatch(_ProcessAddEsErrorAction());
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
      },
    );
  }

  Future<void> _onRemoveEsAction(
    Store<EnsState> store,
    RemoveEsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours...'));
    final organizationId = action.organizationId;
    if (organizationId != null) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _etablissementsDeSanteRepository.removeEtablissementDeSante(patientId, organizationId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessRemoveEsSuccessAction(organizationId));
        store.dispatch(FetchAsSuggestionsAction(force: true));
        store.dispatch(const DisplaySnackbarAction.success('Professionnel de santé supprimé'));
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    }
  }

  Future<void> _onFetchEtablissementDeSanteFromIdNatDetailsAction(
    Store<EnsState> store,
    FetchEtablissementDeSanteFromIdNatDetailsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final esDetailsState = store.state.etablissementsDeSanteState.etablissementsDeSanteDetailsStates[action.idNat];
    if (esDetailsState == null || esDetailsState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _etablissementsDeSanteRepository.getEtablissementDeSante(action.idNat, patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          _ProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction(
            idNat: action.idNat,
            etablissementDeSante: successResult,
          ),
        );
      }).onError((domainError) {
        store.dispatch(_ProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction(idNat: action.idNat));
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
      });
    }
  }

  Future<void> _onFetchPharmaciesSuggestionsAction(
    Store<EnsState> store,
    FetchPharmaciesSuggestionsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.etablissementsDeSanteState.pharmacieSuggestionsState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _etablissementsDeSanteRepository.getPharmacieSuggestions(patientId);
      result.onSuccess((success) {
        store.dispatch(_ProcessFetchPharmaciesSuggestionsSuccessAction(success));
      }).onError((error) {
        store.dispatch(_ProcessFetchPharmaciesSuggestionsErrorAction());
      });
    }
  }
}
