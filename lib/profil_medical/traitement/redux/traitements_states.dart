/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional.dart';

class TraitementsState extends Equatable {
  final TraitementsListState traitementsListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus traitementsEditState;
  final TraitementScannerState traitementScannerState;

  const TraitementsState({
    this.traitementsListState = const TraitementsListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.traitementsEditState = AllPurposesStatus.NOT_LOADED,
    this.traitementScannerState = const TraitementScannerState(),
  });

  TraitementsState clone({
    TraitementsListState? traitementsListState,
    AllPurposesStatus? updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    AllPurposesStatus? traitementsEditState,
    TraitementScannerState? traitementScannerState,
  }) {
    return TraitementsState(
      traitementsListState: traitementsListState ?? this.traitementsListState,
      traitementsEditState: traitementsEditState ?? this.traitementsEditState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      traitementScannerState: traitementScannerState ?? this.traitementScannerState,
    );
  }

  @override
  List<Object?> get props => [
        traitementsEditState,
        traitementsListState,
        updateNonConcerneStatus,
        traitementScannerState,
      ];
}

class TraitementScannerState extends Equatable {
  final AllPurposesStatus status;
  final String traitementName;

  const TraitementScannerState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.traitementName = '',
  });

  TraitementScannerState clone({AllPurposesStatus? status, String? traitementName}) {
    return TraitementScannerState(
      status: status ?? this.status,
      traitementName: traitementName ?? this.traitementName,
    );
  }

  @override
  List<Object?> get props => [status, traitementName];
}

class TraitementsListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsTraitement> traitements;
  final DateTime? nonConcerneDepuis;

  const TraitementsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.traitements = const [],
    this.nonConcerneDepuis,
  });

  bool get isCompleted => traitements.isNotEmpty || nonConcerneDepuis != null;

  TraitementsListState clone({
    AllPurposesStatus? status,
    List<EnsTraitement>? traitements,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return TraitementsListState(
      status: status ?? this.status,
      traitements: traitements ?? this.traitements,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, traitements, nonConcerneDepuis];
}
