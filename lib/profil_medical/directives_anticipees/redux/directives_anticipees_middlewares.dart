/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'directives_anticipees_redux.dart';

class DirectivesAnticipeesMiddlewares {
  final IDirectivesAnticipeesRepository _directivesAnticipeesRepository;

  DirectivesAnticipeesMiddlewares(this._directivesAnticipeesRepository);

  static List<Middleware<EnsState>> create(
    IDirectivesAnticipeesRepository directivesAnticipeesRepository,
  ) {
    final middlewares = DirectivesAnticipeesMiddlewares(directivesAnticipeesRepository);

    return [
      TypedMiddleware<EnsState, FetchDirectivesAnticipeesAction>(middlewares._onFetchDirectivesAnticipeesAction).call,
      TypedMiddleware<EnsState, UploadDirectivesAnticipeesAction>(middlewares._onUploadDirectivesAnticipeesAction).call,
    ];
  }

  Future<void> _onFetchDirectivesAnticipeesAction(
    Store<EnsState> store,
    FetchDirectivesAnticipeesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.directivesAnticipeesState.status.isNotSuccessAndNotEmpty) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _directivesAnticipeesRepository.getDirectivesAnticipeesDocument(patientId);
      result.onSuccess((document) {
        store.dispatch(_ProcessFetchDirectivesAnticipeesSuccessAction(document));
      }).onError((error) {
        if (error is DirectivesAnticipeesDomainError) {
          store.dispatch(_ProcessFetchDirectivesAnticipeesErrorAction(error));
        } else {
          store.dispatch(_ProcessFetchDirectivesAnticipeesErrorAction(DirectivesAnticipeesDomainError.GENERIC));
        }
      });
    }
  }

  Future<void> _onUploadDirectivesAnticipeesAction(
    Store<EnsState> store,
    UploadDirectivesAnticipeesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _directivesAnticipeesRepository.postDirectivesAnticipeesDocuments(
      patientId,
      action.newDocument,
    );
    result.onSuccess((newDoc) {
      final doc = newDoc.withProprietaire(
        Proprietaire(
          id: newDoc.proprietaire.id,
          firstName: UserUtils.getFirstName(store.state.userState.currentProfile?.prenom),
          lastName: UserUtils.geLastName(store.state.userState.currentProfile?.nom),
          ownerType: newDoc.proprietaire.ownerType,
          isPsClickable: newDoc.proprietaire.isPsClickable,
        ),
      );
      store.dispatch(_ProcessUploadDirectivesAnticipeesSuccessAction(document: doc));
    }).onError((error) {
      final errorMessage = error.errorMessage;
      if (errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(errorMessage));
      }
    });

    result.onSuccess((document) {
      store.dispatch(
        ProcessDocumentUploadedAction(
          uploadResult: UploadDocumentResult.success(patientId, document.id, document.title),
        ),
      );
      store.dispatch(const DisplaySnackbarAction.success('Directives anticipées ajoutées'));
      store.dispatch(CancelMultiPageStateAction());
      store.dispatch(AddSuccessfulRatingAction());
    }).onError((domainError) {
      store.dispatch(
        ProcessDocumentUploadedAction(
          uploadResult: UploadDocumentResult.error(
            patientId,
            domainError as DirectivesAnticipeesDomainError,
            action.newDocument,
          ),
        ),
      );
    });
  }
}
