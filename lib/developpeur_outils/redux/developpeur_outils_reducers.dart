/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'developpeur_outils_redux.dart';

class DeveloppeurOutilsReducers {
  static List<Reducer<EnsInitialState>> create() => [
        TypedReducer<EnsInitialState, ResetSecureStorage>(
          DeveloppeurOutilsReducers._onResetSecureStorage,
        ).call,
        TypedReducer<EnsInitialState, _ProcessDeviceInformation>(
          DeveloppeurOutilsReducers._onProcessGetDeveloppeurMenuInformation,
        ).call,
        TypedReducer<EnsInitialState, _ProcessShouldSkipPasswordless>(
          DeveloppeurOutilsReducers._onProcessShouldSkipPasswordless,
        ).call,
        TypedReducer<EnsInitialState, ClearHistoriqueAnalyticsAction>(
          DeveloppeurOutilsReducers._onClearAnalyticsHistory,
        ).call,
        TypedReducer<EnsInitialState, LogAnalyticsAction>(
          DeveloppeurOutilsReducers._onLogAnalytics,
        ).call,
      ];

  static EnsInitialState _onResetSecureStorage(EnsInitialState state, ResetSecureStorage action) {
    return state.clone(username: Optional.ofNullable(null));
  }

  static EnsInitialState _onProcessGetDeveloppeurMenuInformation(
    EnsInitialState state,
    _ProcessDeviceInformation action,
  ) {
    return state.clone(
      developpeurOutilsState: state.developpeurOutilsState.clone(
        deviceVersion: action.deviceVersion,
        deviceModel: action.deviceModel,
        deviceManufacture: action.deviceManufacture,
      ),
    );
  }

  static EnsInitialState _onProcessShouldSkipPasswordless(
    EnsInitialState state,
    _ProcessShouldSkipPasswordless action,
  ) {
    return state.clone(
      developpeurOutilsState: state.developpeurOutilsState.clone(
        shouldSkipPasswordlessForActivation: action.shouldSkipPasswordlessForActivation,
        shouldSkipPasswordlessForConnexion: action.shouldSkipPasswordlessForConnexion,
      ),
    );
  }

  static EnsInitialState _onLogAnalytics(
    EnsInitialState state,
    LogAnalyticsAction action,
  ) {
    return state.clone(
      developpeurOutilsState: state.developpeurOutilsState.clone(
        historiqueAnalytics: List.from(state.developpeurOutilsState.historiqueAnalytics)
          ..add(TagHistory(submissionDate: DateTime.now(), tag: action.tag)),
      ),
    );
  }

  static EnsInitialState _onClearAnalyticsHistory(
    EnsInitialState state,
    ClearHistoriqueAnalyticsAction action,
  ) {
    return state.clone(
      developpeurOutilsState: state.developpeurOutilsState.clone(
        historiqueAnalytics: List.empty(),
      ),
    );
  }
}
