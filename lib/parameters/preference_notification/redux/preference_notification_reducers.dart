/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'preference_notification_redux.dart';

class PreferenceNotificationReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchPreferenceNotificationAction>(
          PreferenceNotificationReducers._onFetchPreferencesNotificationsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedPreferenceNotificationSuccessAction>(
          PreferenceNotificationReducers._onProcessFetchedPreferencesNotificationsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedPreferenceNotificationErrorAction>(
          PreferenceNotificationReducers._onProcessFetchedPreferencesNotificationsErrorAction,
        ).call,
        TypedReducer<EnsState, SetPreferenceNotificationAction>(
          PreferenceNotificationReducers._onSetPreferenceNotificationAction,
        ).call,
        TypedReducer<EnsState, _ProcessSetPreferenceNotificationSuccessAction>(
          PreferenceNotificationReducers._onProcessSetPreferenceNotificationSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSetPreferenceNotificationErrorAction>(
          PreferenceNotificationReducers._onProcessSetPreferenceNotificationErrorAction,
        ).call,
      ];

  static EnsState _onFetchPreferencesNotificationsAction(EnsState state, FetchPreferenceNotificationAction action) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        status: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessFetchedPreferencesNotificationsSuccessAction(
    EnsState state,
    _ProcessFetchedPreferenceNotificationSuccessAction action,
  ) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        status: AllPurposesStatus.SUCCESS,
        preferencesNotifications: action.preferencesNotifications,
      ),
    );
  }

  static EnsState _onProcessFetchedPreferencesNotificationsErrorAction(
    EnsState state,
    _ProcessFetchedPreferenceNotificationErrorAction action,
  ) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        status: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onSetPreferenceNotificationAction(EnsState state, SetPreferenceNotificationAction action) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        preferencesNotifications: state.preferenceNotificationState.preferencesNotifications
            .map(
              (preference) =>
                  preference.typePreferenceNotification == action.preferenceNotification.typePreferenceNotification
                      ? preference.clone(isLoading: true)
                      : preference,
            )
            .toList(),
      ),
    );
  }

  static EnsState _onProcessSetPreferenceNotificationSuccessAction(
    EnsState state,
    _ProcessSetPreferenceNotificationSuccessAction action,
  ) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        preferencesNotifications: state.preferenceNotificationState.preferencesNotifications
            .map(
              (preference) =>
                  preference.typePreferenceNotification == action.preferenceNotification.typePreferenceNotification
                      ? action.preferenceNotification
                      : preference,
            )
            .toList(),
      ),
    );
  }

  static EnsState _onProcessSetPreferenceNotificationErrorAction(
    EnsState state,
    _ProcessSetPreferenceNotificationErrorAction action,
  ) {
    return state.clone(
      preferenceNotificationState: state.preferenceNotificationState.clone(
        preferencesNotifications: state.preferenceNotificationState.preferencesNotifications
            .map(
              (preference) => preference.typePreferenceNotification == action.typePreferenceNotification
                  ? preference.clone(isLoading: false)
                  : preference,
            )
            .toList(),
      ),
    );
  }
}
