/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class AgendaMiddleware {
  final IAgendaRepository agendaRepository;

  AgendaMiddleware(this.agendaRepository);

  static List<Middleware<EnsState>> create(
    IAgendaRepository agendaRepository,
  ) {
    final middlewares = AgendaMiddleware(agendaRepository);
    return [
      TypedMiddleware<EnsState, FetchRendezVousEtRappelsEtExamensAction>(
        middlewares.onFetchRendezVousEtRappelsEtExamensAction,
      ).call,
      TypedMiddleware<EnsState, FetchExamenRecommandeByCodeAndDateAction>(
        middlewares._onFetchExamenRecommandeByCodeAndDate,
      ).call,
      TypedMiddleware<EnsState, FetchExamensRecommandesAction>(middlewares._onFetchExamensRecommandesAction).call,
    ];
  }

  Future<void> onFetchRendezVousEtRappelsEtExamensAction(
    Store<EnsState> store,
    FetchRendezVousEtRappelsEtExamensAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final agendaState = store.state.agendaState;
    if (action.force ||
        agendaState.rendezVousState.status.isNotSuccess() ||
        agendaState.rappelsState.status.isNotSuccess() ||
        agendaState.examensRecommandesState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await agendaRepository.getRendezVousEtRappelsEtExamens(patientId);

      result.rdvs.onSuccess((successResult) {
        store.dispatch(_ProcessFetchRendezVousSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchRendezVousErrorAction());
      });

      result.examensRecommandes.onSuccess((successResult) {
        store.dispatch(_ProcessFetchExamensSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchExamensErrorAction());
      });

      result.rappels.onSuccess((successResult) {
        store.dispatch(_ProcessFetchRappelsSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchRappelsErrorAction());
      });
    }
  }

  Future<void> _onFetchExamenRecommandeByCodeAndDate(
    Store<EnsState> store,
    FetchExamenRecommandeByCodeAndDateAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final bool isMatchingExamFoundInState =
        store.state.agendaState.examensRecommandesState.examens.any((examen) => examen.id == action.code);

    if (!isMatchingExamFoundInState) {
      final result = await agendaRepository.getExamenRecommandeByCodeAndDate(patientId, action.code, action.date);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchExamenRecommandeByCodeAndDateSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchExamenRecommandeByCodeAndDateErrorAction());
      });
    }
  }

  Future<void> _onFetchExamensRecommandesAction(
    Store<EnsState> store,
    FetchExamensRecommandesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await agendaRepository.getNombreExamensRecommandes(patientId);
    store.dispatch(ProcessFetchedHomeExamenRecommandesAction(examensRecommandesAPlanifierLength: result));
  }
}
