/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class ExamensReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchRendezVousEtRappelsEtExamensAction>(
          ExamensReducers.onFetchRendezVousEtRappelsEtExamensAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchExamensSuccessAction>(ExamensReducers._onProcessFetchExamensSuccessAction)
            .call,
        TypedReducer<EnsState, _ProcessFetchExamensErrorAction>(ExamensReducers._onProcessFetchExamensErrorAction).call,
        TypedReducer<EnsState, _ProcessUpdateExamenSuccessAction>(ExamensReducers._onProcessUpdateExamenSuccessAction)
            .call,
        TypedReducer<EnsState, _ProcessFetchExamenRecommandeByCodeAndDateSuccessAction>(
          ExamensReducers._onProcessFetchedExamenRecommandeByCodeAndDateSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchExamenRecommandeByCodeAndDateErrorAction>(
          ExamensReducers._onProcessFetchExamenRecommandeByCodeAndDateErrorAction,
        ).call,
        TypedReducer<EnsState, FetchExamenRecommandeByCodeAndDateAction>(
          ExamensReducers._onFetchExamenRecommandeByCodeAndDateAction,
        ).call,
        TypedReducer<EnsState, UpdateExamensRecommandesStatutFilterAction>(
          ExamensReducers._onUpdateExamensRecommandesStatutFilterAction,
        ).call,
        TypedReducer<EnsState, ReinitializeExamensRecommandesFiltersAction>(
          ExamensReducers._onReinitializeExamensRecommandesFiltersAction,
        ).call,
        TypedReducer<EnsState, UpdateExamensRecommandesTypeExamenFilterAction>(
          ExamensReducers._onUpdateExamensRecommandesTypeExamenFilterAction,
        ).call,
      ];

  static EnsState onFetchRendezVousEtRappelsEtExamensAction(
    EnsState state,
    FetchRendezVousEtRappelsEtExamensAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.status.isNotSuccess()
            ? state.agendaState.examensRecommandesState.clone(status: AllPurposesStatus.LOADING)
            : state.agendaState.examensRecommandesState,
      ),
    );
  }

  static EnsState _onProcessUpdateExamenSuccessAction(EnsState state, _ProcessUpdateExamenSuccessAction action) {
    final oldExamens = state.agendaState.examensRecommandesState.examens;
    final newExamens = _updateExamensRecommandesStatus(
      oldExamens,
      action.examenId,
      action.dateDebut,
      action.status,
      action.dateRealisation,
    );

    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(examens: newExamens),
      ),
    );
  }

  static List<ExamenRecommande> _updateExamensRecommandesStatus(
    List<ExamenRecommande> examens,
    String id,
    DateTime dateDebut,
    ExamenStatus newStatus,
    DateTime? dateRealisation,
  ) {
    final indexCible = examens.indexWhere((examen) => examen.id == id && examen.startDate == dateDebut);
    if (indexCible == -1) return examens;
    examens[indexCible] = examens[indexCible].clone(
      status: newStatus,
      dateRealisationOptional: Optional.ofNullable(dateRealisation),
    );

    return examens;
  }

  static EnsState _onProcessFetchExamensSuccessAction(EnsState state, _ProcessFetchExamensSuccessAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          status: AllPurposesStatus.SUCCESS,
          examens: action.examens,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchExamensErrorAction(EnsState state, _ProcessFetchExamensErrorAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchExamenRecommandeByCodeAndDateAction(
    EnsState state,
    FetchExamenRecommandeByCodeAndDateAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchedExamenRecommandeByCodeAndDateSuccessAction(
    EnsState state,
    _ProcessFetchExamenRecommandeByCodeAndDateSuccessAction action,
  ) {
    List<ExamenRecommande> examensRecommandes =
        List<ExamenRecommande>.from(state.agendaState.examensRecommandesState.examens);

    final examenExists = examensRecommandes.map((examen) => examen.id).contains(action.examenRecommande.id);
    if (examenExists) {
      examensRecommandes = examensRecommandes
          .map((examen) => examen.id == action.examenRecommande.id ? action.examenRecommande : examen)
          .toList();
    } else {
      examensRecommandes.add(action.examenRecommande);
    }

    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          status: AllPurposesStatus.SUCCESS,
          examens: examensRecommandes,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchExamenRecommandeByCodeAndDateErrorAction(
    EnsState state,
    _ProcessFetchExamenRecommandeByCodeAndDateErrorAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onUpdateExamensRecommandesStatutFilterAction(
    EnsState state,
    UpdateExamensRecommandesStatutFilterAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          filteredStatus: action.selectedFilters,
        ),
      ),
    );
  }

  static EnsState _onUpdateExamensRecommandesTypeExamenFilterAction(
    EnsState state,
    UpdateExamensRecommandesTypeExamenFilterAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          filteredTypes: action.selectedFilters,
        ),
      ),
    );
  }

  static EnsState _onReinitializeExamensRecommandesFiltersAction(
    EnsState state,
    ReinitializeExamensRecommandesFiltersAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        examensRecommandesState: state.agendaState.examensRecommandesState.clone(
          filteredTypes: [],
          filteredStatus: [],
        ),
      ),
    );
  }
}
