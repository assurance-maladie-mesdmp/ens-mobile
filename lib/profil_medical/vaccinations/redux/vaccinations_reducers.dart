/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'vaccinations_redux.dart';

class VaccinationsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchVaccinationsAction>(
          VaccinationsReducers._onFetchVaccinationsAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchVaccinationsSuccessAction>(
          VaccinationsReducers._onProcessFetchVaccinationsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchVaccinationsErrorAction>(
          VaccinationsReducers._onProcessFetchVaccinationsErrorAction,
        ).call,
        TypedReducer<EnsState, AddVaccinationAction>(VaccinationsReducers._onAddVaccinationAction).call,
        TypedReducer<EnsState, UpdateVaccinationAction>(VaccinationsReducers._onUpdateVaccinationAction).call,
        TypedReducer<EnsState, ProcessEditVaccinationSuccessAction>(
          VaccinationsReducers._onProcessEditVaccinationSuccessAction,
        ).call,
        TypedReducer<EnsState, InitVaccinationEditionAction>(VaccinationsReducers._onInitVaccinationEditionAction).call,
        TypedReducer<EnsState, ProcessDeleteVaccinationSuccessAction>(
          VaccinationsReducers._onProcessDeleteVaccinationSuccessAction,
        ).call,
        TypedReducer<EnsState, FetchVaccinsAction>(VaccinationsReducers._onFetchVaccinsAction).call,
        TypedReducer<EnsState, ProcessFetchVaccinsSuccessAction>(
          VaccinationsReducers._onProcessFetchVaccinsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchVaccinsErrorAction>(
          VaccinationsReducers._onProcessFetchVaccinsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchCarteVaccinationsAction>(
          VaccinationsReducers._onFetchCarteVaccinationsAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchCarteVaccinationsSuccessAction>(
          VaccinationsReducers._onProcessFetchCarteVaccinationsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchCarteVaccinationsErrorAction>(
          VaccinationsReducers._onProcessFetchCarteVaccinationsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchVaccinByCipAction>(
          VaccinationsReducers._onFetchVaccinByCipAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchVaccinByCipSuccessAction>(
          VaccinationsReducers._onProcessFetchVaccinByCipSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchVaccinByCipErrorAction>(
          VaccinationsReducers._onProcessFetchVaccinByCipErrorAction,
        ).call,
        TypedReducer<EnsState, ResetVaccinationScannerAction>(
          VaccinationsReducers._onResetVaccinationScannerAction,
        ).call,
        TypedReducer<EnsState, ProcessEditVaccinationDateErrorAction>(
          VaccinationsReducers._onProcessEditVaccinationErrorAction,
        ).call,
      ];

  static EnsState _onFetchVaccinationsAction(EnsState state, FetchVaccinationsAction action) {
    if (action.force || state.vaccinationsState.vaccinationsListState.status.isNotSuccess()) {
      return state.clone(
        vaccinationsState: state.vaccinationsState.clone(
          vaccinationsListState: const VaccinationsListState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchVaccinationsSuccessAction(
    EnsState state,
    ProcessFetchVaccinationsSuccessAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinationsListState: VaccinationsListState(
          status: AllPurposesStatus.SUCCESS,
          vaccinations: action.vaccinations,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchVaccinationsErrorAction(EnsState state, ProcessFetchVaccinationsErrorAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinationsListState: const VaccinationsListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onInitVaccinationEditionAction(EnsState state, InitVaccinationEditionAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(vaccinationsEditStatus: AllPurposesStatus.NOT_LOADED),
    );
  }

  static EnsState _onAddVaccinationAction(EnsState state, AddVaccinationAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(vaccinationsEditStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onUpdateVaccinationAction(EnsState state, UpdateVaccinationAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(vaccinationsEditStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessEditVaccinationSuccessAction(
    EnsState state,
    ProcessEditVaccinationSuccessAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(vaccinationsEditStatus: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessEditVaccinationErrorAction(
    EnsState state,
    ProcessEditVaccinationDateErrorAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(vaccinationsEditStatus: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onProcessDeleteVaccinationSuccessAction(
    EnsState state,
    ProcessDeleteVaccinationSuccessAction action,
  ) {
    final newVaccinations = List<EnsVaccination>.from(state.vaccinationsState.vaccinationsListState.vaccinations)
      ..removeWhere((vaccination) => vaccination.id == action.vaccinationId);
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinationsListState: VaccinationsListState(
          status: AllPurposesStatus.SUCCESS,
          vaccinations: newVaccinations,
        ),
      ),
    );
  }

  static EnsState _onFetchVaccinsAction(EnsState state, FetchVaccinsAction action) {
    if (state.vaccinationsState.vaccinsListState.status.isNotSuccess()) {
      return state.clone(
        vaccinationsState: state.vaccinationsState.clone(
          vaccinsListState: const VaccinsListState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchVaccinsSuccessAction(EnsState state, ProcessFetchVaccinsSuccessAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinsListState: VaccinsListState(status: AllPurposesStatus.SUCCESS, vaccins: action.vaccins),
      ),
    );
  }

  static EnsState _onProcessFetchVaccinsErrorAction(EnsState state, ProcessFetchVaccinsErrorAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinsListState: const VaccinsListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchCarteVaccinationsAction(
    EnsState state,
    FetchCarteVaccinationsAction action,
  ) {
    if (state.vaccinationsState.carteVaccinationsState.isNotSuccess) {
      return state.clone(
        vaccinationsState: state.vaccinationsState.clone(
          carteVaccinationsState: const CarteVaccinationsState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchCarteVaccinationsSuccessAction(
    EnsState state,
    ProcessFetchCarteVaccinationsSuccessAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        carteVaccinationsState: CarteVaccinationsState(
          status: AllPurposesStatus.SUCCESS,
          carteVaccinations: action.carteVaccinations,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchCarteVaccinationsErrorAction(
    EnsState state,
    ProcessFetchCarteVaccinationsErrorAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        carteVaccinationsState: const CarteVaccinationsState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchVaccinByCipAction(
    EnsState state,
    FetchVaccinByCipAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinByCipState: state.vaccinationsState.vaccinByCipState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchVaccinByCipSuccessAction(
    EnsState state,
    ProcessFetchVaccinByCipSuccessAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinByCipState: state.vaccinationsState.vaccinByCipState.clone(
          status: AllPurposesStatus.SUCCESS,
          initialVaccinByCip: Optional.ofNullable(action.vaccin),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchVaccinByCipErrorAction(
    EnsState state,
    ProcessFetchVaccinByCipErrorAction action,
  ) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinByCipState: state.vaccinationsState.vaccinByCipState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onResetVaccinationScannerAction(EnsState state, ResetVaccinationScannerAction action) {
    return state.clone(
      vaccinationsState: state.vaccinationsState.clone(
        vaccinByCipState: const VaccinByCipState(),
      ),
    );
  }
}
