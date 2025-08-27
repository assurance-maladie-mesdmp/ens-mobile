/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/creating_helpdesk_ticket.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/nouvelle_demande_motif.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/send_signalement_data.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class NouvelleDemandeFormulaireScreenViewModel extends Equatable {
  final AllPurposesStatus createStatus;
  final String patientId;
  final String profileFullName;
  final void Function(CreatingHelpdeskTicket) createHelpdeskTicket;
  final AllPurposesStatus sendSignalementStatus;
  final void Function(SendSignalementData) sendSignalement;
  final String defaultMessage;
  final String sendingMessage;
  final int maxCharacters;
  final List<NouvelleDemandeMotif> motifs;
  final AllPurposesStatus motifsStatus;
  final void Function() reinitHelpeskState;
  final List<EnsFileContent> attachments;
  final void Function(EnsFileContent attachment) addAttachment;
  final void Function(EnsFileContent attachment) removeAttachment;
  final ProfilType profilType;
  final String? documentName;

  const NouvelleDemandeFormulaireScreenViewModel._internal({
    required this.createStatus,
    required this.patientId,
    required this.profileFullName,
    required this.createHelpdeskTicket,
    required this.sendSignalementStatus,
    required this.sendSignalement,
    required this.defaultMessage,
    required this.sendingMessage,
    required this.maxCharacters,
    required this.reinitHelpeskState,
    required this.motifsStatus,
    required this.motifs,
    required this.attachments,
    required this.addAttachment,
    required this.removeAttachment,
    required this.profilType,
    this.documentName,
  });

  factory NouvelleDemandeFormulaireScreenViewModel.from({
    required Store<EnsState> store,
    required FormulaireNouvelleDemandeInput input,
    required String? documentId,
    required String? serviceName,
    required String? psFullName,
  }) {
    final patientId = UserSelectors.getPatientId(store.state);
    final helpdeskState = store.state.helpdeskState;
    final profileFullName = store.state.userState.currentProfile.nomComplet;
    final documents = store.state.documentsState.documentsListState.documents;
    final defaultMessage = _getMessage(
      documents: documents,
      input: input,
      documentId: documentId,
      serviceName: serviceName,
      psFullName: psFullName,
    );
    final sendingMessage = defaultMessage.split('.\n')[0];
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    return NouvelleDemandeFormulaireScreenViewModel._internal(
      createStatus: helpdeskState.createHelpdeskTicketStatus,
      patientId: patientId,
      profileFullName: profileFullName,
      createHelpdeskTicket: (creatingHelpdeskTicket) {
        store.dispatch(CreateHelpdeskTicketAction(input: input, creatingHelpdeskTicket: creatingHelpdeskTicket));
      },
      sendSignalementStatus: store.state.helpdeskState.sendSignalementStatus,
      sendSignalement: (signalement) => store.dispatch(SendSignalementAction(signalement: signalement)),
      defaultMessage: defaultMessage,
      sendingMessage: sendingMessage,
      maxCharacters: 5000,
      motifs: store.state.helpdeskState.motifs,
      motifsStatus: store.state.helpdeskState.motifsStatus,
      reinitHelpeskState: () => store.dispatch(ReInitHelpdeskStateAction()),
      attachments: store.state.helpdeskState.attachments,
      addAttachment: (EnsFileContent attachment) => store.dispatch(AddAttachmentAction(attachment)),
      removeAttachment: (EnsFileContent attachment) => store.dispatch(RemoveAttachmentAction(attachment)),
      profilType: profilType,
      documentName: documents[documentId]?.title,
    );
  }

  static String _getMessage({
    required Map<String, EnsDocument> documents,
    required FormulaireNouvelleDemandeInput input,
    required String? documentId,
    required String? serviceName,
    required String? psFullName,
  }) {
    switch (input) {
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_DOCUMENT:
        final proprietaire = documents[documentId]?.proprietaire.fullName.capitalizeName();
        final title = documents[documentId]?.title;
        final documentDateFormatted = EnsDateUtils.formatddmmyyyyNullable(documents[documentId]?.date);
        return 'Bonjour,\nJ\'ai identifié un problème sur le document $title déposé le $documentDateFormatted par $proprietaire.';
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_SERVICE:
        final date = EnsDateUtils.formatddmmyyyy(clock.now());
        return 'Bonjour,\nJ\'ai identifié un problème sur le Service \"$serviceName\" le $date.';
      case FormulaireNouvelleDemandeInput.SIGNALER_UN_PS:
        final date = EnsDateUtils.formatddmmyyyy(clock.now());
        return 'Bonjour,\nJ\'ai identifié un problème avec l\'accès de \"$psFullName\" le $date.';
      case FormulaireNouvelleDemandeInput.NOUS_CONTACTER:
        return '';
    }
  }

  @override
  List<Object?> get props => [
        defaultMessage,
        sendingMessage,
        createStatus,
        sendSignalementStatus,
        patientId,
        profileFullName,
        maxCharacters,
        reinitHelpeskState,
        motifs,
        motifsStatus,
        attachments,
        profilType,
        documentName,
      ];
}
