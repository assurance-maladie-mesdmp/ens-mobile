/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional.dart';

class HospitalisationsState extends Equatable {
  final HospitalisationsListState hospitalisationsListState;
  final AllPurposesStatus updateNonConcerneStatus;
  final AllPurposesStatus hospitalisationsEditStatus;

  const HospitalisationsState({
    this.hospitalisationsListState = const HospitalisationsListState(),
    this.updateNonConcerneStatus = AllPurposesStatus.NOT_LOADED,
    this.hospitalisationsEditStatus = AllPurposesStatus.NOT_LOADED,
  });

  HospitalisationsState clone({
    HospitalisationsListState? hospitalisationsListState,
    AllPurposesStatus? updateNonConcerneStatus,
    AllPurposesStatus? hospitalisationsEditStatus,
  }) {
    return HospitalisationsState(
      hospitalisationsListState: hospitalisationsListState ?? this.hospitalisationsListState,
      updateNonConcerneStatus: updateNonConcerneStatus ?? this.updateNonConcerneStatus,
      hospitalisationsEditStatus: hospitalisationsEditStatus ?? this.hospitalisationsEditStatus,
    );
  }

  @override
  List<Object?> get props => [hospitalisationsListState, updateNonConcerneStatus, hospitalisationsEditStatus];
}

class HospitalisationsListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsHospitalisation> hospitalisations;
  final DateTime? nonConcerneDepuis;

  const HospitalisationsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.hospitalisations = const [],
    this.nonConcerneDepuis,
  });

  bool get isCompleted => hospitalisations.isNotEmpty || nonConcerneDepuis != null;

  HospitalisationsListState clone({
    AllPurposesStatus? status,
    List<EnsHospitalisation>? hospitalisations,
    Optional<DateTime?>? nonConcerneDepuisOptional,
  }) {
    return HospitalisationsListState(
      status: status ?? this.status,
      hospitalisations: hospitalisations ?? this.hospitalisations,
      nonConcerneDepuis:
          nonConcerneDepuisOptional != null ? nonConcerneDepuisOptional.orElseNullable(null) : nonConcerneDepuis,
    );
  }

  @override
  List<Object?> get props => [status, hospitalisations, nonConcerneDepuis];
}
