/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professionnels_de_sante_redux.dart';

class ProfessionnelsDeSanteReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchProfessionnelsDeSanteAction>(
          ProfessionnelsDeSanteReducers._onFetchProfessionnelsDeSanteAction,
        ).call,
        TypedReducer<EnsState, FetchProfessionnelsDeSanteSynchroMedecinTraitantAction>(
          ProfessionnelsDeSanteReducers._onFetchProfessionnelsDeSanteSynchroMedecinTraitantAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelsDeSanteSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteErrorAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelsDeSanteErrorAction,
        ).call,
        TypedReducer<EnsState, AddPsAction>(ProfessionnelsDeSanteReducers._onAddPsAction).call,
        TypedReducer<EnsState, _ProcessAddPsSuccessAction>(ProfessionnelsDeSanteReducers._onProcessAddPsAction).call,
        TypedReducer<EnsState, _ProcessAddPsErrorAction>(ProfessionnelsDeSanteReducers._onProcessAddPsErrorAction).call,
        TypedReducer<EnsState, FetchProfessionnelSanteDetailAction>(
          ProfessionnelsDeSanteReducers._onFetchProfessionnelSanteDetailAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelSanteDetailSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelSanteDetailSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelSanteDetailErrorAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelSanteDetailErrorAction,
        ).call,
        TypedReducer<EnsState, FetchAsSuggestionsAction>(
          ProfessionnelsDeSanteReducers._onFetchAsSuggestionsAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAsSuggestionsSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchAsSuggestionsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAsSuggestionsErrorAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchAsSuggestionsErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessRemovePsSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessRemovePsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchShouldDisplayPsHorsRefInfoAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchNonRefPsInfoViewDisplayAction,
        ).call,
        TypedReducer<EnsState, FetchProfessionnelSanteConfidentialitiesAction>(
          ProfessionnelsDeSanteReducers._onFetchProfessionnelSanteConfidentialitiesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelSanteConfidentialitiesSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelSanteConfidentialitiesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelSanteConfidentialitiesErrorAction>(
          ProfessionnelsDeSanteReducers._onProcessFetchProfessionnelSanteConfidentialitiesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdatePsRoleSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessUpdatePsRoleSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessRemoveRoleFromPsSuccessAction>(
          ProfessionnelsDeSanteReducers._onProcessRemoveRoleFromPsSuccessAction,
        ).call,
      ];

  static EnsState _onFetchProfessionnelsDeSanteAction(
    EnsState state,
    FetchProfessionnelsDeSanteAction action,
  ) {
    if (action.force || state.professionnelsDeSanteState.professionnelDeSanteListState.status.isNotSuccess()) {
      return state.clone(
        professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
          professionnelDeSanteListState: const ProfessionnelDeSanteListState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onFetchProfessionnelsDeSanteSynchroMedecinTraitantAction(
    EnsState state,
    FetchProfessionnelsDeSanteSynchroMedecinTraitantAction action,
  ) {
    if (action.force || state.professionnelsDeSanteState.professionnelDeSanteListState.status.isNotSuccess()) {
      return state.clone(
        professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
          professionnelDeSanteListState: const ProfessionnelDeSanteListState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onFetchAsSuggestionsAction(EnsState state, FetchAsSuggestionsAction action) {
    if (action.force || state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.status.isNotSuccess()) {
      return state.clone(
        professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
          acteurDeSanteSuggestionsStates:
              state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.clone(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchAsSuggestionsSuccessAction(
    EnsState state,
    ProcessFetchAsSuggestionsSuccessAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        acteurDeSanteSuggestionsStates: state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.clone(
          status: AllPurposesStatus.SUCCESS,
          suggestions: action.suggestions,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchAsSuggestionsErrorAction(
    EnsState state,
    ProcessFetchAsSuggestionsErrorAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        acteurDeSanteSuggestionsStates: state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteSuccessAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelDeSanteListState: ProfessionnelDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          professionnelsDeSante: action.professionnelsDeSante,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteErrorAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelDeSanteListState: const ProfessionnelDeSanteListState(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onAddPsAction(EnsState state, AddPsAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        addPsState: const AddPsState(status: AddPsStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessAddPsAction(EnsState state, _ProcessAddPsSuccessAction action) {
    final suggestions = List<ActeurDeSanteSuggestion>.from(
      state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.suggestions,
    )..removeWhere((asSuggestion) => asSuggestion.id == action.professionnelSanteId);
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        acteurDeSanteSuggestionsStates: state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.clone(
          suggestions: suggestions,
        ),
        addPsState: const AddPsState(status: AddPsStatus.SUCCESS),
      ),
    );
  }

  static EnsState _onProcessAddPsErrorAction(EnsState state, _ProcessAddPsErrorAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        addPsState: const AddPsState(status: AddPsStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchProfessionnelSanteDetailAction(
    EnsState state,
    FetchProfessionnelSanteDetailAction action,
  ) {
    final professionnelsDeSanteDetailsStates = Map<String, ProfessionnelDeSanteDetailsState>.of(
      state.professionnelsDeSanteState.professionnelsDeSanteDetailsStates,
    );
    final currentPsDetailsState = professionnelsDeSanteDetailsStates[action.psIdNat];
    if (currentPsDetailsState == null || currentPsDetailsState.status.isNotSuccess()) {
      professionnelsDeSanteDetailsStates[action.psIdNat] = const ProfessionnelDeSanteDetailsState(
        status: AllPurposesStatus.LOADING,
      );
      return state.clone(
        professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
          professionnelsDeSanteDetailsStates: professionnelsDeSanteDetailsStates,
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchProfessionnelSanteDetailSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelSanteDetailSuccessAction action,
  ) {
    final professionnelsDeSanteDetailsStates = Map<String, ProfessionnelDeSanteDetailsState>.from(
      state.professionnelsDeSanteState.professionnelsDeSanteDetailsStates,
    );
    final professionnelSante = ProfessionnelDeSante(
      idForDelete: action.professionnelSante.idForDelete,
      nationalId: action.professionnelSante.nationalId,
      lastName: action.professionnelSante.lastName,
      firstName: action.professionnelSante.firstName,
      addresses: action.professionnelSante.addresses,
      profession: action.professionnelSante.profession,
      speciality: action.professionnelSante.speciality,
      exercices: action.professionnelSante.exercices,
      contactId: action.professionnelSante.contactId,
      isContactable: action.professionnelSante.isContactable,
      active: action.professionnelSante.active,
    );
    professionnelsDeSanteDetailsStates[action.psIdNat] = ProfessionnelDeSanteDetailsState(
      status: AllPurposesStatus.SUCCESS,
      professionnelDeSante: professionnelSante,
    );
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelsDeSanteDetailsStates: professionnelsDeSanteDetailsStates,
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelSanteDetailErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelSanteDetailErrorAction action,
  ) {
    final professionnelsDeSanteDetailsStates = Map<String, ProfessionnelDeSanteDetailsState>.from(
      state.professionnelsDeSanteState.professionnelsDeSanteDetailsStates,
    );
    professionnelsDeSanteDetailsStates[action.psIdNat] = const ProfessionnelDeSanteDetailsState(
      status: AllPurposesStatus.ERROR,
    );
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelsDeSanteDetailsStates: professionnelsDeSanteDetailsStates,
      ),
    );
  }

  static EnsState _onProcessRemovePsSuccessAction(EnsState state, ProcessRemovePsSuccessAction action) {
    final newProfessionnelsDeSante = List<ProfessionnelDeSante>.from(
      state.professionnelsDeSanteState.professionnelDeSanteListState.professionnelsDeSante,
    )..removeWhere((ps) => ps.idForDelete == action.professionnelSanteId);
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelDeSanteListState: ProfessionnelDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          professionnelsDeSante: newProfessionnelsDeSante,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchNonRefPsInfoViewDisplayAction(
    EnsState state,
    _ProcessFetchShouldDisplayPsHorsRefInfoAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        shouldDisplayPsHorsRefInfoBottomSheet: action.shouldDisplayInfoBottomSheet,
      ),
    );
  }

  static EnsState _onFetchProfessionnelSanteConfidentialitiesAction(
    EnsState state,
    FetchProfessionnelSanteConfidentialitiesAction action,
  ) {
    if (action.force || state.professionnelsDeSanteState.psConfidentialitiesState.status.isNotSuccess()) {
      return state.clone(
        professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
          psConfidentialitiesState: state.professionnelsDeSanteState.psConfidentialitiesState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchProfessionnelSanteConfidentialitiesSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelSanteConfidentialitiesSuccessAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        psConfidentialitiesState: state.professionnelsDeSanteState.psConfidentialitiesState.clone(
          status: AllPurposesStatus.SUCCESS,
          psConfidentilities: action.psConfidentialities.confidentilities,
          shouldShowCasUrgence: action.psConfidentialities.shouldShowCasUrgence,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelSanteConfidentialitiesErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelSanteConfidentialitiesErrorAction action,
  ) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        psConfidentialitiesState: state.professionnelsDeSanteState.psConfidentialitiesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessUpdatePsRoleSuccessAction(
    EnsState state,
    _ProcessUpdatePsRoleSuccessAction action,
  ) {
    List<ProfessionnelDeSante> newPs = List<ProfessionnelDeSante>.from(
      state.professionnelsDeSanteState.professionnelDeSanteListState.professionnelsDeSante,
    );
    newPs = newPs.map((ps) {
      if (ps.role == action.role && ps.nationalId != action.psIdNat) {
        return ps.clone(roleOptional: Optional.ofNullable(null));
      } else {
        return ps.nationalId == action.psIdNat ? ps.clone(roleOptional: Optional.ofNullable(action.role)) : ps;
      }
    }).toList();
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelDeSanteListState: ProfessionnelDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          professionnelsDeSante: newPs,
        ),
      ),
    );
  }

  static EnsState _onProcessRemoveRoleFromPsSuccessAction(
    EnsState state,
    _ProcessRemoveRoleFromPsSuccessAction action,
  ) {
    List<ProfessionnelDeSante> newPs = List<ProfessionnelDeSante>.from(
      state.professionnelsDeSanteState.professionnelDeSanteListState.professionnelsDeSante,
    );
    newPs = newPs.map((ps) {
      return ps.nationalId == action.psIdNat ? ps.clone(roleOptional: Optional.ofNullable(null)) : ps;
    }).toList();
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        professionnelDeSanteListState: ProfessionnelDeSanteListState(
          status: AllPurposesStatus.SUCCESS,
          professionnelsDeSante: newPs,
        ),
      ),
    );
  }
}
