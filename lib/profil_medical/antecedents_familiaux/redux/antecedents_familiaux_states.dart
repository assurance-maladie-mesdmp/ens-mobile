/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'antecedents_familiaux_redux.dart';

class AntecedentsFamiliauxState extends Equatable {
  final AntecedentsFamiliauxListState antecedentsFamiliauxListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus antecedentsFamiliauxEditStatus;

  const AntecedentsFamiliauxState({
    this.antecedentsFamiliauxListState = const AntecedentsFamiliauxListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.antecedentsFamiliauxEditStatus = AllPurposesStatus.NOT_LOADED,
  });

  AntecedentsFamiliauxState clone({
    AntecedentsFamiliauxListState? antecedentsFamiliauxListState,
    AllPurposesStatus? updateNonConcerneStatus,
    AllPurposesStatus? antecedentsFamiliauxEditStatus,
  }) {
    return AntecedentsFamiliauxState(
      antecedentsFamiliauxListState: antecedentsFamiliauxListState ?? this.antecedentsFamiliauxListState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      antecedentsFamiliauxEditStatus: antecedentsFamiliauxEditStatus ?? this.antecedentsFamiliauxEditStatus,
    );
  }

  @override
  List<Object?> get props => [antecedentsFamiliauxListState, updateNonConcerneStatus, antecedentsFamiliauxEditStatus];
}

class AntecedentsFamiliauxListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsAntecedentFamilial> antecedentsFamiliaux;
  final DateTime? nonConcerneDepuis;

  const AntecedentsFamiliauxListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.antecedentsFamiliaux = const [],
    this.nonConcerneDepuis,
  });

  bool get isCompleted => antecedentsFamiliaux.isNotEmpty || nonConcerneDepuis != null;

  AntecedentsFamiliauxListState clone({
    AllPurposesStatus? status,
    List<EnsAntecedentFamilial>? antecedentsFamiliaux,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return AntecedentsFamiliauxListState(
      status: status ?? this.status,
      antecedentsFamiliaux: antecedentsFamiliaux ?? this.antecedentsFamiliaux,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, antecedentsFamiliaux, nonConcerneDepuis];
}
