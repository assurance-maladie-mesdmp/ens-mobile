/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'add_item_for_first_time_redux.dart';

class AddItemForFirstTimeMiddlewares {
  final IAddItemForFirstTimeRepository _repository;

  AddItemForFirstTimeMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(IAddItemForFirstTimeRepository repository) {
    final middlewares = AddItemForFirstTimeMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, CheckIsAddItemForFirstTimeAction>(
        middlewares._onCheckIsAddItemForFirstTimeAction,
      ).call,
      TypedMiddleware<EnsState, AddedItemForFirstTimeAction>(
        middlewares._onAddedItemForFirstTimeAction,
      ).call,
    ];
  }

  Future<void> _onCheckIsAddItemForFirstTimeAction(
    Store<EnsState> store,
    CheckIsAddItemForFirstTimeAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final appLaunchedForFirstTime = _repository.isAddItemForFirstTime(action.pmlSection);
    store.dispatch(_ProcessCheckIsAddItemForFirstTimeAction(action.pmlSection, appLaunchedForFirstTime));
  }

  Future<void> _onAddedItemForFirstTimeAction(
    Store<EnsState> store,
    AddedItemForFirstTimeAction action,
    NextDispatcher next,
  ) async {
    next(action);
    _repository.setItemAddedForFirstTime(action.pmlSection);
  }
}
