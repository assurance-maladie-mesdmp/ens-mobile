/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class RendezVousMiddlewares {
  final IAgendaRepository agendaRepository;

  RendezVousMiddlewares(this.agendaRepository);

  static List<Middleware<EnsState>> create(
    IAgendaRepository agendaRepository,
  ) {
    final middlewares = RendezVousMiddlewares(agendaRepository);
    return [
      TypedMiddleware<EnsState, AddRendezVousAction>(middlewares._onAddRendezVousAction).call,
      TypedMiddleware<EnsState, UpdateRendezVousAction>(middlewares._onUpdateRendezVousAction).call,
      TypedMiddleware<EnsState, DeleteRendezVousAction>(middlewares._onDeleteRendezVousAction).call,
      TypedMiddleware<EnsState, FetchRendezVousDetailAction>(middlewares._onFetchRendezVousDetailAction).call,
    ];
  }

  Future<void> _onAddRendezVousAction(
    Store<EnsState> store,
    AddRendezVousAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await agendaRepository.addRendezVous(patientId, action.rdv);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessAddRendezVousSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Rendez-vous ajouté'));
    }).onError((_) {
      store.dispatch(_ProcessAddRendezVousErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUpdateRendezVousAction(
    Store<EnsState> store,
    UpdateRendezVousAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await agendaRepository.updateRendezVous(patientId, action.rdv);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessUpdateRendezVousSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Rendez-vous modifié'));
    }).onError((_) {
      store.dispatch(_ProcessUpdateRendezVousErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteRendezVousAction(
    Store<EnsState> store,
    DeleteRendezVousAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours...'));
    final result = await agendaRepository.deleteRendezVous(patientId, action.rdvId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessDeleteRendezVousSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Rendez-vous supprimé'));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchRendezVousDetailAction(
    Store<EnsState> store,
    FetchRendezVousDetailAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final rendezVousState = store.state.agendaState.rendezVousState;
    if (rendezVousState.status.isSuccess()) {
      final rendezVousWithSameId = rendezVousState.rendezVous.firstWhereOrNull((rdv) => rdv.id == action.rdvId);
      if (rendezVousWithSameId != null) {
        store.dispatch(_ProcessFetchRendezVousDetailSuccessAction(rendezVousWithSameId));
      }
    }
    final result = await agendaRepository.getRendezVousByIdByPatientId(action.patientId ?? patientId, action.rdvId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchRendezVousDetailSuccessAction(successResult));
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      if (domainError is AgendaDomainError) {
        store.dispatch(_ProcessFetchRendezVousDetailErrorAction(domainError));
      }
    });
  }
}
