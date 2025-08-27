/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'add_item_for_first_time_redux.dart';

class AddItemForFirstTimeReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, AddedItemForFirstTimeAction>(
          AddItemForFirstTimeReducers._onAddedItemForFirstTimeAction,
        ).call,
        TypedReducer<EnsState, _ProcessCheckIsAddItemForFirstTimeAction>(
          AddItemForFirstTimeReducers._onProcessCheckIsAddItemForFirstTimeAction,
        ).call,
      ];

  static EnsState _onAddedItemForFirstTimeAction(EnsState state, AddedItemForFirstTimeAction action) {
    final newFirstTimeItemAdded = List.of(state.addItemForFirstTimeState.firstTimeItemAdded);
    newFirstTimeItemAdded.removeWhere((section) => section == action.pmlSection);
    return state.clone(addItemForFirstTimeState: AddItemForFirstTimeState(firstTimeItemAdded: newFirstTimeItemAdded));
  }

  static EnsState _onProcessCheckIsAddItemForFirstTimeAction(
    EnsState state,
    _ProcessCheckIsAddItemForFirstTimeAction action,
  ) {
    if (action.isFirstTime) {
      return state.clone(
        addItemForFirstTimeState: AddItemForFirstTimeState(
          firstTimeItemAdded: [
            action.pmlSection,
            ...state.addItemForFirstTimeState.firstTimeItemAdded,
          ],
        ),
      );
    } else {
      return state;
    }
  }
}
