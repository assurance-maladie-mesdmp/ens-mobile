/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class AidantState extends Equatable {
  final InvitationsFromAidesState invitationsFromAidesState;
  final DelegationsAidantState delegationsState;

  const AidantState({
    this.invitationsFromAidesState = const InvitationsFromAidesState(),
    this.delegationsState = const DelegationsAidantState(),
  });

  @override
  List<Object?> get props => [invitationsFromAidesState, delegationsState];

  AidantState clone({
    InvitationsFromAidesState? invitationsFromAidesState,
    DelegationsAidantState? delegationsState,
  }) {
    return AidantState(
      invitationsFromAidesState: invitationsFromAidesState ?? this.invitationsFromAidesState,
      delegationsState: delegationsState ?? this.delegationsState,
    );
  }
}

class DelegationsAidantState extends Equatable {
  final AllPurposesStatus statut;
  final List<DelegationEnCours> delegationsEnCours;
  final DeleteDelegationState deleteDelegationState;

  const DelegationsAidantState({
    this.statut = AllPurposesStatus.NOT_LOADED,
    this.delegationsEnCours = const [],
    this.deleteDelegationState = const DeleteDelegationState(),
  });

  @override
  List<Object?> get props => [statut, deleteDelegationState, delegationsEnCours];

  DelegationsAidantState clone({
    AllPurposesStatus? statut,
    DeleteDelegationState? deleteDelegationState,
    List<DelegationEnCours>? delegationsEnCours,
  }) {
    return DelegationsAidantState(
      statut: statut ?? this.statut,
      deleteDelegationState: deleteDelegationState ?? this.deleteDelegationState,
      delegationsEnCours: delegationsEnCours ?? this.delegationsEnCours,
    );
  }
}

class InvitationsFromAidesState extends Equatable {
  final AllPurposesStatus fetchInvitationsFromAidesStatus;
  final List<InvitationFromAide> pendingInvitationsFromAides;
  final AcceptOrRefuseInvitationState acceptOrRefuseInvitationState;

  const InvitationsFromAidesState({
    this.fetchInvitationsFromAidesStatus = AllPurposesStatus.NOT_LOADED,
    this.pendingInvitationsFromAides = const [],
    this.acceptOrRefuseInvitationState = const AcceptOrRefuseInvitationState(),
  });

  InvitationsFromAidesState clone({
    AllPurposesStatus? fetchInvitationsFromAidesStatus,
    List<InvitationFromAide>? pendingInvitationsFromAides,
    AcceptOrRefuseInvitationState? acceptOrRefuseInvitationState,
  }) {
    return InvitationsFromAidesState(
      fetchInvitationsFromAidesStatus: fetchInvitationsFromAidesStatus ?? this.fetchInvitationsFromAidesStatus,
      pendingInvitationsFromAides: pendingInvitationsFromAides ?? this.pendingInvitationsFromAides,
      acceptOrRefuseInvitationState: acceptOrRefuseInvitationState ?? this.acceptOrRefuseInvitationState,
    );
  }

  @override
  List<Object?> get props => [
        fetchInvitationsFromAidesStatus,
        pendingInvitationsFromAides,
        acceptOrRefuseInvitationState,
      ];
}

class AcceptOrRefuseInvitationState extends Equatable {
  final AcceptOrRefuseInvitationStatus acceptOrRefuseStatus;
  final InvitationFromAide? invitationFromAide;
  final EnsFileContent? attestationPdf;

  const AcceptOrRefuseInvitationState({
    this.acceptOrRefuseStatus = AcceptOrRefuseInvitationStatus.NOT_LOADED,
    this.invitationFromAide,
    this.attestationPdf,
  });

  AcceptOrRefuseInvitationState clone({
    AcceptOrRefuseInvitationStatus? acceptOrRefuseStatus,
    Optional<InvitationFromAide>? invitationFromAideOptional,
    Optional<EnsFileContent>? attestationPdfOptional,
  }) {
    return AcceptOrRefuseInvitationState(
      acceptOrRefuseStatus: acceptOrRefuseStatus ?? this.acceptOrRefuseStatus,
      invitationFromAide:
          invitationFromAideOptional != null ? invitationFromAideOptional.orElseNullable(null) : invitationFromAide,
      attestationPdf: attestationPdfOptional != null ? attestationPdfOptional.orElseNullable(null) : attestationPdf,
    );
  }

  @override
  List<Object?> get props => [acceptOrRefuseStatus, invitationFromAide, attestationPdf];
}

enum AcceptOrRefuseInvitationStatus {
  NOT_LOADED,
  LOADING,
  ACCEPT_SUCCESS,
  REFUSE_SUCCESS,
  ERROR;

  bool isLoading() => this == LOADING;

  bool isAcceptSuccess() => this == ACCEPT_SUCCESS;

  bool isNotAcceptSuccess() => this != ACCEPT_SUCCESS;

  bool isError() => this == ERROR;
}

class DeleteDelegationState extends Equatable {
  final AllPurposesStatus status;
  final String? idDelegationToDelete;
  final String? acteurFirstName;
  final EnsFileContent? attestationPdf;
  final String? attestationDocumentId;

  const DeleteDelegationState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.idDelegationToDelete,
    this.acteurFirstName,
    this.attestationPdf,
    this.attestationDocumentId,
  });

  DeleteDelegationState clone({
    AllPurposesStatus? status,
    Optional<String>? idDelegationToDelete,
    String? acteurFirstName,
    Optional<EnsFileContent>? attestationPdfOptional,
    Optional<String>? attestationDocumentIdOptional,
  }) {
    return DeleteDelegationState(
      status: status ?? this.status,
      idDelegationToDelete:
          idDelegationToDelete != null ? idDelegationToDelete.orElseNullable(null) : this.idDelegationToDelete,
      acteurFirstName: acteurFirstName ?? this.acteurFirstName,
      attestationPdf: attestationPdfOptional != null ? attestationPdfOptional.orElseNullable(null) : attestationPdf,
      attestationDocumentId: attestationDocumentIdOptional != null
          ? attestationDocumentIdOptional.orElseNullable(null)
          : attestationDocumentId,
    );
  }

  @override
  List<Object?> get props => [status, idDelegationToDelete, acteurFirstName, attestationPdf, attestationDocumentId];
}
