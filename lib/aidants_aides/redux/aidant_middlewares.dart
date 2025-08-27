/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AidantMiddlewares {
  final IAidantsAidesRepository aidantsAidesRepository;

  AidantMiddlewares(this.aidantsAidesRepository);

  static List<Middleware<EnsState>> create(
    IAidantsAidesRepository aidantsAidesRepository,
  ) {
    final middlewares = AidantMiddlewares(aidantsAidesRepository);
    return [
      TypedMiddleware<EnsState, FetchInvitationsFromAidesAction>(middlewares._onFetchInvitationsFromAidesAction).call,
      TypedMiddleware<EnsState, FetchDelegationsPourAidantAction>(middlewares._onFetchDelegationsPourAidantAction).call,
      TypedMiddleware<EnsState, AcceptInvitationFromAideAction>(middlewares._onAcceptInvitationFromAideAction).call,
      TypedMiddleware<EnsState, RefuseInvitationFromAideAction>(middlewares._onRefuseInvitationFromAideAction).call,
      TypedMiddleware<EnsState, DeleteAccesAuProfilAideAction>(middlewares._onDeleteAccesAuProfilAideAction).call,
    ];
  }

  Future<void> _onFetchInvitationsFromAidesAction(
    Store<EnsState> store,
    FetchInvitationsFromAidesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.fetchInvitationsFromAides();
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchInvitationsFromAidesSuccessAction(successResult));
    }).onError((domainError) {
      store.dispatch(_ProcessFetchInvitationsFromAidesErrorAction());
    });
  }

  Future<void> _onFetchDelegationsPourAidantAction(
    Store<EnsState> store,
    FetchDelegationsPourAidantAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.fetchDelegationsPourAidant();
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessFetchDelegationsPourAidantSuccessAction(
          delegationsEnCours: successResult.delegationsEnCours,
        ),
      );
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessFetchDelegationsPourAidantErrorAction());
    });
  }

  Future<void> _onAcceptInvitationFromAideAction(
    Store<EnsState> store,
    AcceptInvitationFromAideAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final invitationFromAide = action.invitationFromAide;
    final result = await aidantsAidesRepository.acceptInvitationFromAide(
      invitationId: invitationFromAide.invitationId,
    );
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessAcceptInvitationFromAideSuccessAction(
          invitationFromAide: invitationFromAide,
          attestationPdf: successResult.attestationPdf,
        ),
      );
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessAcceptInvitationFromAideErrorAction());
    });
  }

  Future<void> _onRefuseInvitationFromAideAction(
    Store<EnsState> store,
    RefuseInvitationFromAideAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.refuseInvitationFromAide(invitationId: action.invitationId);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('L\'invitation a bien été refusée'));
      store.dispatch(_ProcessRefuseInvitationFromAideSuccessAction(invitationId: action.invitationId));
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessRefuseInvitationFromAideErrorAction());
    });
  }

  Future<void> _onDeleteAccesAuProfilAideAction(
    Store<EnsState> store,
    DeleteAccesAuProfilAideAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.deleteDelegation(delegationId: action.delegationId);

    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessDeleteAccesAuProfilAideSuccessAction(
          delegationId: action.delegationId,
          patientId: action.patientId,
          attestation: successResult.attestationPdf,
        ),
      );
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessDeleteAccesAuProfilAideErrorAction());
    });
  }
}
