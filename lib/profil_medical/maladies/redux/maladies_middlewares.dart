/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'maladies_redux.dart';

class MaladiesMiddlewares {
  final IMaladiesRepository maladiesRepository;
  final IMaladiesInteractor maladiesInteractor;
  final ILinksInMemoryInteractor linksInMemoryInteractor;

  MaladiesMiddlewares._(
    this.maladiesRepository,
    this.maladiesInteractor,
    this.linksInMemoryInteractor,
  );

  static List<Middleware<EnsState>> create(
    IMaladiesRepository maladiesRepository,
    IMaladiesInteractor maladiesInteractor,
    ILinksInMemoryInteractor linksInMemoryInteractor,
  ) {
    final middleware = MaladiesMiddlewares._(maladiesRepository, maladiesInteractor, linksInMemoryInteractor);
    return [
      TypedMiddleware<EnsState, FetchMaladiesAction>(middleware._onFetchMaladiesAction).call,
      TypedMiddleware<EnsState, AddMaladieAction>(middleware._onAddMaladieAction).call,
      TypedMiddleware<EnsState, UpdateMaladieAction>(middleware._onUpdateMaladieAction).call,
      TypedMiddleware<EnsState, DeleteMaladieAction>(middleware._onDeleteMaladieAction).call,
      TypedMiddleware<EnsState, RemoveDocumentLinkedToMaladieAction>(
        middleware._onRemoveDocumentLinkedToMaladieAction,
      ).call,
      TypedMiddleware<EnsState, RemoveTraitementLinkedToMaladieAction>(
        middleware._onRemoveTraitementLinkedToMaladieAction,
      ).call,
    ];
  }

  Future<void> _onFetchMaladiesAction(Store<EnsState> store, FetchMaladiesAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final currentMaladiesListState = store.state.maladiesState.maladiesListState;

    if (action.force || currentMaladiesListState.status.isNotSuccess()) {
      final result = await maladiesRepository.getMaladies(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchMaladiesSuccessAction(
            maladies: successResult.maladies,
            nonConcerneDepuis: successResult.nonConcerneDepuis,
          ),
        );
        store.dispatch(
          ProcessFetchLinkTraitementsSuccessAction(
            traitements: successResult.traitements,
            from: LinkTraitementsFrom.MALADIE,
          ),
        );
      }).onError((error) {
        store.dispatch(ProcessFetchMaladiesErrorAction());
      });
    }
  }

  Future<void> _onAddMaladieAction(
    Store<EnsState> store,
    AddMaladieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final EditingMaladie edit = action.editingMaladie;
    final List<DocumentEditionCreation> docsToCreateAndLink = action.docsToCreateAndLink;
    final List<TraitementTemporaire> traitementToCreateAndLink = action.traitementToCreateAndLink;
    final isAddedFromIncitation = store.state.incitationPmlCategoryState.category.isFromMaladiesIncitation;

    final result = await maladiesInteractor.addMaladie(
      patientId: patientId,
      editingMaladie: edit,
      docsToCreateAndLink: docsToCreateAndLink,
      traitementToCreateAndLink: traitementToCreateAndLink,
    );

    result.onSuccess((_) {
      store.dispatch(ProcessAddOrUpdateMaladieSuccessAction());
      if (!isAddedFromIncitation) {
        store.dispatch(const DisplaySnackbarAction.success('Maladie ou sujet de santé ajouté(e)'));
      }
      store.dispatch(const FetchMonHistoireDeSanteAction(force: true));
      store.dispatch(const FetchMaladiesAction(force: true));
      if (traitementToCreateAndLink.isNotEmpty) {
        store.dispatch(const FetchTraitementsAction(force: true));
      }
      store.dispatch(AddSuccessfulRatingAction());
    }).onError((domainError) {
      store.dispatch(ProcessAddOrUpdateMaladieErrorAction());
      if (!isAddedFromIncitation && domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
    if (docsToCreateAndLink.isNotEmpty) {
      store.dispatch(FetchDocumentsAction(force: true));
    }
  }

  Future<void> _onUpdateMaladieAction(
    Store<EnsState> store,
    UpdateMaladieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final EditingMaladie edit = action.editingMaladie;
    final docsToCreateAndLink = action.docsToCreateAndLink;
    final traitementToCreateAndLink = action.traitementToCreateAndLink;
    final maladieToEdit = store.state.maladiesState.maladiesListState.maladies[edit.id];

    final result = await maladiesInteractor.updateMaladie(
      patientId: patientId,
      currentMaladie: maladieToEdit,
      editingMaladie: edit,
      docsToCreateAndLink: docsToCreateAndLink,
      traitementToCreateAndLink: traitementToCreateAndLink,
    );

    result.onSuccess((successResult) {
      store.dispatch(ProcessAddOrUpdateMaladieSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Maladie ou sujet de santé modifié(e)'));
      store.dispatch(const FetchMonHistoireDeSanteAction(force: true));
      store.dispatch(const FetchMaladiesAction(force: true));
    }).onError((domainError) {
      store.dispatch(ProcessAddOrUpdateMaladieErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });

    if (docsToCreateAndLink.isNotEmpty) {
      store.dispatch(FetchDocumentsAction(force: true));
    }
  }

  Future<void> _onDeleteMaladieAction(
    Store<EnsState> store,
    DeleteMaladieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await maladiesRepository.deleteMaladie(patientId, action.maladieId);
    result.onSuccess((successResult) {
      store.dispatch(ProcessDeleteMaladieSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Maladie ou sujet de santé supprimé(e)'));
      store.dispatch(const FetchMonHistoireDeSanteAction(force: true));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveDocumentLinkedToMaladieAction(
    Store<EnsState> store,
    RemoveDocumentLinkedToMaladieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await linksInMemoryInteractor.deleteDocumentLinkedToMaladie(
      store: store,
      documentId: action.documentId,
      maladieId: action.maladieId,
    );
    result.onSuccess((successResult) {
      store.dispatch(ProcessDocumentRemovedFromMaladieAction(action.maladieId, action.documentId));
      store.dispatch(const DisplaySnackbarAction.success('Document retiré'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveTraitementLinkedToMaladieAction(
    Store<EnsState> store,
    RemoveTraitementLinkedToMaladieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await linksInMemoryInteractor.deleteTraitementLinkedToMaladie(
      store: store,
      maladieId: action.maladieId,
      traitementId: action.traitementId,
    );
    result.onSuccess((successResult) {
      store.dispatch(ProcessTraitementRemovedFromMaladieAction(action.maladieId, action.traitementId));
      store.dispatch(const DisplaySnackbarAction.success('Traitement retiré'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
