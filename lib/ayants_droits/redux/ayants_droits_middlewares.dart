/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ayants_droits_redux.dart';

class AyantsDroitsMiddlewares {
  final IAyantsDroitsRepository ayantsDroitsRepository;

  AyantsDroitsMiddlewares._(this.ayantsDroitsRepository);

  static List<Middleware<EnsState>> create(IAyantsDroitsRepository ayantsDroitsRepository) {
    final middleware = AyantsDroitsMiddlewares._(ayantsDroitsRepository);

    return [
      TypedMiddleware<EnsState, FetchProfilsRattachesAndAdPendingInvitationsAction>(
        middleware._onFetchProfilsRattachesAndAdPendingInvitationsAction,
      ).call,
      TypedMiddleware<EnsState, SendAyantDroitInvitationConfirmationAction>(
        middleware._onSendAyantDroitInvitationConfirmationAction,
      ).call,
    ];
  }

  Future<void> _onFetchProfilsRattachesAndAdPendingInvitationsAction(
    Store<EnsState> store,
    FetchProfilsRattachesAndAdPendingInvitationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.profilsRattachesState.status.isNotSuccess() ||
        store.state.ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroitsStatus.isNotSuccess()) {
      final patientId = UserSelectors.getConnectedUserPatientId(store.state);
      final result = await ayantsDroitsRepository.getProfilsRattachesAndAdPendingInvitations(patientId);
      result.profilsRattachesResponse.onSuccess((successResult) {
        store.dispatch(ProcessFetchProfilsRattachesSuccessAction(successResult));
      }).onError((domainError) {
        store.dispatch(ProcessFetchProfilsRattachesErrorAction());
      });
      result.pendingInvitationResponse.onSuccess((successResult) {
        store.dispatch(ProcessFetchAyantsDroitsPendingInvitationsSuccessAction(successResult));
      }).onError((domainError) {
        store.dispatch(ProcessFetchAyantsDroitsPendingInvitationsErrorAction());
      });
    }
  }

  Future<void> _onSendAyantDroitInvitationConfirmationAction(
    Store<EnsState> store,
    SendAyantDroitInvitationConfirmationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await ayantsDroitsRepository.sendAyantDroitInvitationConfirmation(
      adPartageProfil: action.adPartageProfil,
      odId: patientId,
      statutPartage: action.confirmationPartageStatut,
    );
    result.onSuccess((_) {
      store.dispatch(
        _ProcessSendAyantDroitInvitationConfirmationSuccessAction(
          invitationConfirmedProfile: action.adPartageProfil,
          statutPartage: action.confirmationPartageStatut,
        ),
      );
    });
    result.onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessSendAyantDroitInvitationConfirmationErrorAction());
    });
  }
}
