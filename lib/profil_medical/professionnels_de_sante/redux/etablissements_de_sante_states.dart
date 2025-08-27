/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'etablissements_de_sante_redux.dart';

class EtablissementsDeSanteState extends Equatable {
  final EtablissementDeSanteListState etablissementDeSanteListState;
  final Map<String, EtablissementDeSanteDetailsState> etablissementsDeSanteDetailsStates;
  final AllPurposesStatus addEsStatus;
  final PharmacieSuggestionsState pharmacieSuggestionsState;

  const EtablissementsDeSanteState({
    this.etablissementDeSanteListState = const EtablissementDeSanteListState(),
    this.etablissementsDeSanteDetailsStates = const {},
    this.addEsStatus = AllPurposesStatus.NOT_LOADED,
    this.pharmacieSuggestionsState = const PharmacieSuggestionsState(),
  });

  EtablissementsDeSanteState clone({
    EtablissementDeSanteListState? etablissementDeSanteListState,
    Map<String, EtablissementDeSanteDetailsState>? etablissementsDeSanteDetailsStates,
    AllPurposesStatus? addEsStatus,
    PharmacieSuggestionsState? pharmacieSuggestionsState,
  }) {
    return EtablissementsDeSanteState(
      etablissementDeSanteListState: etablissementDeSanteListState ?? this.etablissementDeSanteListState,
      etablissementsDeSanteDetailsStates: etablissementsDeSanteDetailsStates ?? this.etablissementsDeSanteDetailsStates,
      addEsStatus: addEsStatus ?? this.addEsStatus,
      pharmacieSuggestionsState: pharmacieSuggestionsState ?? this.pharmacieSuggestionsState,
    );
  }

  @override
  List<Object?> get props => [
        etablissementDeSanteListState,
        etablissementsDeSanteDetailsStates,
        addEsStatus,
        pharmacieSuggestionsState,
      ];
}

class EtablissementDeSanteListState extends Equatable {
  final AllPurposesStatus status;
  final List<EtablissementDeSante> etablissementsDeSante;

  const EtablissementDeSanteListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.etablissementsDeSante = const [],
  });

  bool get isEmpty => status.isSuccess() && etablissementsDeSante.isEmpty;

  @override
  List<Object?> get props => [status, etablissementsDeSante];
}

class EtablissementDeSanteDetailsState extends Equatable {
  final AllPurposesStatus status;
  final EtablissementDeSante? etablissementDeSante;

  const EtablissementDeSanteDetailsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.etablissementDeSante,
  });

  bool get isSuccessWithData => status.isSuccess() && etablissementDeSante != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && etablissementDeSante == null);

  @override
  List<Object?> get props => [status, etablissementDeSante];
}

class PharmacieSuggestionsState extends Equatable {
  final AllPurposesStatus status;
  final List<EtablissementDeSanteSuggestion> suggestions;

  const PharmacieSuggestionsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.suggestions = const [],
  });

  PharmacieSuggestionsState clone({
    AllPurposesStatus? status,
    List<EtablissementDeSanteSuggestion>? suggestions,
  }) {
    return PharmacieSuggestionsState(
      status: status ?? this.status,
      suggestions: suggestions ?? this.suggestions,
    );
  }

  @override
  List<Object?> get props => [status, suggestions];
}
