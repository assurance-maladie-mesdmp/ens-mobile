/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'maladies_redux.dart';

class MaladiesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchMaladiesAction>(MaladiesReducers._onFetchMaladiesAction).call,
        TypedReducer<EnsState, ProcessFetchMaladiesSuccessAction>(MaladiesReducers._onProcessFetchMaladiesSuccessAction)
            .call,
        TypedReducer<EnsState, ProcessFetchMaladiesErrorAction>(MaladiesReducers._onProcessFetchMaladiesErrorAction)
            .call,
        TypedReducer<EnsState, AddMaladieAction>(MaladiesReducers._onAddMaladieAction).call,
        TypedReducer<EnsState, UpdateMaladieAction>(MaladiesReducers._onUpdateMaladieAction).call,
        TypedReducer<EnsState, ProcessAddOrUpdateMaladieSuccessAction>(
          MaladiesReducers._onProcessAddOrUpdateMaladieSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessAddOrUpdateMaladieErrorAction>(
          MaladiesReducers._onProcessAddOrUpdateMaladieErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteMaladieSuccessAction>(MaladiesReducers._onProcessDeletedMaladieAction).call,
        TypedReducer<EnsState, ProcessDeleteDocumentsSuccessAction>(
          MaladiesReducers._onProcessDeleteDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessTraitementRemovedFromMaladieAction>(
          MaladiesReducers._onProcessTraitementRemovedFromMaladieAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentRemovedFromMaladieAction>(
          MaladiesReducers._onProcessDocumentRemovedFromMaladieAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchLinkMaladiesSuccessAction>(
          MaladiesReducers._onProcessFetchLinkMaladiesSuccessAction,
        ).call,
      ];

  static EnsState _onFetchMaladiesAction(EnsState state, FetchMaladiesAction action) {
    if (action.force || state.maladiesState.maladiesListState.status.isNotSuccess()) {
      return state.clone(
        maladiesState: state.maladiesState.clone(
          maladiesListState: state.maladiesState.maladiesListState.clone(status: AllPurposesStatus.LOADING),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchMaladiesSuccessAction(EnsState state, ProcessFetchMaladiesSuccessAction action) {
    return state.clone(
      maladiesState: state.maladiesState.clone(
        maladiesListState: MaladiesListState(
          status: AllPurposesStatus.SUCCESS,
          maladies: {for (final maladie in action.maladies) maladie.id: maladie},
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMaladiesErrorAction(EnsState state, ProcessFetchMaladiesErrorAction action) {
    return state.clone(
      maladiesState: state.maladiesState.clone(
        maladiesListState: const MaladiesListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddMaladieAction(EnsState state, AddMaladieAction action) {
    return state.clone(
      maladiesState: state.maladiesState.clone(maladieEditStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onUpdateMaladieAction(EnsState state, UpdateMaladieAction action) {
    return state.clone(
      maladiesState: state.maladiesState.clone(maladieEditStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessAddOrUpdateMaladieSuccessAction(
    EnsState state,
    ProcessAddOrUpdateMaladieSuccessAction action,
  ) {
    return state.clone(
      maladiesState: state.maladiesState.clone(maladieEditStatus: AllPurposesStatus.SUCCESS),
      documentsState: state.documentsState.clone(documentsBeingLinked: []),
    );
  }

  static EnsState _onProcessAddOrUpdateMaladieErrorAction(
    EnsState state,
    ProcessAddOrUpdateMaladieErrorAction action,
  ) {
    return state.clone(
      maladiesState: state.maladiesState.clone(maladieEditStatus: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onProcessDeletedMaladieAction(EnsState state, ProcessDeleteMaladieSuccessAction action) {
    final Map<String, EnsMaladie> newMaladies = state.maladiesState.maladiesListState.maladies;
    newMaladies.removeWhere((key, value) => key == action.maladieId);
    return state.clone(
      maladiesState: state.maladiesState.clone(
        maladiesListState: state.maladiesState.maladiesListState.clone(maladies: newMaladies),
      ),
    );
  }

  static EnsState _onProcessDeleteDocumentsSuccessAction(EnsState state, ProcessDeleteDocumentsSuccessAction action) {
    return state.clone(maladiesState: _updateMaladiesListStateAfterDocumentDeletion(state, action.deletedDocsIds));
  }

  static MaladiesState _updateMaladiesListStateAfterDocumentDeletion(
    EnsState state,
    List<String> documentsIds,
  ) {
    final newMaladies = state.maladiesState.maladiesListState.maladies.map((id, maladie) {
      final newDocList = List<String>.from(maladie.linkedDocumentIds)
        ..removeWhere(
          (documentId) => documentsIds.contains(documentId),
        );
      return MapEntry(
        id,
        EnsMaladie(
          id: maladie.id,
          name: maladie.name,
          startDate: maladie.startDate,
          linkedDocumentIds: newDocList,
          comment: maladie.comment,
          endDate: maladie.endDate,
          linkedTraitementIds: maladie.linkedTraitementIds,
        ),
      );
    });

    return state.maladiesState.clone(
      maladiesListState: state.maladiesState.maladiesListState.clone(maladies: newMaladies),
    );
  }

  static EnsState _onProcessTraitementRemovedFromMaladieAction(
    EnsState state,
    ProcessTraitementRemovedFromMaladieAction action,
  ) {
    var traitementState = state.traitementsState;
    var maladieState = state.maladiesState;
    final maladie = state.maladiesState.maladiesListState.maladies[action.maladieId];
    final traitement = state.traitementsState.traitementsListState.traitements
        .where((traitement) => traitement.id == action.traitementId)
        .firstOrNull;

    if (maladie != null) {
      final newMaladie = EnsMaladie(
        id: maladie.id,
        name: maladie.name,
        startDate: maladie.startDate,
        linkedDocumentIds: maladie.linkedDocumentIds,
        linkedTraitementIds:
            maladie.linkedTraitementIds.where((traitementId) => traitementId != action.traitementId).toList(),
      );

      final newMaladies = state.maladiesState.maladiesListState.maladies.map((id, maladie) {
        if (id == action.maladieId) {
          return MapEntry(id, newMaladie);
        }
        return MapEntry(id, maladie);
      });

      maladieState = maladieState.clone(
        maladiesListState: state.maladiesState.maladiesListState.clone(maladies: newMaladies),
      );
    }

    if (traitement != null) {
      final newTraitement = EnsTraitement(
        id: traitement.id,
        name: traitement.name,
        startDate: traitement.startDate,
        linkedMaladieIds: traitement.linkedMaladieIds.where((maladieId) => maladieId != action.maladieId).toList(),
        linkedAllergieIds: traitement.linkedAllergieIds,
      );
      final newTraitements = state.traitementsState.traitementsListState.traitements;

      newTraitements.removeWhere((traitement) => traitement.id == action.traitementId);
      newTraitements.add(newTraitement);

      traitementState = traitementState.clone(
        traitementsListState: state.traitementsState.traitementsListState.clone(traitements: newTraitements),
      );
    }
    return state.clone(traitementsState: traitementState, maladiesState: maladieState);
  }

  static EnsState _onProcessDocumentRemovedFromMaladieAction(
    EnsState state,
    ProcessDocumentRemovedFromMaladieAction action,
  ) {
    var newMaladiesState = state.maladiesState;
    final maladie = state.maladiesState.maladiesListState.maladies[action.maladieId];

    if (maladie != null) {
      final newMaladie = EnsMaladie(
        id: maladie.id,
        name: maladie.name,
        startDate: maladie.startDate,
        linkedDocumentIds: maladie.linkedDocumentIds.where((documentId) => documentId != action.documentId).toList(),
        linkedTraitementIds: maladie.linkedTraitementIds,
      );

      final newMaladies = state.maladiesState.maladiesListState.maladies.map((id, maladie) {
        if (id == action.maladieId) {
          return MapEntry(id, newMaladie);
        }
        return MapEntry(id, maladie);
      });

      newMaladiesState = newMaladiesState.clone(
        maladiesListState: state.maladiesState.maladiesListState.clone(maladies: newMaladies),
      );
    }

    return state.clone(maladiesState: newMaladiesState);
  }

  static EnsState _onProcessFetchLinkMaladiesSuccessAction(
    EnsState state,
    ProcessFetchLinkMaladiesSuccessAction action,
  ) {
    if (state.maladiesState.maladiesListState.status.isNotSuccess()) {
      return state.clone(
        maladiesState: state.maladiesState.clone(
          maladiesListState: state.maladiesState.maladiesListState.clone(
            maladies: action.maladies,
          ),
        ),
      );
    }
    return state;
  }
}
