/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'preference_notification_redux.dart';

class PreferenceNotificationMiddlewares {
  final IPreferenceNotificationRepository _preferenceNotificationRepository;

  PreferenceNotificationMiddlewares(this._preferenceNotificationRepository);

  static List<Middleware<EnsState>> create(IPreferenceNotificationRepository preferenceNotificationRepository) {
    final middlewares = PreferenceNotificationMiddlewares(preferenceNotificationRepository);

    return [
      TypedMiddleware<EnsState, FetchPreferenceNotificationAction>(middlewares._onFetchPreferencesNotificationsAction)
          .call,
      TypedMiddleware<EnsState, SetPreferenceNotificationAction>(middlewares._onSetPreferenceNotificationAction).call,
    ];
  }

  Future<void> _onFetchPreferencesNotificationsAction(
    Store<EnsState> store,
    FetchPreferenceNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _preferenceNotificationRepository.getPreferenceNotification(patientId);
    result
        .onSuccess(
          (successResult) => store.dispatch(_ProcessFetchedPreferenceNotificationSuccessAction(successResult)),
        )
        .onError((_) => store.dispatch(_ProcessFetchedPreferenceNotificationErrorAction()));
  }

  Future<void> _onSetPreferenceNotificationAction(
    Store<EnsState> store,
    SetPreferenceNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result =
        await _preferenceNotificationRepository.setPreferenceNotification(patientId, action.preferenceNotification);
    result.onSuccess(
      (_) {
        store.dispatch(const DisplaySnackbarAction.success('Modification prise en compte'));
        store.dispatch(
          _ProcessSetPreferenceNotificationSuccessAction(
            PreferenceNotification(
              typePreferenceNotification: action.preferenceNotification.typePreferenceNotification,
              isActive: action.preferenceNotification.isActive,
            ),
          ),
        );
      },
    ).onError(
      (_) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        store.dispatch(
          _ProcessSetPreferenceNotificationErrorAction(action.preferenceNotification.typePreferenceNotification),
        );
      },
    );
  }
}
