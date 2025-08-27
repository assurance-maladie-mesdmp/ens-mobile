/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class AgendaState extends Equatable {
  final RendezVousState rendezVousState;
  final AllPurposesStatus rendezVousEditStatus;
  final RendezVousDetailState rendezVousDetailState;
  final RappelsState rappelsState;
  final AllPurposesStatus rappelEditStatus;
  final RappelDetailState rappelDetailState;
  final ExamensRecommandesState examensRecommandesState;

  const AgendaState({
    this.rendezVousState = const RendezVousState(),
    this.rendezVousEditStatus = AllPurposesStatus.NOT_LOADED,
    this.rendezVousDetailState = const RendezVousDetailState(),
    this.rappelsState = const RappelsState(),
    this.rappelEditStatus = AllPurposesStatus.NOT_LOADED,
    this.rappelDetailState = const RappelDetailState(),
    this.examensRecommandesState = const ExamensRecommandesState(),
  });

  AgendaState clone({
    RendezVousState? rendezVousState,
    AllPurposesStatus? rendezVousEditStatus,
    RendezVousDetailState? rendezVousDetailState,
    RappelsState? rappelsState,
    AllPurposesStatus? rappelEditStatus,
    RappelDetailState? rappelDetailState,
    ExamensRecommandesState? examensRecommandesState,
  }) =>
      AgendaState(
        rendezVousState: rendezVousState ?? this.rendezVousState,
        rendezVousEditStatus: rendezVousEditStatus ?? this.rendezVousEditStatus,
        rendezVousDetailState: rendezVousDetailState ?? this.rendezVousDetailState,
        rappelsState: rappelsState ?? this.rappelsState,
        rappelEditStatus: rappelEditStatus ?? this.rappelEditStatus,
        rappelDetailState: rappelDetailState ?? this.rappelDetailState,
        examensRecommandesState: examensRecommandesState ?? this.examensRecommandesState,
      );

  @override
  List<Object?> get props => [
        rendezVousState,
        rendezVousEditStatus,
        rendezVousDetailState,
        rappelsState,
        rappelEditStatus,
        rappelDetailState,
        examensRecommandesState,
      ];
}

class RendezVousState extends Equatable {
  final AllPurposesStatus status;
  final List<RendezVous> rendezVous;

  const RendezVousState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.rendezVous = const [],
  });

  RendezVousState clone({
    AllPurposesStatus? status,
    List<RendezVous>? rendezVous,
  }) {
    return RendezVousState(
      status: status ?? this.status,
      rendezVous: rendezVous ?? this.rendezVous,
    );
  }

  @override
  List<Object?> get props => [status, rendezVous];
}

class RendezVousDetailState extends Equatable {
  final AllPurposesStatus status;
  final RendezVous? rendezVous;
  final AgendaDomainError? errorDomain;

  const RendezVousDetailState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.rendezVous,
    this.errorDomain,
  });

  bool get isSuccessWithData => status.isSuccess() && rendezVous != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && rendezVous == null);

  @override
  List<Object?> get props => [status, rendezVous, errorDomain];
}

class RappelsState extends Equatable {
  final AllPurposesStatus status;
  final List<Rappel> rappels;

  const RappelsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.rappels = const [],
  });

  RappelsState clone({
    AllPurposesStatus? status,
    List<Rappel>? rappels,
  }) {
    return RappelsState(
      status: status ?? this.status,
      rappels: rappels ?? this.rappels,
    );
  }

  @override
  List<Object?> get props => [status, rappels];
}

class RappelDetailState extends Equatable {
  final AllPurposesStatus status;
  final Rappel? rappel;
  final AgendaDomainError? errorDomain;

  const RappelDetailState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.rappel,
    this.errorDomain,
  });

  bool get isSuccessWithData => status.isSuccess() && rappel != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && rappel == null);

  @override
  List<Object?> get props => [status, rappel, errorDomain];
}

class ExamensRecommandesState extends Equatable {
  final List<ExamenRecommande> examens;
  final List<ExamenStatus> filteredStatus;
  final List<String> filteredTypes;
  final AllPurposesStatus status;

  const ExamensRecommandesState({
    this.examens = const [],
    this.filteredStatus = const [],
    this.filteredTypes = const [],
    this.status = AllPurposesStatus.NOT_LOADED,
  });

  @override
  List<Object?> get props => [examens, status, filteredStatus, filteredTypes];

  ExamensRecommandesState clone({
    List<ExamenRecommande>? examens,
    List<ExamenStatus>? filteredStatus,
    List<String>? filteredTypes,
    AllPurposesStatus? status,
  }) {
    return ExamensRecommandesState(
      examens: examens ?? this.examens,
      filteredStatus: filteredStatus ?? this.filteredStatus,
      filteredTypes: filteredTypes ?? this.filteredTypes,
      status: status ?? this.status,
    );
  }
}
