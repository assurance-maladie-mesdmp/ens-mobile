/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'maladies_redux.dart';

class MaladiesState extends Equatable {
  final MaladiesListState maladiesListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus maladieEditStatus;

  const MaladiesState({
    this.maladiesListState = const MaladiesListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.maladieEditStatus = AllPurposesStatus.NOT_LOADED,
  });

  @override
  List<Object?> get props => [
        maladiesListState,
        updateNonConcerneStatus,
        maladieEditStatus,
      ];

  MaladiesState clone({
    MaladiesListState? maladiesListState,
    AllPurposesStatus? updateNonConcerneStatus,
    AllPurposesStatus? maladieEditStatus,
  }) {
    return MaladiesState(
      maladiesListState: maladiesListState ?? this.maladiesListState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      maladieEditStatus: maladieEditStatus ?? this.maladieEditStatus,
    );
  }
}

class MaladiesListState extends Equatable {
  final AllPurposesStatus status;
  final Map<String, EnsMaladie> maladies;
  final DateTime? nonConcerneDepuis;

  const MaladiesListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.maladies = const {},
    this.nonConcerneDepuis,
  });

  bool get isCompleted => maladies.isNotEmpty || nonConcerneDepuis != null;

  MaladiesListState clone({
    AllPurposesStatus? status,
    Map<String, EnsMaladie>? maladies,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return MaladiesListState(
      status: status ?? this.status,
      maladies: maladies ?? this.maladies,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, maladies, nonConcerneDepuis];
}
