/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

const MAX_RAPPEL_DURING_THE_SAME_DAY = 10;

class RappelMiddlewares {
  final IAgendaRepository agendaRepository;

  RappelMiddlewares(this.agendaRepository);

  static List<Middleware<EnsState>> create(
    IAgendaRepository agendaRepository,
  ) {
    final middlewares = RappelMiddlewares(agendaRepository);
    return [
      TypedMiddleware<EnsState, AddRappelAction>(middlewares._onAddRappelAction).call,
      TypedMiddleware<EnsState, UpdateRappelAction>(middlewares._onUpdateRappelAction).call,
      TypedMiddleware<EnsState, DeleteRappelAction>(middlewares._onDeleteRappelAction).call,
      TypedMiddleware<EnsState, FetchRappelDetailAction>(middlewares._onFetchRappelDetailAction).call,
    ];
  }

  Future<void> _onAddRappelAction(
    Store<EnsState> store,
    AddRappelAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final rappelsState = store.state.agendaState.rappelsState;
    if (rappelsState.status.isSuccess()) {
      final rappels = rappelsState.rappels;
      final numberOfRappelWithTheSameDate = _numberOfRappelTheSameDate(rappels, action.date);
      if (numberOfRappelWithTheSameDate < MAX_RAPPEL_DURING_THE_SAME_DAY) {
        final result = await agendaRepository.addRappel(
          patientId: patientId,
          date: action.date,
          title: action.title,
          comment: action.comment,
        );
        result.onSuccess((successResult) {
          store.dispatch(_ProcessAddRappelSuccessAction(successResult));
          store.dispatch(const DisplaySnackbarAction.success('Rappel ajouté'));
        }).onError((_) {
          store.dispatch(_ProcessAddRappelErrorAction());
          store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        });
      } else {
        store.dispatch(
          const DisplaySnackbarAction.error('Vous ne pouvez pas ajouter plus de 10 rappels pour une même date.'),
        );
        store.dispatch(_ProcessAddRappelErrorAction());
      }
    } else {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessAddRappelErrorAction());
    }
  }

  Future<void> _onUpdateRappelAction(
    Store<EnsState> store,
    UpdateRappelAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await agendaRepository.updateRappel(patientId, action.rappel);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessUpdatedRappelSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Rappel modifié'));
    }).onError((_) {
      store.dispatch(_ProcessUpdatedRappelErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  void _onDeleteRappelAction(
    Store<EnsState> store,
    DeleteRappelAction action,
    NextDispatcher next,
  ) {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    agendaRepository.deleteRappel(patientId, action.rappelId).then((result) {
      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Rappel supprimé'));
        store.dispatch(_ProcessDeleteRappelSuccessAction(action.rappelId));
      }).onError((_) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    });
  }

  int _numberOfRappelTheSameDate(List<Rappel> rappels, DateTime date) {
    return rappels
        .where(
          (rappel) => rappel.date.day == date.day && rappel.date.month == date.month && rappel.date.year == date.year,
        )
        .length;
  }

  Future<void> _onFetchRappelDetailAction(
    Store<EnsState> store,
    FetchRappelDetailAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final rappelsState = store.state.agendaState.rappelsState;
    if (rappelsState.status.isSuccess()) {
      final rappelWithSameId = rappelsState.rappels.firstWhereOrNull((rappel) => rappel.id == action.rappelId);
      if (rappelWithSameId != null) {
        store.dispatch(_ProcessFetchedRappelDetailSuccessAction(rappelWithSameId));
        return;
      }
    }

    final result = await agendaRepository.getRappelByIdByPatientId(action.patientId ?? patientId, action.rappelId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchedRappelDetailSuccessAction(successResult));
    }).onError((domainError) {
      if (domainError is AgendaDomainError) {
        store.dispatch(_ProcessFetchedRappelDetailErrorAction(domainError));
      }
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }
}
