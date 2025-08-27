/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'vaccinations_redux.dart';

class VaccinationsState extends Equatable {
  final VaccinationsListState vaccinationsListState;
  final AllPurposesStatus vaccinationsEditStatus;
  final VaccinsListState vaccinsListState;
  final CarteVaccinationsState carteVaccinationsState;
  final VaccinByCipState vaccinByCipState;

  const VaccinationsState({
    this.vaccinationsListState = const VaccinationsListState(),
    this.vaccinationsEditStatus = AllPurposesStatus.NOT_LOADED,
    this.vaccinsListState = const VaccinsListState(),
    this.carteVaccinationsState = const CarteVaccinationsState(),
    this.vaccinByCipState = const VaccinByCipState(),
  });

  VaccinationsState clone({
    VaccinationsListState? vaccinationsListState,
    AllPurposesStatus? vaccinationsEditStatus,
    VaccinsListState? vaccinsListState,
    CarteVaccinationsState? carteVaccinationsState,
    VaccinByCipState? vaccinByCipState,
  }) =>
      VaccinationsState(
        vaccinationsListState: vaccinationsListState ?? this.vaccinationsListState,
        vaccinationsEditStatus: vaccinationsEditStatus ?? this.vaccinationsEditStatus,
        vaccinsListState: vaccinsListState ?? this.vaccinsListState,
        carteVaccinationsState: carteVaccinationsState ?? this.carteVaccinationsState,
        vaccinByCipState: vaccinByCipState ?? this.vaccinByCipState,
      );

  @override
  List<Object?> get props => [
        vaccinationsListState,
        vaccinationsEditStatus,
        vaccinsListState,
        carteVaccinationsState,
        vaccinByCipState,
      ];
}

class VaccinationsListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsVaccination> vaccinations;

  const VaccinationsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.vaccinations = const [],
  });

  @override
  List<Object?> get props => [status, vaccinations];
}

class VaccinsListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsVaccin> vaccins;

  const VaccinsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.vaccins = const [],
  });

  @override
  List<Object?> get props => [status, vaccins];
}

class CarteVaccinationsState extends Equatable {
  final AllPurposesStatus status;
  final CarteVaccinations? carteVaccinations;

  const CarteVaccinationsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.carteVaccinations,
  });

  bool get isNotSuccess => status.isNotSuccess() || carteVaccinations == null;

  @override
  List<Object?> get props => [status, carteVaccinations];
}

class VaccinByCipState extends Equatable {
  final AllPurposesStatus status;
  final EnsVaccin? initialVaccinByCip;

  const VaccinByCipState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.initialVaccinByCip,
  });

  VaccinByCipState clone({
    AllPurposesStatus? status,
    Optional<EnsVaccin>? initialVaccinByCip,
  }) {
    return VaccinByCipState(
      status: status ?? this.status,
      initialVaccinByCip: initialVaccinByCip != null
          ? initialVaccinByCip.orElseNullable(this.initialVaccinByCip)
          : this.initialVaccinByCip,
    );
  }

  @override
  List<Object?> get props => [status, initialVaccinByCip];
}
