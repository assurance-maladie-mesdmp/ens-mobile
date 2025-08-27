/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_redux.dart';

class PartagerProfilReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchPartagerProfilGestionnairesAction>(
          PartagerProfilReducers._onFetchPartagerProfilGestionnairesAction,
        ).call,
        TypedReducer<EnsState, _ProcessPartagerProfilGestionnairesErrorAction>(
          PartagerProfilReducers._onProcessPartagerProfilGestionnairesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessPartagerProfilGestionnairesSuccessAction>(
          PartagerProfilReducers._onProcessPartagerProfilGestionnairesSuccessAction,
        ).call,
      ];

  static EnsState _onFetchPartagerProfilGestionnairesAction(
    EnsState currentState,
    FetchPartagerProfilGestionnairesAction action,
  ) {
    return currentState.clone(
      partagerProfilState: currentState.partagerProfilState.clone(status: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessPartagerProfilGestionnairesErrorAction(
    EnsState currentState,
    _ProcessPartagerProfilGestionnairesErrorAction action,
  ) {
    return currentState.clone(
      partagerProfilState: currentState.partagerProfilState.clone(status: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onProcessPartagerProfilGestionnairesSuccessAction(
    EnsState currentState,
    _ProcessPartagerProfilGestionnairesSuccessAction action,
  ) {
    return currentState.clone(
      partagerProfilState: currentState.partagerProfilState.clone(
        status: AllPurposesStatus.SUCCESS,
        gestionnaires: action.gestionnaires,
      ),
    );
  }
}
