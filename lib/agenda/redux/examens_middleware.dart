/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class ExamensMiddlewares {
  final IAgendaRepository agendaRepository;

  const ExamensMiddlewares(this.agendaRepository);

  static List<Middleware<EnsState>> create(
    IAgendaRepository agendaRepository,
  ) {
    final middlewares = ExamensMiddlewares(agendaRepository);

    return [
      TypedMiddleware<EnsState, UpdateExamenStatusAction>(middlewares._onUpdateExamenStatusAction).call,
    ];
  }

  Future<void> _onUpdateExamenStatusAction(
    Store<EnsState> store,
    UpdateExamenStatusAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await agendaRepository.updateExamenStatus(
      patientId: patientId,
      examenId: action.examenId,
      status: action.status,
      previousStatus: action.previousStatus,
      dateDebut: action.dateDebut,
      dateRealisation: action.dateRealisation,
    );
    result.onSuccess((successResult) {
      store.dispatch(
        DisplaySnackbarAction.success(
          action.dateRealisation == null
              ? '${action.examenId.toLabel()} ${action.status.label.toLowerCase()}'
              : '${action.examenId.toLabel()} ${action.status.label.toLowerCase()} le ${DateFormat('dd/MM/yyyy').format(action.dateRealisation!)}',
        ),
      );
      store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.EXAMEN_RECOMMANDE));
      store.dispatch(
        _ProcessUpdateExamenSuccessAction(
          status: action.status,
          examenId: action.examenId,
          dateDebut: action.dateDebut,
          dateRealisation: action.dateRealisation,
        ),
      );
      store.dispatch(FetchExamensRecommandesAction());
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
