/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AideMiddlewares {
  final IAidantsAidesRepository aidantsAidesRepository;

  AideMiddlewares(this.aidantsAidesRepository);

  static List<Middleware<EnsState>> create(
    IAidantsAidesRepository aidantsAidesRepository,
  ) {
    final middlewares = AideMiddlewares(aidantsAidesRepository);
    return [
      TypedMiddleware<EnsState, FetchPotentielAidantAction>(middlewares._onFetchPotentielAidantAction).call,
      TypedMiddleware<EnsState, SendInvitationToPotentielAidantAction>(
        middlewares._onSendInvitationToPotentielAidantAction,
      ).call,
      TypedMiddleware<EnsState, FetchDelegationsPourAideAction>(middlewares._onFetchDelegationsPourAideAction).call,
      TypedMiddleware<EnsState, DeleteAccesDeAidantAction>(middlewares._onDeleteAccesDeAidantAction).call,
    ];
  }

  Future<void> _onFetchPotentielAidantAction(
    Store<EnsState> store,
    FetchPotentielAidantAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.fetchPotentielAidant(
      numeroSecu: action.numeroSecu,
      firstName: action.firstName,
      lastName: action.lastName,
      birthDate: action.birthDate,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchPotentielAidantSuccessAction(potentielAidant: successResult));
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessFetchPotentielAidantErrorAction());
    });
  }

  Future<void> _onSendInvitationToPotentielAidantAction(
    Store<EnsState> store,
    SendInvitationToPotentielAidantAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final potentitelAidant = store.state.aideState.sendInvitationState.potentielAidant;
    if (potentitelAidant != null) {
      final potentielAidantPatientId = potentitelAidant.patientId;
      final transactionId = potentitelAidant.transactionId;
      final result = await aidantsAidesRepository.sendInvitationToPotentielAidant(
        patientId: potentielAidantPatientId,
        transactionId: transactionId,
      );
      result.onSuccess((_) {
        store.dispatch(_ProcessSendInvitationToPotentielAidantSuccessAction());
        store.dispatch(const DisplaySnackbarAction.success('Demande de partage de profil envoyée'));
      }).onError((domainError) {
        if (domainError.errorMessage != null) {
          store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
        }
        store.dispatch(_ProcessSendInvitationToPotentielAidantErrorAction());
      });
    }
  }

  Future<void> _onFetchDelegationsPourAideAction(
    Store<EnsState> store,
    FetchDelegationsPourAideAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.fetchDelegationsPourAide();
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessFetchDelegationsPourAideSuccessAction(
          delegationsEnCours: successResult.delegationsEnCours,
          delegationsEnAttente: successResult.delegationsEnAttente,
        ),
      );
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessFetchDelegationsPourAideErrorAction());
    });
  }

  Future<void> _onDeleteAccesDeAidantAction(
    Store<EnsState> store,
    DeleteAccesDeAidantAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await aidantsAidesRepository.deleteDelegation(delegationId: action.delegationId);

    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessDeleteAccesDeAidantSuccessAction(
          delegationId: action.delegationId,
          attestationDocumentId: successResult.attestationDocumentId,
        ),
      );
    }).onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(_ProcessDeleteAccesDeAidantErrorAction());
    });
  }
}
