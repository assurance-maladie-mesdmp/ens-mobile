/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'historique_activites_redux.dart';

class HistoriqueActivitesState extends Equatable {
  final ProfessionnelsDeSanteTracesState professionnelsDeSanteTracesState;
  final MesActivitesTracesState mesActivitesTracesState;
  final ServicesSynchronisesTracesState servicesSynchronisesTracesState;
  final DateRangeFilter? dateRangeFilter;
  final Map<String, ProfessionnelDeSanteTracesByIdState> professionnelDeSanteTracesByIdStates;

  const HistoriqueActivitesState({
    this.professionnelsDeSanteTracesState = const ProfessionnelsDeSanteTracesState(),
    this.mesActivitesTracesState = const MesActivitesTracesState(),
    this.servicesSynchronisesTracesState = const ServicesSynchronisesTracesState(),
    this.dateRangeFilter,
    this.professionnelDeSanteTracesByIdStates = const {},
  });

  bool get psTracesNotConsistent => professionnelsDeSanteTracesState.currentTracesDateRangeFilter != dateRangeFilter;

  HistoriqueActivitesState clone({
    ProfessionnelsDeSanteTracesState? professionnelsDeSanteTracesState,
    MesActivitesTracesState? mesActivitesTracesState,
    ServicesSynchronisesTracesState? servicesSynchronisesTracesState,
    Optional<DateRangeFilter>? dateRangeFilterOptional,
    Map<String, ProfessionnelDeSanteTracesByIdState>? professionnelDeSanteTracesByIdStates,
  }) {
    return HistoriqueActivitesState(
      professionnelsDeSanteTracesState: professionnelsDeSanteTracesState ?? this.professionnelsDeSanteTracesState,
      mesActivitesTracesState: mesActivitesTracesState ?? this.mesActivitesTracesState,
      servicesSynchronisesTracesState: servicesSynchronisesTracesState ?? this.servicesSynchronisesTracesState,
      dateRangeFilter: dateRangeFilterOptional != null ? dateRangeFilterOptional.orElseNullable(null) : dateRangeFilter,
      professionnelDeSanteTracesByIdStates:
          professionnelDeSanteTracesByIdStates ?? this.professionnelDeSanteTracesByIdStates,
    );
  }

  @override
  List<Object?> get props => [
        professionnelsDeSanteTracesState,
        mesActivitesTracesState,
        servicesSynchronisesTracesState,
        dateRangeFilter,
        professionnelDeSanteTracesByIdStates,
      ];
}

class ProfessionnelsDeSanteTracesState extends Equatable {
  final AllPurposesStatus status;
  final AllPurposesStatus paginationStatus;
  final List<Trace> traces;
  final int currentPage;
  final bool hasNextPage;
  final DateRangeFilter? currentTracesDateRangeFilter;

  const ProfessionnelsDeSanteTracesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.paginationStatus = AllPurposesStatus.NOT_LOADED,
    this.traces = const [],
    this.currentPage = 0,
    this.hasNextPage = false,
    this.currentTracesDateRangeFilter,
  });

  bool get currentTracesHasFilter => currentTracesDateRangeFilter != null;

  ProfessionnelsDeSanteTracesState clone({
    AllPurposesStatus? status,
    AllPurposesStatus? paginationStatus,
    List<Trace>? traces,
    int? currentPage,
    bool? hasNextPage,
    Optional<DateRangeFilter>? currentTracesDateRangeFilterOptional,
  }) {
    return ProfessionnelsDeSanteTracesState(
      status: status ?? this.status,
      paginationStatus: paginationStatus ?? this.paginationStatus,
      traces: traces ?? this.traces,
      currentPage: currentPage ?? this.currentPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      currentTracesDateRangeFilter: currentTracesDateRangeFilterOptional != null
          ? currentTracesDateRangeFilterOptional.orElseNullable(null)
          : currentTracesDateRangeFilter,
    );
  }

  @override
  List<Object?> get props => [
        status,
        paginationStatus,
        traces,
        currentPage,
        hasNextPage,
        currentTracesDateRangeFilter,
      ];
}

class MesActivitesTracesState extends Equatable {
  final AllPurposesStatus status;
  final List<Trace> traces;

  const MesActivitesTracesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.traces = const [],
  });

  MesActivitesTracesState clone({
    AllPurposesStatus? status,
    List<Trace>? traces,
  }) {
    return MesActivitesTracesState(
      status: status ?? this.status,
      traces: traces ?? this.traces,
    );
  }

  @override
  List<Object?> get props => [status, traces];
}

class ServicesSynchronisesTracesState extends Equatable {
  final AllPurposesStatus status;
  final List<Trace> traces;

  const ServicesSynchronisesTracesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.traces = const [],
  });

  ServicesSynchronisesTracesState clone({
    AllPurposesStatus? status,
    List<Trace>? traces,
  }) {
    return ServicesSynchronisesTracesState(
      status: status ?? this.status,
      traces: traces ?? this.traces,
    );
  }

  @override
  List<Object?> get props => [status, traces];
}

class DateRangeFilter extends Equatable {
  final DateTime startDate;
  final DateTime endDate;

  const DateRangeFilter(this.startDate, this.endDate);

  @override
  List<Object?> get props => [startDate, endDate];
}

class ProfessionnelDeSanteTracesByIdState extends Equatable {
  final AllPurposesStatus status;
  final String psIdNat;
  final List<Trace> psTraces;

  const ProfessionnelDeSanteTracesByIdState({
    this.status = AllPurposesStatus.NOT_LOADED,
    required this.psIdNat,
    this.psTraces = const [],
  });

  ProfessionnelDeSanteTracesByIdState clone({
    AllPurposesStatus? status,
    String? psIdNat,
    List<Trace>? psTraces,
  }) {
    return ProfessionnelDeSanteTracesByIdState(
      status: status ?? this.status,
      psIdNat: psIdNat ?? this.psIdNat,
      psTraces: psTraces ?? this.psTraces,
    );
  }

  @override
  List<Object?> get props => [status, psIdNat, psTraces];
}
