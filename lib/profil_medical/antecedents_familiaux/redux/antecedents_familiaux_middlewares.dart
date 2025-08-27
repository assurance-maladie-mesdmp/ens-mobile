/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'antecedents_familiaux_redux.dart';

class AntecedentsFamiliauxMiddlewares {
  IAntecedentsFamiliauxRepository antecedentsFamiliauxRepository;

  AntecedentsFamiliauxMiddlewares._(this.antecedentsFamiliauxRepository);

  static List<Middleware<EnsState>> create(
    IAntecedentsFamiliauxRepository antecedentsFamiliauxRepository,
  ) {
    final middleware = AntecedentsFamiliauxMiddlewares._(antecedentsFamiliauxRepository);
    return [
      TypedMiddleware<EnsState, FetchAntecedentsFamiliauxAction>(middleware._onFetchAntecedentsFamiliauxAction).call,
      TypedMiddleware<EnsState, AddAntecedentFamilialAction>(middleware._onAddAntecedentFamilialAction).call,
      TypedMiddleware<EnsState, UpdateAntecedentFamilialAction>(middleware._onUpdateAntecedentFamilialAction).call,
      TypedMiddleware<EnsState, DeleteAntecedentFamilialAction>(middleware._onDeleteAntecedentFamilialAction).call,
    ];
  }

  Future<void> _onFetchAntecedentsFamiliauxAction(
    Store<EnsState> store,
    FetchAntecedentsFamiliauxAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.antecedentsFamiliauxState.antecedentsFamiliauxListState.status.isNotSuccess()) {
      final result = await antecedentsFamiliauxRepository.getAntecedentsFamiliaux(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchAntecedentsFamiliauxSuccessAction(
            antecedentsFamiliaux: successResult.antecedents,
            nonConcerneDepuis: successResult.unconcernedDeclarationDate,
          ),
        );
      }).onError((_) {
        store.dispatch(ProcessFetchAntecedentsFamiliauxErrorAction());
      });
    }
  }

  Future<void> _onAddAntecedentFamilialAction(
    Store<EnsState> store,
    AddAntecedentFamilialAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await antecedentsFamiliauxRepository.addAntecedentFamilial(
      patientId,
      action.editingAntecedentFamilial,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Antécédent familial ajouté'));
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessAddOrUpdateAntecedentFamilialSuccessAction());
      store.dispatch(const FetchAntecedentsFamiliauxAction(force: true));
    }).onError((error) {
      store.dispatch(ProcessAddOrUpdateAntecedentFamilialErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUpdateAntecedentFamilialAction(
    Store<EnsState> store,
    UpdateAntecedentFamilialAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await antecedentsFamiliauxRepository.updateAntecedentFamilial(
      patientId,
      action.editingAntecedentFamilial,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Antécédent familial modifié'));
      store.dispatch(ProcessAddOrUpdateAntecedentFamilialSuccessAction());
      store.dispatch(const FetchAntecedentsFamiliauxAction(force: true));
    }).onError((error) {
      store.dispatch(ProcessAddOrUpdateAntecedentFamilialErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteAntecedentFamilialAction(
    Store<EnsState> store,
    DeleteAntecedentFamilialAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await antecedentsFamiliauxRepository.deleteAntecedentFamilial(
      patientId,
      action.antecedentFamilialId,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Antécédent familial supprimé'));
      store.dispatch(ProcessDeleteAntecedentFamilialSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
