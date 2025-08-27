/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'unconcerned_redux.dart';

class UnconcernedReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, SetUnconcernedAction>(UnconcernedReducers._onSetUnconcernedAction).call,
        TypedReducer<EnsState, _ProcessSetUnconcernedSuccessAction>(
          UnconcernedReducers._onProcessSetUnconcernedSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSetUnconcernedErrorAction>(
          UnconcernedReducers._onProcessSetUnconcernedErrorAction,
        ).call,
      ];

  static EnsState _onSetUnconcernedAction(EnsState state, SetUnconcernedAction action) {
    switch (action.section) {
      case SectionUnconcerned.MALADIES:
        return state.clone(
          maladiesState: state.maladiesState.clone(updateNonConcerneStatus: AllPurposesStatus.LOADING),
        );
      case SectionUnconcerned.TRAITEMENTS:
        return state.clone(
          traitementsState: state.traitementsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.LOADING,
          ),
        );
      case SectionUnconcerned.HOSPITALISATIONS:
        return state.clone(
          hospitalisationsState: state.hospitalisationsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.LOADING,
          ),
        );
      case SectionUnconcerned.ALLERGIES:
        return state.clone(
          allergiesState: state.allergiesState.clone(
            updateNonConcerneStatus: AllPurposesStatus.LOADING,
          ),
        );
      case SectionUnconcerned.ANTECEDENTS:
        return state.clone(
          antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
            updateNonConcerneStatus: AllPurposesStatus.LOADING,
          ),
        );
      case SectionUnconcerned.HANDICAPS:
        return state.clone(
          handicapsState: state.handicapsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.LOADING,
          ),
        );
    }
  }

  static EnsState _onProcessSetUnconcernedSuccessAction(EnsState state, _ProcessSetUnconcernedSuccessAction action) {
    final unconcerned = action.unconcerned;
    switch (unconcerned.section) {
      case SectionUnconcerned.MALADIES:
        return state.clone(
          maladiesState: state.maladiesState.clone(
            maladiesListState: state.maladiesState.maladiesListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
      case SectionUnconcerned.TRAITEMENTS:
        return state.clone(
          traitementsState: state.traitementsState.clone(
            traitementsListState: state.traitementsState.traitementsListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
      case SectionUnconcerned.HOSPITALISATIONS:
        return state.clone(
          hospitalisationsState: state.hospitalisationsState.clone(
            hospitalisationsListState: state.hospitalisationsState.hospitalisationsListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
      case SectionUnconcerned.ALLERGIES:
        return state.clone(
          allergiesState: state.allergiesState.clone(
            allergiesListState: state.allergiesState.allergiesListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
      case SectionUnconcerned.ANTECEDENTS:
        return state.clone(
          antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
            antecedentsFamiliauxListState: state.antecedentsFamiliauxState.antecedentsFamiliauxListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
      case SectionUnconcerned.HANDICAPS:
        return state.clone(
          handicapsState: state.handicapsState.clone(
            handicapsListState: state.handicapsState.handicapsListState.clone(
              nonConcerneDepuisOptional: Optional.ofNullable(unconcerned.date),
            ),
            updateNonConcerneStatus: AllPurposesStatus.SUCCESS,
          ),
        );
    }
  }

  static EnsState _onProcessSetUnconcernedErrorAction(EnsState state, _ProcessSetUnconcernedErrorAction action) {
    switch (action.section) {
      case SectionUnconcerned.MALADIES:
        return state.clone(
          maladiesState: state.maladiesState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
      case SectionUnconcerned.TRAITEMENTS:
        return state.clone(
          traitementsState: state.traitementsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
      case SectionUnconcerned.HOSPITALISATIONS:
        return state.clone(
          hospitalisationsState: state.hospitalisationsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
      case SectionUnconcerned.ALLERGIES:
        return state.clone(
          allergiesState: state.allergiesState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
      case SectionUnconcerned.ANTECEDENTS:
        return state.clone(
          antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
      case SectionUnconcerned.HANDICAPS:
        return state.clone(
          handicapsState: state.handicapsState.clone(
            updateNonConcerneStatus: AllPurposesStatus.ERROR,
          ),
        );
    }
  }
}
