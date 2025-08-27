/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'bilan_de_prevention_redux.dart';

class BilanDePreventionState extends Equatable {
  final BilanDePreventionStatus status;
  final List<BilanDePreventionQuestionnaire> questionnairesAFaire;
  final List<BilanDePreventionQuestionnaire> questionnairesEnCours;
  final List<BilanDePreventionQuestionnaire> questionnairesTermines;

  const BilanDePreventionState({
    this.status = BilanDePreventionStatus.NOT_LOADED,
    this.questionnairesAFaire = const [],
    this.questionnairesEnCours = const [],
    this.questionnairesTermines = const [],
  });

  BilanDePreventionState clone({
    BilanDePreventionStatus? status,
    List<BilanDePreventionQuestionnaire>? questionnairesAFaire,
    List<BilanDePreventionQuestionnaire>? questionnairesEnCours,
    List<BilanDePreventionQuestionnaire>? questionnairesTermines,
  }) {
    return BilanDePreventionState(
      status: status ?? this.status,
      questionnairesAFaire: questionnairesAFaire ?? this.questionnairesAFaire,
      questionnairesEnCours: questionnairesEnCours ?? this.questionnairesEnCours,
      questionnairesTermines: questionnairesTermines ?? this.questionnairesTermines,
    );
  }

  @override
  List<Object?> get props => [status, questionnairesAFaire, questionnairesEnCours, questionnairesTermines];
}

enum BilanDePreventionStatus { NOT_LOADED, LOADING, SUCCESS, ERROR, EMPTY }
