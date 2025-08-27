/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'allergies_redux.dart';

class AllergiesMiddlewares {
  final IAllergiesRepository allergiesRepository;
  final IAllergiesInteractor allergiesInteractor;
  final ILinksInMemoryInteractor linksInMemoryInteractor;

  AllergiesMiddlewares._(this.allergiesRepository, this.allergiesInteractor, this.linksInMemoryInteractor);

  static List<Middleware<EnsState>> create(
    IAllergiesRepository allergiesRepository,
    ILinksInMemoryInteractor linksInMemoryInteractor,
    IAllergiesInteractor allergiesInteractor,
  ) {
    final middleware = AllergiesMiddlewares._(allergiesRepository, allergiesInteractor, linksInMemoryInteractor);
    return [
      TypedMiddleware<EnsState, FetchAllergiesAction>(middleware._onFetchAllergiesAction).call,
      TypedMiddleware<EnsState, AddAllergieAction>(middleware._onAddAllergieAction).call,
      TypedMiddleware<EnsState, UpdateAllergieAction>(middleware._onUpdateAllergieAction).call,
      TypedMiddleware<EnsState, DeleteAllergieAction>(middleware._onDeleteAllergieAction).call,
      TypedMiddleware<EnsState, RemoveTraitementLinkedToAllergieAction>(
        middleware._onRemoveTraitementLinkedToAllergieAction,
      ).call,
    ];
  }

  Future<void> _onFetchAllergiesAction(
    Store<EnsState> store,
    FetchAllergiesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final allergiesListState = store.state.allergiesState.allergiesListState;
    if (action.force || allergiesListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await allergiesRepository.getAllergies(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchAllergiesSuccessAction(
            allergies: successResult.allergies,
            nonConcerneDepuis: successResult.unconcernedDeclarationDate,
          ),
        );
        store.dispatch(
          ProcessFetchLinkTraitementsSuccessAction(
            traitements: successResult.traitements,
            from: LinkTraitementsFrom.ALLERGIE,
          ),
        );
      }).onError((_) {
        store.dispatch(ProcessFetchAllergiesErrorAction());
      });
    }
  }

  Future<void> _onAddAllergieAction(
    Store<EnsState> store,
    AddAllergieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final isAddedFromIncitation = store.state.incitationPmlCategoryState.category.isFromAllergiesIncitation;

    final result = await allergiesInteractor.addAllergie(
      patientId: patientId,
      name: action.name,
      comment: action.comment,
      traitementsInMesToLink: action.traitementsInMesToLink,
      newTraitementsToLink: action.newTraitementsToLink,
    );
    result.onSuccess((successResult) {
      if (!isAddedFromIncitation) {
        store.dispatch(const DisplaySnackbarAction.success('Allergie ajoutée'));
      }
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessAddOrUpdateAllergieSuccessAction());
      store.dispatch(const FetchAllergiesAction(force: true));
      if (action.newTraitementsToLink.isNotEmpty) {
        store.dispatch(const FetchTraitementsAction(force: true));
      }
    }).onError((error) {
      if (!isAddedFromIncitation) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      }
      store.dispatch(ProcessAddOrUpdateAllergieErrorAction());
    });
  }

  Future<void> _onUpdateAllergieAction(
    Store<EnsState> store,
    UpdateAllergieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);

    final result = await allergiesInteractor.updateAllergie(
      id: action.id,
      patientId: patientId,
      name: action.name,
      comment: action.comment,
      traitementsInMesToLink: action.traitementsLinks,
      newTraitementsToLink: action.traitementToCreateAndLink,
    );

    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Allergie modifiée'));
      store.dispatch(ProcessAddOrUpdateAllergieSuccessAction());
      store.dispatch(const FetchAllergiesAction(force: true));
      if (action.traitementToCreateAndLink.isNotEmpty) {
        store.dispatch(const FetchTraitementsAction(force: true));
      }
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessAddOrUpdateAllergieErrorAction());
    });
  }

  Future<void> _onDeleteAllergieAction(
    Store<EnsState> store,
    DeleteAllergieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await allergiesRepository.deleteAllergie(patientId, action.allergieId);
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Allergie supprimée'));
      store.dispatch(ProcessDeleteAllergieSuccessAction(successResult));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveTraitementLinkedToAllergieAction(
    Store<EnsState> store,
    RemoveTraitementLinkedToAllergieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await linksInMemoryInteractor.deleteTraitementLinkedToAllergie(
      store: store,
      allergieId: action.allergieId,
      traitementId: action.traitementId,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessTraitementRemovedFromAllergieAction(action.allergieId, action.traitementId));
      store.dispatch(const DisplaySnackbarAction.success('Traitement retiré'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
