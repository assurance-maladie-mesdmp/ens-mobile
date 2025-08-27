/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommandations_redux.dart';

class RecommandationsMiddlewares {
  final IRecommandationsRepository _recommandationsRepository;

  RecommandationsMiddlewares(this._recommandationsRepository);

  static List<Middleware<EnsState>> create(IRecommandationsRepository recommandationsRepository) {
    final middleware = RecommandationsMiddlewares(recommandationsRepository);
    return [
      TypedMiddleware<EnsState, FetchRecommandationsAction>(middleware._onFetchRecommandationsAction).call,
      TypedMiddleware<EnsState, ProcessFetchRecommandationsSuccessAction>(
        middleware._onProcessFetchRecommandationsSuccessAction,
      ).call,
      TypedMiddleware<EnsState, FetchRecommandationDiffereeAction>(
        middleware._onFetchRecommandationDiffereeAction,
      ).call,
      TypedMiddleware<EnsState, DismissRecommandationDiffereeAction>(
        middleware._onDismissRecommandationDiffereeAction,
      ).call,
    ];
  }

  Future<void> _onFetchRecommandationsAction(
    Store<EnsState> store,
    FetchRecommandationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.recommandationsState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _recommandationsRepository.getRecommandations(patientId);
      result.onSuccess((recommandationsResponse) {
        store.dispatch(ProcessFetchRecommandationsSuccessAction(recommandationsResponse));
      }).onError((_) {
        store.dispatch(ProcessFetchRecommandationsErrorAction());
      });
    }
  }

  Future<void> _onFetchRecommandationDiffereeAction(
    Store<EnsState> store,
    FetchRecommandationDiffereeAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await _recommandationsRepository.fetchRecommandationDifferee(patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchRecommandationDiffereeSuccessAction(recommandationDifferee: successResult));
    });
  }

  Future<void> _onProcessFetchRecommandationsSuccessAction(
    Store<EnsState> store,
    ProcessFetchRecommandationsSuccessAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final recommandationsResponse = action.recommandationsResponse;
    final questionnaireCode = recommandationsResponse.questionnaireCode;
    final questionnaireVersion = recommandationsResponse.questionnaireVersion;
    final questionnaireLastVersion = recommandationsResponse.questionnaireLastVersion;

    final recoQuestionnaire = recommandationsResponse.recommandations.firstWhereOrNull(
      (reco) =>
          reco.recommandationCode == RecommandationCode.INCITER_COMPLETER_QUIZ ||
          reco.recommandationCode == RecommandationCode.INCITER_FINALISER_QUIZ ||
          reco.recommandationCode == RecommandationCode.INCITER_ENREGISTRER_QUIZ ||
          reco.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ,
    );

    if (recoQuestionnaire != null && questionnaireCode != null) {
      store.dispatch(
        ProcessUpdateTuileQuestionnaireAction(
          recommandation: recoQuestionnaire,
          questionnaireCode: questionnaireCode,
          questionnaireVersion: questionnaireVersion,
          questionnaireLastVersion: questionnaireLastVersion,
        ),
      );
    }
  }

  Future<void> _onDismissRecommandationDiffereeAction(
    Store<EnsState> store,
    DismissRecommandationDiffereeAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await _recommandationsRepository.dismissRecommandationDifferee(patientId, action.code);

    result.onSuccess((_) {
      store.dispatch(_ProcessDismissRecommandationSuccessAction());
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
