/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professional_activities_redux.dart';

class ProfessionalActivitiesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchProfessionalActivitiesAction>(
          ProfessionalActivitiesReducers._onFetchProfessionalActivitiesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionalActivitiesSuccessAction>(
          ProfessionalActivitiesReducers._onProcessFetchProfessionalActivitiesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionalActivitiesErrorAction>(
          ProfessionalActivitiesReducers._onProcessFetchProfessionalActivitiesErrorAction,
        ).call,
      ];

  static EnsState _onFetchProfessionalActivitiesAction(
    EnsState state,
    FetchProfessionalActivitiesAction action,
  ) {
    if (action.force || state.professionalActivitiesState.status.isNotSuccess()) {
      return state.clone(
        professionalActivitiesState: const ProfessionalActivitiesState(status: AllPurposesStatus.LOADING),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchProfessionalActivitiesSuccessAction(
    EnsState state,
    _ProcessFetchProfessionalActivitiesSuccessAction action,
  ) {
    return state.clone(
      professionalActivitiesState: ProfessionalActivitiesState(
        status: AllPurposesStatus.SUCCESS,
        professionalActivities: action.professionalActivities,
      ),
    );
  }

  static EnsState _onProcessFetchProfessionalActivitiesErrorAction(
    EnsState state,
    _ProcessFetchProfessionalActivitiesErrorAction action,
  ) {
    return state.clone(
      professionalActivitiesState: const ProfessionalActivitiesState(status: AllPurposesStatus.ERROR),
    );
  }
}
