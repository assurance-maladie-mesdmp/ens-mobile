/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'allergies_redux.dart';

class AllergiesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchAllergiesAction>(AllergiesReducers._onFetchAllergiesAction).call,
        TypedReducer<EnsState, ProcessFetchAllergiesSuccessAction>(
          AllergiesReducers._onProcessFetchAllergiesSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAllergiesErrorAction>(
          AllergiesReducers._onProcessFetchAllergiesErrorAction,
        ).call,
        TypedReducer<EnsState, AddAllergieAction>(AllergiesReducers._onAddAllergieAction).call,
        TypedReducer<EnsState, UpdateAllergieAction>(AllergiesReducers._onUpdateAllergieAction).call,
        TypedReducer<EnsState, ProcessAddOrUpdateAllergieSuccessAction>(
          AllergiesReducers._onProcessAddOrUpdateAllergieSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessAddOrUpdateAllergieErrorAction>(
          AllergiesReducers._onProcessAddOrUpdateAllergieErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteAllergieSuccessAction>(
          AllergiesReducers._onProcessDeleteAllergieSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessTraitementRemovedFromAllergieAction>(
          AllergiesReducers._onProcessTraitementRemovedFromAllergieAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchLinkAllergiesSuccessAction>(
          AllergiesReducers._onProcessFetchLinkAllergiesSuccessAction,
        ).call,
      ];

  static EnsState _onFetchAllergiesAction(EnsState state, FetchAllergiesAction action) {
    if (action.force || state.allergiesState.allergiesListState.status.isNotSuccess()) {
      return state.clone(
        allergiesState: state.allergiesState.clone(
          allergiesListState: state.allergiesState.allergiesListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchAllergiesSuccessAction(EnsState state, ProcessFetchAllergiesSuccessAction action) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesListState: AllergiesListState(
          status: AllPurposesStatus.SUCCESS,
          allergies: action.allergies,
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchAllergiesErrorAction(EnsState state, ProcessFetchAllergiesErrorAction action) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesListState: const AllergiesListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddAllergieAction(EnsState state, AddAllergieAction action) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onUpdateAllergieAction(EnsState state, UpdateAllergieAction action) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessAddOrUpdateAllergieSuccessAction(
    EnsState state,
    ProcessAddOrUpdateAllergieSuccessAction action,
  ) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesEditStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessAddOrUpdateAllergieErrorAction(
    EnsState state,
    ProcessAddOrUpdateAllergieErrorAction action,
  ) {
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesEditStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onProcessDeleteAllergieSuccessAction(EnsState state, ProcessDeleteAllergieSuccessAction action) {
    final newAllergies = List<EnsAllergie>.from(state.allergiesState.allergiesListState.allergies)
      ..removeWhere((allergie) => allergie.id == action.allergieId);
    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesListState: state.allergiesState.allergiesListState.clone(allergies: newAllergies),
      ),
    );
  }

  static EnsState _onProcessTraitementRemovedFromAllergieAction(
    EnsState state,
    _ProcessTraitementRemovedFromAllergieAction action,
  ) {
    final traitementState = state.traitementsState;
    final traitement = traitementState.traitementsListState.traitements
        .firstWhereOrNull((traitement) => traitement.id == action.traitementId);
    final allergie = state.allergiesState.allergiesListState.allergies
        .firstWhereOrNull((allergie) => allergie.id == action.allergieId);

    final newAllergies = List<EnsAllergie>.from(state.allergiesState.allergiesListState.allergies);
    final newTraitements = List<EnsTraitement>.from(state.traitementsState.traitementsListState.traitements);

    if (allergie != null) {
      final newAllergie = EnsAllergie(
        id: allergie.id,
        name: allergie.name,
        comment: allergie.comment,
        linkedTraitementIds:
            allergie.linkedTraitementIds.where((traitementId) => traitementId != action.traitementId).toList(),
      );

      newAllergies.removeWhere((allergie) => allergie.id == action.allergieId);
      newAllergies.add(newAllergie);
    }

    if (traitement != null) {
      final newTraitement = EnsTraitement(
        id: traitement.id,
        name: traitement.name,
        startDate: traitement.startDate,
        linkedMaladieIds: traitement.linkedMaladieIds,
        linkedAllergieIds: traitement.linkedAllergieIds.where((allergieId) => allergieId != action.allergieId).toList(),
      );

      newTraitements.removeWhere((traitement) => traitement.id == action.traitementId);
      newTraitements.add(newTraitement);
    }

    return state.clone(
      allergiesState: state.allergiesState.clone(
        allergiesListState: state.allergiesState.allergiesListState.clone(allergies: newAllergies),
      ),
      traitementsState: state.traitementsState.clone(
        traitementsListState: state.traitementsState.traitementsListState.clone(traitements: newTraitements),
      ),
    );
  }

  static EnsState _onProcessFetchLinkAllergiesSuccessAction(
    EnsState state,
    ProcessFetchLinkAllergiesSuccessAction action,
  ) {
    if (state.allergiesState.allergiesListState.status.isNotSuccess()) {
      return state.clone(
        allergiesState: state.allergiesState.clone(
          allergiesListState: state.allergiesState.allergiesListState.clone(
            allergies: action.allergies.values.toList(),
          ),
        ),
      );
    }
    return state;
  }
}
