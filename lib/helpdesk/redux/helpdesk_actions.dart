/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'helpdesk_redux.dart';

class CreateHelpdeskTicketAction {
  final FormulaireNouvelleDemandeInput input;
  final CreatingHelpdeskTicket creatingHelpdeskTicket;

  const CreateHelpdeskTicketAction({required this.input, required this.creatingHelpdeskTicket});
}

class _ProcessCreateHelpdeskTicketSuccessAction {}

class _ProcessCreateHelpdeskTicketErrorAction {}

class ReInitHelpdeskStateAction {}

class FetchNouvelleDemandeMotifsAction {}

class _ProcessFetchedNouvelleDemandeMotifsErrorAction {}

class _ProcessFetchedNouvelleDemandeMotifsSuccessAction {
  final List<NouvelleDemandeMotif> motifs;

  const _ProcessFetchedNouvelleDemandeMotifsSuccessAction(this.motifs);
}

class AddAttachmentAction {
  final EnsFileContent attachment;

  AddAttachmentAction(this.attachment);
}

class _ProcessAddAttachmentAction {
  final EnsFileContent attachment;

  _ProcessAddAttachmentAction(this.attachment);
}

class RemoveAttachmentAction {
  final EnsFileContent attachment;

  RemoveAttachmentAction(this.attachment);
}

class SendSignalementAction {
  final SendSignalementData signalement;

  const SendSignalementAction({required this.signalement});
}

class _ProcessSendSignalementSuccessAction {}

class _ProcessSendSignalementErrorAction {}

class FetchSignalementInformationAction {
  final SignalementType signalementType;
  final String idToSignal;

  const FetchSignalementInformationAction({required this.signalementType, required this.idToSignal});
}

class _ProcessFetchSignalementInformationSuccessAction {
  final SignalementInformation signalementInformation;

  _ProcessFetchSignalementInformationSuccessAction(this.signalementInformation);
}

class _ProcessFetchSignalementInformationErrorAction {}
