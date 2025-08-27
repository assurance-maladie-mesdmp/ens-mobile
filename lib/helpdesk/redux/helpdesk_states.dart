/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'helpdesk_redux.dart';

class HelpdeskState extends Equatable {
  final AllPurposesStatus createHelpdeskTicketStatus;
  final AllPurposesStatus motifsStatus;
  final List<NouvelleDemandeMotif> motifs;
  final List<EnsFileContent> attachments;
  final AllPurposesStatus sendSignalementStatus;
  final SignalementInformationState signalementInformationState;

  const HelpdeskState({
    this.createHelpdeskTicketStatus = AllPurposesStatus.NOT_LOADED,
    this.motifsStatus = AllPurposesStatus.NOT_LOADED,
    this.motifs = const [],
    this.attachments = const [],
    this.sendSignalementStatus = AllPurposesStatus.NOT_LOADED,
    this.signalementInformationState = const SignalementInformationState(),
  });

  HelpdeskState clone({
    AllPurposesStatus? createHelpdeskTicketStatus,
    AllPurposesStatus? motifsStatus,
    List<NouvelleDemandeMotif>? motifs,
    List<EnsFileContent>? attachments,
    AllPurposesStatus? sendSignalementStatus,
    SignalementInformationState? signalementInformationState,
  }) {
    return HelpdeskState(
      createHelpdeskTicketStatus: createHelpdeskTicketStatus ?? this.createHelpdeskTicketStatus,
      motifsStatus: motifsStatus ?? this.motifsStatus,
      motifs: motifs ?? this.motifs,
      attachments: attachments ?? this.attachments,
      sendSignalementStatus: sendSignalementStatus ?? this.sendSignalementStatus,
      signalementInformationState: signalementInformationState ?? this.signalementInformationState,
    );
  }

  @override
  List<Object?> get props => [
        createHelpdeskTicketStatus,
        motifsStatus,
        motifs,
        attachments,
        sendSignalementStatus,
        signalementInformationState,
      ];
}

class SignalementInformationState extends Equatable {
  final AllPurposesStatus status;
  final SignalementInformation? signalementInformation;

  const SignalementInformationState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.signalementInformation,
  });

  SignalementInformationState clone({
    AllPurposesStatus? status,
    Optional<SignalementInformation>? signalementInformationOptional,
  }) {
    return SignalementInformationState(
      status: status ?? this.status,
      signalementInformation: signalementInformationOptional != null
          ? signalementInformationOptional.orElseNullable(null)
          : signalementInformation,
    );
  }

  bool get isSuccessWithData => status.isSuccess() && signalementInformation != null;

  @override
  List<Object?> get props => [status, signalementInformation];
}
