/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'handicaps_redux.dart';

class HandicapsState extends Equatable {
  final HandicapsListState handicapsListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus handicapEditStatus;

  const HandicapsState({
    this.handicapsListState = const HandicapsListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.handicapEditStatus = AllPurposesStatus.NOT_LOADED,
  });

  HandicapsState clone({
    HandicapsListState? handicapsListState,
    AllPurposesStatus? updateNonConcerneStatus,
    AllPurposesStatus? handicapEditStatus,
  }) {
    return HandicapsState(
      handicapsListState: handicapsListState ?? this.handicapsListState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      handicapEditStatus: handicapEditStatus ?? this.handicapEditStatus,
    );
  }

  @override
  List<Object?> get props => [handicapsListState, updateNonConcerneStatus, handicapEditStatus];
}

class HandicapsListState extends Equatable {
  final AllPurposesStatus status;
  final Map<String, EnsHandicap> handicaps;
  final DateTime? nonConcerneDepuis;

  const HandicapsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.handicaps = const {},
    this.nonConcerneDepuis,
  });

  bool get isCompleted => handicaps.isNotEmpty || nonConcerneDepuis != null;

  HandicapsListState clone({
    AllPurposesStatus? status,
    Map<String, EnsHandicap>? handicaps,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return HandicapsListState(
      status: status ?? this.status,
      handicaps: handicaps ?? this.handicaps,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, handicaps, nonConcerneDepuis];
}
