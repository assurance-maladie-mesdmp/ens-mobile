/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'groupe_sanguin_redux.dart';

class GroupeSanguinState extends Equatable {
  final List<InformationsGroupeSanguin> informationsGroupeSanguinCms;
  final AllPurposesStatus dataStatus;
  final AllPurposesStatus latestOperationStatus;
  final GroupeSanguinData? groupeSanguinData;

  const GroupeSanguinState({
    this.informationsGroupeSanguinCms = const [],
    this.dataStatus = AllPurposesStatus.NOT_LOADED,
    this.latestOperationStatus = AllPurposesStatus.NOT_LOADED,
    this.groupeSanguinData,
  });

  GroupeSanguinState clone({
    List<InformationsGroupeSanguin>? informationsGroupeSanguinCms,
    AllPurposesStatus? dataStatus,
    AllPurposesStatus? latestOperationStatus,
    Optional<GroupeSanguinData>? groupeSanguinDataOptional,
  }) {
    return GroupeSanguinState(
      informationsGroupeSanguinCms: informationsGroupeSanguinCms ?? this.informationsGroupeSanguinCms,
      dataStatus: dataStatus ?? this.dataStatus,
      latestOperationStatus: latestOperationStatus ?? this.latestOperationStatus,
      groupeSanguinData:
          groupeSanguinDataOptional != null ? groupeSanguinDataOptional.orElseNullable(null) : groupeSanguinData,
    );
  }

  @override
  List<Object?> get props => [
        informationsGroupeSanguinCms,
        dataStatus,
        latestOperationStatus,
        groupeSanguinData,
      ];
}
