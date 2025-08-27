/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'allergies_redux.dart';

class AllergiesState extends Equatable {
  final AllergiesListState allergiesListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus allergiesEditStatus;

  const AllergiesState({
    this.allergiesListState = const AllergiesListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.allergiesEditStatus = AllPurposesStatus.NOT_LOADED,
  });

  AllergiesState clone({
    AllergiesListState? allergiesListState,
    AllPurposesStatus? updateNonConcerneStatus,
    AllPurposesStatus? allergiesEditStatus,
  }) {
    return AllergiesState(
      allergiesListState: allergiesListState ?? this.allergiesListState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      allergiesEditStatus: allergiesEditStatus ?? this.allergiesEditStatus,
    );
  }

  @override
  List<Object?> get props => [allergiesListState, updateNonConcerneStatus, allergiesEditStatus];
}

class AllergiesListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsAllergie> allergies;
  final DateTime? nonConcerneDepuis;

  const AllergiesListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.allergies = const [],
    this.nonConcerneDepuis,
  });

  bool get isCompleted => allergies.isNotEmpty || nonConcerneDepuis != null;

  AllergiesListState clone({
    AllPurposesStatus? status,
    List<EnsAllergie>? allergies,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return AllergiesListState(
      status: status ?? this.status,
      allergies: allergies ?? this.allergies,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, allergies, nonConcerneDepuis];
}
