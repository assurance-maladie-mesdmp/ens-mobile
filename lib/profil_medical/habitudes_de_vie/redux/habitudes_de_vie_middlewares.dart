/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'habitudes_de_vie_redux.dart';

class HabitudesDeVieMiddlewares {
  final IHabitudesDeVieRepository habitudesVieRepository;

  HabitudesDeVieMiddlewares._(this.habitudesVieRepository);

  static List<Middleware<EnsState>> create(IHabitudesDeVieRepository habitudesVieRepository) {
    final middleware = HabitudesDeVieMiddlewares._(habitudesVieRepository);
    return [
      TypedMiddleware<EnsState, FetchHabitudesDeVieAction>(middleware._onFetchHabitudesDeVieAction).call,
      TypedMiddleware<EnsState, FetchInitialHabitudesDeVieAnswersAction>(
        middleware._onFetchInitialHabitudesDeVieAnswersAction,
      ).call,
      TypedMiddleware<EnsState, FetchHabitudesDeVieAnswerAction>(middleware._onFetchHabitudesDeVieAnswerAction).call,
      TypedMiddleware<EnsState, SendHabitudesDeVieCurrentAnswerAction>(
        middleware._onSendHabitudesDeVieCurrentAnswerAction,
      ).call,
      TypedMiddleware<EnsState, DeleteHabitudesDeVieAnswerAction>(middleware._onDeleteHabitudesDeVieAnswerAction).call,
    ];
  }

  Future<void> _onFetchHabitudesDeVieAction(
    Store<EnsState> store,
    FetchHabitudesDeVieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.habitudesDeVieState.habitudesDeVieListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await habitudesVieRepository.getHabitudesDeVie(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchHabitudesVieSuccessAction(successResult.categories));
      }).onError((error) {
        store.dispatch(ProcessFetchHabitudesVieErrorAction());
      });
    }
  }

  Future<void> _onSendHabitudesDeVieCurrentAnswerAction(
    Store<EnsState> store,
    SendHabitudesDeVieCurrentAnswerAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await habitudesVieRepository.updateHabitudesDeVie(patientId, action.userAnswer);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Habitude de vie mise à jour'));
      store.dispatch(FetchHabitudesDeVieAnswerAction(categoryCode: action.category));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchInitialHabitudesDeVieAnswersAction(
    Store<EnsState> store,
    FetchInitialHabitudesDeVieAnswersAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final habitudesDeVieAnswersState = store.state.habitudesDeVieState.habitudesDeVieAnswersState;
    if (_dataNotInState(habitudesDeVieAnswersState)) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await habitudesVieRepository.getInitialHabitudesDeVieSectionAnswers(patientId);
      result.alimentaire.onSuccess((successResult) {
        store.dispatch(ProcessFetchHabitudesVieAnswerSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchHabitudesVieAnswerErrorAction());
      });
      result.tabac.onSuccess((successResult) {
        store.dispatch(ProcessFetchHabitudesVieAnswerSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchHabitudesVieAnswerErrorAction());
      });
      result.activitePhysique.onSuccess((successResult) {
        store.dispatch(ProcessFetchHabitudesVieAnswerSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchHabitudesVieAnswerErrorAction());
      });
    }
  }

  bool _dataNotInState(HabitudesDeVieAnswersState habitudesDeVieAnswersState) {
    return habitudesDeVieAnswersState.status.isNotSuccess() ||
        !habitudesDeVieAnswersState.answers.containsKey(HabitudeDeVieCategoryCode.FOOD) ||
        !habitudesDeVieAnswersState.answers.containsKey(HabitudeDeVieCategoryCode.TOBACCO) ||
        !habitudesDeVieAnswersState.answers.containsKey(HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY);
  }

  Future<void> _onFetchHabitudesDeVieAnswerAction(
    Store<EnsState> store,
    FetchHabitudesDeVieAnswerAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await habitudesVieRepository.getHabitudesDeVieSectionAnswer(patientId, action.categoryCode);
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchHabitudesVieAnswerSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(ProcessFetchHabitudesVieAnswerErrorAction());
    });
  }

  Future<void> _onDeleteHabitudesDeVieAnswerAction(
    Store<EnsState> store,
    DeleteHabitudesDeVieAnswerAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await habitudesVieRepository.deleteHabitudesDeVie(patientId, action.itemId);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Réponse supprimée'));
      final categoryCode = HabitudesDeVieSelectors.getCategoryCodeFromItemId(store.state, action.itemId);
      if (categoryCode != null) {
        store.dispatch(FetchHabitudesDeVieAnswerAction(categoryCode: categoryCode));
      }
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
