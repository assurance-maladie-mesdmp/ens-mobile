/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'directives_anticipees_redux.dart';

class DirectivesAnticipeesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchDirectivesAnticipeesAction>(
          DirectivesAnticipeesReducers._onFetchDirectivesAnticipeesAction,
        ).call,
        TypedReducer<EnsState, DeleteDirectivesAnticipeesAction>(
          DirectivesAnticipeesReducers._onDeleteDirectivesAnticipeesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchDirectivesAnticipeesSuccessAction>(
          DirectivesAnticipeesReducers._onProcessFetchDirectivesAnticipeesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchDirectivesAnticipeesErrorAction>(
          DirectivesAnticipeesReducers._onProcessFetchDirectivesAnticipeesErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteDirectivesAnticipeesSuccessAction>(
          DirectivesAnticipeesReducers._onProcessDeleteDirectivesAnticipeesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessUploadDirectivesAnticipeesSuccessAction>(
          DirectivesAnticipeesReducers._onProcessUploadDirectivesAnticipeesSuccessAction,
        ).call,
      ];

  static EnsState _onFetchDirectivesAnticipeesAction(EnsState state, FetchDirectivesAnticipeesAction action) {
    if (action.force || state.directivesAnticipeesState.status.isNotSuccessAndNotEmpty) {
      return state.clone(
        directivesAnticipeesState: const DirectivesAnticipeesState(status: AllPurposesWithEmptyStatus.LOADING),
      );
    }
    return state;
  }

  static EnsState _onDeleteDirectivesAnticipeesAction(EnsState state, DeleteDirectivesAnticipeesAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(isLastDeletionSuccessful: false),
    );
  }

  static EnsState _onProcessFetchDirectivesAnticipeesSuccessAction(
    EnsState state,
    _ProcessFetchDirectivesAnticipeesSuccessAction action,
  ) {
    final newDirectivesAncticipees = action.document;
    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents)
      ..addAll({newDirectivesAncticipees.id: newDirectivesAncticipees});

    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
      ),
      directivesAnticipeesState: DirectivesAnticipeesState(
        status: AllPurposesWithEmptyStatus.SUCCESS,
        documentId: newDirectivesAncticipees.id,
      ),
    );
  }

  static EnsState _onProcessFetchDirectivesAnticipeesErrorAction(
    EnsState state,
    _ProcessFetchDirectivesAnticipeesErrorAction action,
  ) {
    return state.clone(
      directivesAnticipeesState: action.error == DirectivesAnticipeesDomainError.NOT_FOUND
          ? const DirectivesAnticipeesState(status: AllPurposesWithEmptyStatus.EMPTY)
          : const DirectivesAnticipeesState(status: AllPurposesWithEmptyStatus.ERROR),
    );
  }

  static EnsState _onProcessDeleteDirectivesAnticipeesSuccessAction(
    EnsState state,
    ProcessDeleteDirectivesAnticipeesSuccessAction action,
  ) {
    final documentDeletedIds = action.documentDeletedIds;
    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents)
      ..removeWhere((key, _) => documentDeletedIds.contains(key));

    return state.clone(
      directivesAnticipeesState: const DirectivesAnticipeesState(
        status: AllPurposesWithEmptyStatus.EMPTY,
      ),
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
        isLastDeletionSuccessful: true,
      ),
    );
  }

  static EnsState _onProcessUploadDirectivesAnticipeesSuccessAction(
    EnsState state,
    _ProcessUploadDirectivesAnticipeesSuccessAction action,
  ) {
    final newDirectivesAncticipees = action.document;
    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents)
      ..addAll({newDirectivesAncticipees.id: newDirectivesAncticipees});

    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
      ),
      directivesAnticipeesState: DirectivesAnticipeesState(
        status: AllPurposesWithEmptyStatus.SUCCESS,
        documentId: newDirectivesAncticipees.id,
      ),
    );
  }
}
