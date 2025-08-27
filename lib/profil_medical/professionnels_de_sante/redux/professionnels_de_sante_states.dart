/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professionnels_de_sante_redux.dart';

class ProfessionnelsDeSanteState extends Equatable {
  final ProfessionnelDeSanteListState professionnelDeSanteListState;
  final Map<String, ProfessionnelDeSanteDetailsState> professionnelsDeSanteDetailsStates;
  final AddPsState addPsState;
  final SearchPsState searchPsState;
  final bool shouldDisplayPsHorsRefInfoBottomSheet;
  final PsConfidentialitiesState psConfidentialitiesState;
  final ActeurDeSanteSuggestionsStates acteurDeSanteSuggestionsStates;

  const ProfessionnelsDeSanteState({
    this.professionnelDeSanteListState = const ProfessionnelDeSanteListState(),
    this.professionnelsDeSanteDetailsStates = const {},
    this.addPsState = const AddPsState(),
    this.searchPsState = const SearchPsState(),
    this.shouldDisplayPsHorsRefInfoBottomSheet = false,
    this.psConfidentialitiesState = const PsConfidentialitiesState(),
    this.acteurDeSanteSuggestionsStates = const ActeurDeSanteSuggestionsStates(),
  });

  ProfessionnelsDeSanteState clone({
    ProfessionnelDeSanteListState? professionnelDeSanteListState,
    Map<String, ProfessionnelDeSanteDetailsState>? professionnelsDeSanteDetailsStates,
    AddPsState? addPsState,
    SearchPsState? searchPsState,
    bool? shouldDisplayPsHorsRefInfoBottomSheet,
    PsConfidentialitiesState? psConfidentialitiesState,
    ActeurDeSanteSuggestionsStates? acteurDeSanteSuggestionsStates,
  }) {
    return ProfessionnelsDeSanteState(
      professionnelDeSanteListState: professionnelDeSanteListState ?? this.professionnelDeSanteListState,
      professionnelsDeSanteDetailsStates: professionnelsDeSanteDetailsStates ?? this.professionnelsDeSanteDetailsStates,
      addPsState: addPsState ?? this.addPsState,
      searchPsState: searchPsState ?? this.searchPsState,
      shouldDisplayPsHorsRefInfoBottomSheet:
          shouldDisplayPsHorsRefInfoBottomSheet ?? this.shouldDisplayPsHorsRefInfoBottomSheet,
      psConfidentialitiesState: psConfidentialitiesState ?? this.psConfidentialitiesState,
      acteurDeSanteSuggestionsStates: acteurDeSanteSuggestionsStates ?? this.acteurDeSanteSuggestionsStates,
    );
  }

  @override
  List<Object?> get props => [
        professionnelDeSanteListState,
        professionnelsDeSanteDetailsStates,
        addPsState,
        searchPsState,
        shouldDisplayPsHorsRefInfoBottomSheet,
        psConfidentialitiesState,
        acteurDeSanteSuggestionsStates,
      ];
}

class ProfessionnelDeSanteListState extends Equatable {
  final AllPurposesStatus status;
  final List<ProfessionnelDeSante> professionnelsDeSante;

  const ProfessionnelDeSanteListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.professionnelsDeSante = const [],
  });

  bool get isEmpty => status.isSuccess() && professionnelsDeSante.isEmpty;

  @override
  List<Object?> get props => [status, professionnelsDeSante];
}

class ProfessionnelDeSanteDetailsState extends Equatable {
  final AllPurposesStatus status;
  final ProfessionnelDeSante? professionnelDeSante;

  const ProfessionnelDeSanteDetailsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.professionnelDeSante,
  });

  bool get isSuccessWithData => status.isSuccess() && professionnelDeSante != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && professionnelDeSante == null);

  @override
  List<Object?> get props => [status, professionnelDeSante];
}

class AddPsState extends Equatable {
  final AddPsStatus status;
  final ProfessionnelDeSante? currentPsSelected;

  const AddPsState({
    this.status = AddPsStatus.NOT_LOADED,
    this.currentPsSelected,
  });

  @override
  List<Object?> get props => [status, currentPsSelected];
}

class ActeurDeSanteSuggestionsStates extends Equatable {
  final AllPurposesStatus status;
  final List<ActeurDeSanteSuggestion> suggestions;

  const ActeurDeSanteSuggestionsStates({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.suggestions = const [],
  });

  ActeurDeSanteSuggestionsStates clone({
    AllPurposesStatus? status,
    List<ActeurDeSanteSuggestion>? suggestions,
  }) {
    return ActeurDeSanteSuggestionsStates(
      status: status ?? this.status,
      suggestions: suggestions ?? this.suggestions,
    );
  }

  @override
  List<Object?> get props => [suggestions, status];
}

class PsConfidentialitiesState extends Equatable {
  final AllPurposesStatus status;
  final List<ProfessionnelSanteConfidentiality> psConfidentilities;
  final bool shouldShowCasUrgence;

  const PsConfidentialitiesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.psConfidentilities = const [],
    this.shouldShowCasUrgence = false,
  });

  PsConfidentialitiesState clone({
    AllPurposesStatus? status,
    List<ProfessionnelSanteConfidentiality>? psConfidentilities,
    bool? shouldShowCasUrgence,
  }) {
    return PsConfidentialitiesState(
      status: status ?? this.status,
      psConfidentilities: psConfidentilities ?? this.psConfidentilities,
      shouldShowCasUrgence: shouldShowCasUrgence ?? this.shouldShowCasUrgence,
    );
  }

  @override
  List<Object?> get props => [status, psConfidentilities, shouldShowCasUrgence];
}
