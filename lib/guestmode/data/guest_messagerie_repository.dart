/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/messagerie_repository.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_summary.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/inactif_ps_contact.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/messagerie.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';

class GuestMessagerieRepository extends IMessagerieRepository {
  @override
  Future<RequestResult<Messagerie>> getMessagerie(String patientId) {
    final List<ConversationSummary> conversations = [
      ConversationSummary(
        id: '0',
        from: 'Christelle Thomas',
        date: DateTime.now().subtract(const Duration(days: 1)),
        hasDraft: false,
        hasAttachment: false,
        subject: 'Préparation de votre rendez-vous',
        read: false,
        isNewMessage: false,
      ),
    ];

    return Future.value(
      RequestResultSuccess(
        Messagerie(
          userMail: 'INS@patient.mssante.fr',
          oneOrMoreUnreadConversation: true,
          conversations: conversations,
          contacts: const [
            PsContact(id: '0', name: 'Christelle Thomas'),
            PsContact(id: '1', name: 'Marie Chanteau'),
          ],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<String>> getConversationId(String messageId, String patientId) async {
    return RequestResultSuccess('0');
  }

  @override
  Future<RequestResult<AttachmentContent>> getAttachmentContent(String patientId, String attachmentId) {
    return Future.value(RequestResultError.genericError());
  }

  @override
  Future<RequestResult<ConversationContent>> getConversationContent(String patientId, String conversationId) {
    final List<Message> messages = [
      Message(
        id: '0',
        contactList: const ContactsList([
          ContactDetails(name: 'Gabrielle Capanelli', typeContact: 'f', addressMailType: AddressMailType.PER),
          ContactDetails(
            name: 'Christelle Thomas',
            typeContact: 't',
            idNat: 'idNat2',
            addressMailType: AddressMailType.PER,
          ),
          ContactDetails(name: 'Marie Chanteau', typeContact: 't', addressMailType: AddressMailType.PER),
          ContactDetails(
            name: 'Pharmacie Dupond',
            typeContact: 't',
            idNat: 'ESID',
            addressMailType: AddressMailType.ORG,
          ),
        ]),
        date: DateTime(2020, 2, 3),
        content: '''
        Bonjour Christelle, <br/><br/>
Merci, c'est noté !<br/><br/>
Gabrielle
        ''',
        read: false,
        fileDescriptors: const [],
      ),
      Message(
        id: '1',
        contactList: const ContactsList([
          ContactDetails(name: 'Christelle Thomas', typeContact: 'f', addressMailType: AddressMailType.PER),
          ContactDetails(name: 'Gabrielle Capanelli', typeContact: 't', addressMailType: AddressMailType.PER),
          ContactDetails(name: 'Marie Chanteau', typeContact: 't', addressMailType: AddressMailType.PER),
        ]),
        date: DateTime(2020, 2, 3),
        content: '''
        Bonjour Gabrielle, <br/><br/>
    Je vous confirme votre rendez-vous du lundi 7 juin à 15h avec le Dr Chanteau Marie.<br/>
    En préparation de votre rendez-vous de suivi mensuel pour la maladie de crohn, j’aurais besoin de :<br/>
    - Vos derniers résultats d’examen endoscopique,<br/>
    - Votre dernière prise de sang,<br/>
    - Votre dernier examen des yeux,<br/>
    - Un extrait de vos dernières notes ou mesures (intensités des douleurs, appétit, poids, couleurs des selles, taux de glucose, densité des os etc.),<br/>
    - Toutes choses pouvant nous aider à suivre l’évolution de votre maladie.<br/><br/>
    Bonne journée,<br/><br/>Christelle Thomas<br/>
    Secrétaire médicale du Dr Chanteau Marie 
    ''',
        read: false,
        fileDescriptors: const [],
      ),
    ];

    const ResponseTemplate responseTemplate = ResponseTemplate(
      conversationId: '0',
      messageId: '2',
      from: 'Docteur Pasteur',
      recipients: ['moi'],
      conversationFinalizedBy: null,
      remainSizeFiles: 20000,
      replyOptions: [ReplyOptionType.REPLY],
      to: 'Dr No',
    );

    final ConversationContent messageResponse = ConversationContent(
      subject: 'Préparation de votre rendez-vous',
      acknowledge: false,
      messages: messages,
      draft: null,
      responseTemplate: responseTemplate,
    );

    return Future.value(RequestResultSuccess(messageResponse));
  }

  @override
  Future<RequestResult<SendMessageResult>> sendMessage(
    String patientId,
    SendMessageInput sendMessageInput, {
    bool isDraft = false,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> acknowledge(String patientId, String conversationId) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<Messagerie>> deleteDraft(String patientId, String conversationId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> deleteConversation(String patientId, String conversationId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> createContact(String patientId, String email, String fullName, String esId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<List<InactifPsContact>>> checkInactifsPsContactStatus(List<ContactDetails> contacts) {
    return Future.value(RequestResultSuccess(const []));
  }
}
