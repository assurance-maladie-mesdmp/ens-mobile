/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'etablissements_de_sante_redux.dart';

class EtablissementsDeSanteReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchEtablissementsDeSanteAction>(
          EtablissementsDeSanteReducers._onFetchEtablissementsDeSanteAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEtablissementsDeSanteSuccessAction>(
          EtablissementsDeSanteReducers._onProcessFetchEtablissementsDeSanteSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEtablissementsDeSanteErrorAction>(
          EtablissementsDeSanteReducers._onProcessFetchEtablissementsDeSanteErrorAction,
        ).call,
        TypedReducer<EnsState, AddEsAction>(
          EtablissementsDeSanteReducers._onAddEsAction,
        ).call,
        TypedReducer<EnsState, _ProcessAddEsSuccessAction>(
          EtablissementsDeSanteReducers._onProcessAddEsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessAddEsErrorAction>(
          EtablissementsDeSanteReducers._onProcessAddEsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchEtablissementDeSanteFromIdNatDetailsAction>(
          EtablissementsDeSanteReducers._onFetchEtablissementDeSanteFromIdNatDetailsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction>(
          EtablissementsDeSanteReducers._onProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction>(
          EtablissementsDeSanteReducers._onProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchPharmaciesSuggestionsAction>(
          EtablissementsDeSanteReducers._onFetchPharmaciesSuggestionsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchPharmaciesSuggestionsSuccessAction>(
          EtablissementsDeSanteReducers._onProcessFetchPharmaciesSuggestionsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchPharmaciesSuggestionsErrorAction>(
          EtablissementsDeSanteReducers._onProcessFetchPharmaciesSuggestionsErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessRemoveEsSuccessAction>(
          EtablissementsDeSanteReducers._onProcessRemoveEsSuccessAction,
        ).call,
      ];

  static EnsState _onFetchEtablissementsDeSanteAction(
    EnsState state,
    FetchEtablissementsDeSanteAction action,
  ) {
    if (action.force || state.etablissementsDeSanteState.etablissementDeSanteListState.status.isNotSuccess()) {
      return state.clone(
        etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
          etablissementDeSanteListState: const EtablissementDeSanteListState(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchEtablissementsDeSanteSuccessAction(
    EnsState state,
    _ProcessFetchEtablissementsDeSanteSuccessAction action,
  ) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        etablissementDeSanteListState: EtablissementDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          etablissementsDeSante: action.etablissementsDeSante,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchEtablissementsDeSanteErrorAction(
    EnsState state,
    _ProcessFetchEtablissementsDeSanteErrorAction action,
  ) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        etablissementDeSanteListState: const EtablissementDeSanteListState(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchEtablissementDeSanteFromIdNatDetailsAction(
    EnsState state,
    FetchEtablissementDeSanteFromIdNatDetailsAction action,
  ) {
    final etablissementsDeSanteDetailsStates = Map<String, EtablissementDeSanteDetailsState>.of(
      state.etablissementsDeSanteState.etablissementsDeSanteDetailsStates,
    );
    final currentEsDetailsState = etablissementsDeSanteDetailsStates[action.idNat];
    if (currentEsDetailsState == null || currentEsDetailsState.status.isNotSuccess()) {
      etablissementsDeSanteDetailsStates[action.idNat] = const EtablissementDeSanteDetailsState(
        status: AllPurposesStatus.LOADING,
      );
      return state.clone(
        etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
          etablissementsDeSanteDetailsStates: etablissementsDeSanteDetailsStates,
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction(
    EnsState state,
    _ProcessFetchEtablissementDeSanteByIdNatDetailsSuccessAction action,
  ) {
    final etablissementsDeSanteDetailsStates = Map<String, EtablissementDeSanteDetailsState>.of(
      state.etablissementsDeSanteState.etablissementsDeSanteDetailsStates,
    );
    etablissementsDeSanteDetailsStates[action.idNat] = EtablissementDeSanteDetailsState(
      status: AllPurposesStatus.SUCCESS,
      etablissementDeSante: action.etablissementDeSante,
    );
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        etablissementsDeSanteDetailsStates: etablissementsDeSanteDetailsStates,
      ),
    );
  }

  static EnsState _onProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction(
    EnsState state,
    _ProcessFetchEtablissementDeSanteByIdNatDetailsErrorAction action,
  ) {
    final etablissementsDeSanteDetailsStates = Map<String, EtablissementDeSanteDetailsState>.of(
      state.etablissementsDeSanteState.etablissementsDeSanteDetailsStates,
    );
    etablissementsDeSanteDetailsStates[action.idNat] = const EtablissementDeSanteDetailsState(
      status: AllPurposesStatus.ERROR,
    );
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        etablissementsDeSanteDetailsStates: etablissementsDeSanteDetailsStates,
      ),
    );
  }

  static EnsState _onFetchPharmaciesSuggestionsAction(
    EnsState state,
    FetchPharmaciesSuggestionsAction action,
  ) {
    if (action.force || state.etablissementsDeSanteState.pharmacieSuggestionsState.status.isNotSuccess()) {
      return state.clone(
        etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
          pharmacieSuggestionsState:
              state.etablissementsDeSanteState.pharmacieSuggestionsState.clone(status: AllPurposesStatus.LOADING),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchPharmaciesSuggestionsSuccessAction(
    EnsState state,
    _ProcessFetchPharmaciesSuggestionsSuccessAction action,
  ) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        pharmacieSuggestionsState: state.etablissementsDeSanteState.pharmacieSuggestionsState.clone(
          status: AllPurposesStatus.SUCCESS,
          suggestions: action.suggestions,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchPharmaciesSuggestionsErrorAction(
    EnsState state,
    _ProcessFetchPharmaciesSuggestionsErrorAction action,
  ) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        pharmacieSuggestionsState: state.etablissementsDeSanteState.pharmacieSuggestionsState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessRemoveEsSuccessAction(EnsState state, _ProcessRemoveEsSuccessAction action) {
    final newEtablissementsDeSante = List<EtablissementDeSante>.from(
      state.etablissementsDeSanteState.etablissementDeSanteListState.etablissementsDeSante,
    )..removeWhere((es) => es.organizationId == action.organizationId);
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(
        etablissementDeSanteListState: EtablissementDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          etablissementsDeSante: newEtablissementsDeSante,
        ),
      ),
    );
  }

  static EnsState _onAddEsAction(EnsState state, AddEsAction action) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(addEsStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessAddEsSuccessAction(EnsState state, _ProcessAddEsSuccessAction action) {
    final suggestions =
        List<ActeurDeSanteSuggestion>.from(state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.suggestions)
          ..removeWhere((asSuggestion) => asSuggestion.id == action.etablissementDeSanteId);
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        acteurDeSanteSuggestionsStates: state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.clone(
          suggestions: suggestions,
        ),
      ),
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(addEsStatus: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessAddEsErrorAction(EnsState state, _ProcessAddEsErrorAction action) {
    return state.clone(
      etablissementsDeSanteState: state.etablissementsDeSanteState.clone(addEsStatus: AllPurposesStatus.ERROR),
    );
  }
}
