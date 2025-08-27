/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'historique_activites_redux.dart';

class HistoriqueActivitesMiddlewares {
  final IHistoriqueActivitesRepository _historiqueActivitesRepository;

  HistoriqueActivitesMiddlewares(this._historiqueActivitesRepository);

  static List<Middleware<EnsState>> create(
    IHistoriqueActivitesRepository historiqueActivitesRepository,
  ) {
    final middlewares = HistoriqueActivitesMiddlewares(historiqueActivitesRepository);
    return [
      TypedMiddleware<EnsState, FetchProfessionnelsDeSanteTracesAction>(
        middlewares._onFetchProfessionnelsDeSanteTracesAction,
      ).call,
      TypedMiddleware<EnsState, FetchProfessionnelsDeSanteTracesNextPageAction>(
        middlewares._onFetchProfessionnelsDeSanteTracesNextPageAction,
      ).call,
      TypedMiddleware<EnsState, FetchMesActivitesTracesAction>(
        middlewares._onFetchMesActivitesTracesAction,
      ).call,
      TypedMiddleware<EnsState, FetchServicesSynchronisesTracesAction>(
        middlewares._onFetchServicesSynchronisesTracesAction,
      ).call,
      TypedMiddleware<EnsState, FetchProfessionnelDeSanteTracesByIdAction>(
        middlewares._onFetchProfessionnelDeSanteTracesByIdAction,
      ).call,
    ];
  }

  Future<void> _onFetchProfessionnelsDeSanteTracesAction(
    Store<EnsState> store,
    FetchProfessionnelsDeSanteTracesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final historiqueActivitesState = store.state.historiqueActivitesState;
    if (action.force ||
        historiqueActivitesState.professionnelsDeSanteTracesState.status.isNotSuccess() ||
        historiqueActivitesState.psTracesNotConsistent) {
      final patientId = UserSelectors.getPatientId(store.state);
      final dateRangeFilter = historiqueActivitesState.dateRangeFilter;
      final result = await _historiqueActivitesRepository.getProfessionnelsDeSanteTraces(
        patientId: patientId,
        page: 1,
        startDate: dateRangeFilter?.startDate,
        endDate: dateRangeFilter?.endDate,
      );
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteTracesSuccessAction(successResult, dateRangeFilter));
      }).onError((error) {
        store.dispatch(_ProcessFetchProfessionnelsDeSanteTracesErrorAction());
      });
    }
  }

  Future<void> _onFetchProfessionnelsDeSanteTracesNextPageAction(
    Store<EnsState> store,
    FetchProfessionnelsDeSanteTracesNextPageAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final historiqueActivitesState = store.state.historiqueActivitesState;
    final professionnelsDeSanteTracesState = historiqueActivitesState.professionnelsDeSanteTracesState;
    final dateRangeFilter = historiqueActivitesState.dateRangeFilter;
    final result = await _historiqueActivitesRepository.getProfessionnelsDeSanteTraces(
      patientId: patientId,
      page: professionnelsDeSanteTracesState.currentPage + 1,
      startDate: dateRangeFilter?.startDate,
      endDate: dateRangeFilter?.endDate,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchMesActivitesTracesAction(
    Store<EnsState> store,
    FetchMesActivitesTracesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.historiqueActivitesState.mesActivitesTracesState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _historiqueActivitesRepository.getMesActivitesTraces(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchMesActivitesTracesSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchMesActivitesTracesErrorAction());
      });
    }
  }

  Future<void> _onFetchServicesSynchronisesTracesAction(
    Store<EnsState> store,
    FetchServicesSynchronisesTracesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.historiqueActivitesState.servicesSynchronisesTracesState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _historiqueActivitesRepository.getServicesSynchronisesTraces(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchServicesSynchronisesTracesSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchServicesSynchronisesTracesErrorAction());
      });
    }
  }

  Future<void> _onFetchProfessionnelDeSanteTracesByIdAction(
    Store<EnsState> store,
    FetchProfessionnelDeSanteTracesByIdAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final professionnelDeSanteTracesByIdStates =
        store.state.historiqueActivitesState.professionnelDeSanteTracesByIdStates;
    final psIdNat = action.psIdNat;
    final currentPsTracesState = professionnelDeSanteTracesByIdStates[psIdNat];
    if (currentPsTracesState == null || currentPsTracesState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _historiqueActivitesRepository.getProfessionnelDeSanteTracesById(
        patientId: patientId,
        psIdNat: psIdNat,
      );
      result.onSuccess((successResult) {
        store.dispatch(
          _ProcessFetchProfessionnelDeSanteTracesByIdSuccessAction(
            psIdNat: psIdNat,
            professionnelDeSanteTracesById: successResult,
          ),
        );
      }).onError((error) {
        store.dispatch(_ProcessFetchProfessionnelDeSanteTracesByIdErrorAction(psIdNat: psIdNat));
      });
    }
  }
}
