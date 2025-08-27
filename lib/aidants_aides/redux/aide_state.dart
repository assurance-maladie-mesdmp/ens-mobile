/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AideState extends Equatable {
  final SendInvitationState sendInvitationState;
  final DelegationsAideState delegationsState;

  const AideState({
    this.sendInvitationState = const SendInvitationState(),
    this.delegationsState = const DelegationsAideState(),
  });

  @override
  List<Object?> get props => [sendInvitationState, delegationsState];

  AideState clone({
    SendInvitationState? sendInvitationState,
    DelegationsAideState? delegationsState,
  }) {
    return AideState(
      sendInvitationState: sendInvitationState ?? this.sendInvitationState,
      delegationsState: delegationsState ?? this.delegationsState,
    );
  }
}

class SendInvitationState extends Equatable {
  final AllPurposesStatus rechercheAidantFormStatus;
  final PotentielAidant? potentielAidant;
  final AllPurposesStatus sendInvitationToPotentielAidantStatus;
  final String? numeroSecuFromScan;

  const SendInvitationState({
    this.rechercheAidantFormStatus = AllPurposesStatus.NOT_LOADED,
    this.sendInvitationToPotentielAidantStatus = AllPurposesStatus.NOT_LOADED,
    this.potentielAidant,
    this.numeroSecuFromScan,
  });

  @override
  List<Object?> get props => [
        rechercheAidantFormStatus,
        potentielAidant,
        sendInvitationToPotentielAidantStatus,
        numeroSecuFromScan,
      ];

  SendInvitationState clone({
    AllPurposesStatus? rechercheAidantFormStatus,
    Optional<PotentielAidant>? potentielAidantOptional,
    AllPurposesStatus? sendInvitationToPotentielAidantStatus,
    Optional<String>? numeroSecuFromScanOptional,
    bool? isNumeroSecuFromScan,
  }) {
    return SendInvitationState(
      rechercheAidantFormStatus: rechercheAidantFormStatus ?? this.rechercheAidantFormStatus,
      sendInvitationToPotentielAidantStatus:
          sendInvitationToPotentielAidantStatus ?? this.sendInvitationToPotentielAidantStatus,
      potentielAidant: potentielAidantOptional != null ? potentielAidantOptional.orElseNullable(null) : potentielAidant,
      numeroSecuFromScan:
          numeroSecuFromScanOptional != null ? numeroSecuFromScanOptional.orElseNullable(null) : numeroSecuFromScan,
    );
  }
}

class DelegationsAideState extends Equatable {
  final AllPurposesStatus statut;
  final DeleteDelegationState deleteDelegationState;
  final List<DelegationEnCours> delegationsEnCours;
  final List<DelegationEnAttente> delegationsEnAttente;

  const DelegationsAideState({
    this.statut = AllPurposesStatus.NOT_LOADED,
    this.deleteDelegationState = const DeleteDelegationState(),
    this.delegationsEnCours = const [],
    this.delegationsEnAttente = const [],
  });

  @override
  List<Object?> get props => [statut, deleteDelegationState, delegationsEnCours, delegationsEnAttente];

  DelegationsAideState clone({
    AllPurposesStatus? statut,
    DeleteDelegationState? deleteDelegationState,
    List<DelegationEnCours>? delegationsEnCours,
    List<DelegationEnAttente>? delegationsEnAttente,
  }) {
    return DelegationsAideState(
      statut: statut ?? this.statut,
      deleteDelegationState: deleteDelegationState ?? this.deleteDelegationState,
      delegationsEnCours: delegationsEnCours ?? this.delegationsEnCours,
      delegationsEnAttente: delegationsEnAttente ?? this.delegationsEnAttente,
    );
  }
}
