/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'home_examen_recommandes_redux.dart';

class HomeExamenRecommandesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessFetchedHomeExamenRecommandesAction>(
          HomeExamenRecommandesReducers._onProcessFetchedHomeExamenRecommandesAction,
        ).call,
      ];

  static EnsState _onProcessFetchedHomeExamenRecommandesAction(
    EnsState state,
    ProcessFetchedHomeExamenRecommandesAction action,
  ) {
    var homeExamenRecommandesState = state.homeExamenRecommandesState;
    action.examensRecommandesAPlanifierLength.onSuccess((successResult) {
      homeExamenRecommandesState = HomeExamenRecommandesState(
        status: AllPurposesStatus.SUCCESS,
        examensRecommandesAPlanifierLength: successResult,
      );
    });
    action.examensRecommandesAPlanifierLength.onError((error) {
      homeExamenRecommandesState = const HomeExamenRecommandesState(status: AllPurposesStatus.ERROR);
    });
    return state.clone(
      homeExamenRecommandesState: HomeExamenRecommandesState(
        status: homeExamenRecommandesState.status,
        examensRecommandesAPlanifierLength: homeExamenRecommandesState.examensRecommandesAPlanifierLength,
      ),
    );
  }
}
