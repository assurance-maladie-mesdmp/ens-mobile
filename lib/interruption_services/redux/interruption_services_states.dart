/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'interruption_services_redux.dart';

class InterruptionServicesState extends Equatable {
  final AllPurposesStatus interruptionDeServiceInfosStatus;
  final List<InterruptionDeServiceInfo> interruptionDeServiceInfos;

  const InterruptionServicesState({
    this.interruptionDeServiceInfosStatus = AllPurposesStatus.NOT_LOADED,
    this.interruptionDeServiceInfos = const [],
  });

  InterruptionServicesState clone({
    AllPurposesStatus? interruptionDeServiceInfosStatus,
    List<InterruptionDeServiceInfo>? interruptionDeServiceInfos,
  }) {
    return InterruptionServicesState(
      interruptionDeServiceInfosStatus: interruptionDeServiceInfosStatus ?? this.interruptionDeServiceInfosStatus,
      interruptionDeServiceInfos: interruptionDeServiceInfos ?? this.interruptionDeServiceInfos,
    );
  }

  @override
  List<Object?> get props => [interruptionDeServiceInfosStatus, interruptionDeServiceInfos];
}
