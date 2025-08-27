/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'groupe_sanguin_redux.dart';

class GroupeSanguinMiddlewares {
  final IGroupeSanguinRepository groupeSanguinRepository;

  GroupeSanguinMiddlewares._(this.groupeSanguinRepository);

  static List<Middleware<EnsState>> create(IGroupeSanguinRepository groupeSanguinRepository) {
    final middleware = GroupeSanguinMiddlewares._(groupeSanguinRepository);
    return <Middleware<EnsState>>[
      TypedMiddleware<EnsState, FetchCmsInformationsGroupeSanguinAction>(
        middleware._onFetchCmsInformationsGroupeSanguinAction,
      ).call,
      TypedMiddleware<EnsState, FetchGroupeSanguinAction>(
        middleware._onFetchGroupeSanguinAction,
      ).call,
      TypedMiddleware<EnsState, SendGroupeSanguinAction>(middleware._onSendGroupeSanguinAction).call,
      TypedMiddleware<EnsState, _AddGroupeSanguinAction>(middleware._onAddGroupeSanguinAction).call,
      TypedMiddleware<EnsState, _UpdateGroupeSanguinAction>(middleware._onUpdateGroupeSanguinAction).call,
      TypedMiddleware<EnsState, DeleteGroupeSanguinAction>(middleware._onDeleteGroupeSanguinAction).call,
    ];
  }

  Future<void> _onFetchCmsInformationsGroupeSanguinAction(
    Store<EnsState> store,
    FetchCmsInformationsGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.groupeSanguinState.informationsGroupeSanguinCms.isEmpty) {
      final result = await groupeSanguinRepository.getCmsInformationsGroupeSanguin();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchCmsInformationsGroupeSanguinSuccessAction(successResult));
      });
    }
  }

  Future<void> _onFetchGroupeSanguinAction(
    Store<EnsState> store,
    FetchGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    next(action);

    if (action.force || store.state.groupeSanguinState.dataStatus.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await groupeSanguinRepository.getGroupeSanguin(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchGroupeSanguinSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchGroupeSanguinErrorAction());
      });
    }
  }

  Future<void> _onSendGroupeSanguinAction(
    Store<EnsState> store,
    SendGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    final patientId = UserSelectors.getPatientId(store.state);
    final currentGroupeSanguinData = store.state.groupeSanguinState.groupeSanguinData;
    if (currentGroupeSanguinData == null) {
      store.dispatch(_AddGroupeSanguinAction(patientId, action.groupeSanguin));
    } else {
      store.dispatch(_UpdateGroupeSanguinAction(currentGroupeSanguinData.id, patientId, action.groupeSanguin));
    }
  }

  Future<void> _onAddGroupeSanguinAction(
    Store<EnsState> store,
    _AddGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await groupeSanguinRepository.addGroupeSanguin(action.patientId, action.groupeSanguin);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessAddGroupeSanguinSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Groupe sanguin ajouté'));
      store.dispatch(const FetchGroupeSanguinAction(force: true));
    }).onError((error) {
      store.dispatch(_ProcessAddGroupeSanguinErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUpdateGroupeSanguinAction(
    Store<EnsState> store,
    _UpdateGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final result = await groupeSanguinRepository.updateGroupeSanguin(
      action.id,
      action.patientId,
      action.groupeSanguin,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessUpdateGroupeSanguinSuccessAction(action.patientId));
      store.dispatch(const DisplaySnackbarAction.success('Groupe sanguin modifié'));
      final bool currentGroupeSanguinRelated = action.id == store.state.groupeSanguinState.groupeSanguinData?.id;
      if (currentGroupeSanguinRelated) {
        store.dispatch(const FetchGroupeSanguinAction(force: true));
      }
    }).onError((error) {
      store.dispatch(_ProcessUpdateGroupeSanguinErrorAction(action.patientId));
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteGroupeSanguinAction(
    Store<EnsState> store,
    DeleteGroupeSanguinAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final groupeSanguinData = store.state.groupeSanguinState.groupeSanguinData;
    if (groupeSanguinData != null) {
      final result = await groupeSanguinRepository.deleteGroupeSanguin(groupeSanguinData.id, patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessDeleteGroupeSanguinSuccessAction(patientId));
        store.dispatch(const DisplaySnackbarAction.success('Groupe sanguin supprimé'));
      }).onError((error) {
        store.dispatch(_ProcessDeleteGroupeSanguinErrorAction(patientId));
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    }
  }
}
