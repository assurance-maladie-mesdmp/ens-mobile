/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_acknowledge.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_create_contact.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_delete_conversation.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_delete_draft_from_conversation.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_conversation_Id_from_message_Id.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_inbox.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_messages.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_piece_jointe.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_send_message.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_inactifs_check_contacts_status.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/messagerie_repository_mapper.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/inactif_ps_contact.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/messagerie.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/messagerie_domain_error.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IMessagerieRepository {
  Future<RequestResult<Messagerie>> getMessagerie(String patientId);

  Future<RequestResult<String>> getConversationId(String messageId, String patientId);

  Future<RequestResult<ConversationContent>> getConversationContent(String patientId, String conversationId);

  Future<RequestResult<SendMessageResult>> sendMessage(
    String patientId,
    SendMessageInput sendMessageInput, {
    bool isDraft = false,
  });

  Future<RequestResult<AttachmentContent>> getAttachmentContent(String patientId, String attachmentId);

  Future<RequestResult<void>> acknowledge(String patientId, String conversationId);

  Future<RequestResult<Messagerie>> deleteDraft(String patientId, String conversationId);

  Future<RequestResult<void>> deleteConversation(String patientId, String conversationId);

  Future<RequestResult<String>> createContact(String patientId, String email, String fullName, String esId);

  Future<RequestResult<List<InactifPsContact>>> checkInactifsPsContactStatus(List<ContactDetails> contacts);
}

class MessagerieRepository extends IMessagerieRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  MessagerieRepository({
    required this.ferryClient,
    required this.crashlytics,
  });

  @override
  Future<RequestResult<Messagerie>> getMessagerie(String patientId) async {
    try {
      final query = Gget_inboxReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.pageable.itemsPerPage = 1000
          ..vars.input.pageable.page = 0
          ..vars.input.patientId = patientId
          ..vars.input.filters.withNewMessage = true,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getInbox;
      if (result != null && result.conversations != null) {
        final messagerie = MessagerieRepositoryMapper.mapToMessagerie(result);
        if (messagerie != null) {
          return RequestResultSuccess(messagerie);
        } else {
          return RequestResultError.genericError();
        }
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> getConversationId(String messageId, String patientId) async {
    try {
      final query = Gget_conversation_id_from_message_idReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.messageId = messageId
          ..vars.input.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final conversationId = graphQLResponse.data?.getMessageById.conversationId;
      if (conversationId != null) {
        return RequestResultSuccess(conversationId);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ConversationContent>> getConversationContent(String patientId, String conversationId) async {
    try {
      final query = Gget_messagesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.conversationId = conversationId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getMessages;
      if (result != null) {
        final conversationContent = MessagerieRepositoryMapper.mapToConversationContent(result);
        if (conversationContent != null) {
          if (conversationContent.messages.isEmpty && conversationContent.draft == null) {
            return RequestResultError.error(domainError: MessagerieDomainError.NOT_FOUND);
          } else {
            return RequestResultSuccess(conversationContent);
          }
        } else {
          return RequestResultError.genericError();
        }
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<SendMessageResult>> sendMessage(
    String patientId,
    SendMessageInput sendMessageInput, {
    bool isDraft = false,
  }) async {
    try {
      final input = MessagerieRepositoryMapper.toGSendResponseInput(patientId, sendMessageInput, isDraft);
      final mutation = Gsend_messageReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.replace(input),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final codeError = graphQLResponse.extractFirstExtensionCode();
        final domainError = MessagerieDomainError.getErrorDomainFromGraphQLError(codeError);
        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.sendMessage;
      if (graphQLResult == null) {
        return RequestResultError.genericError();
      }

      final messagerie = MessagerieRepositoryMapper.mapToMessagerie(graphQLResult.mailBoxModel);
      final conversationContent =
          MessagerieRepositoryMapper.mapToConversationContent(graphQLResult.messageResponseModel);
      if (messagerie == null || conversationContent == null) {
        return RequestResultError.genericError();
      }
      final conversationId = graphQLResult.conversationId;
      return RequestResultSuccess(
        SendMessageResult(
          conversationId: conversationId,
          messagerie: messagerie,
          conversationContent: conversationContent,
        ),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<AttachmentContent>> getAttachmentContent(String patientId, String attachmentId) async {
    try {
      final query = Gget_piece_jointeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.fileId = attachmentId
          ..vars.input.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.getMessageFile;
      if (result != null) {
        return RequestResultSuccess(MessagerieRepositoryMapper.mapToAttachmentContent(result));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> acknowledge(String patientId, String conversationId) async {
    try {
      final mutation = GacknowledgeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.conversationId = conversationId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.acknowledge;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<Messagerie>> deleteDraft(String patientId, String conversationId) async {
    try {
      final mutation = Gdelete_draft_from_conversationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.deleteDraftFromConversationInput.patientId = patientId
          ..vars.deleteDraftFromConversationInput.conversationId = conversationId
          ..vars.deleteDraftFromConversationInput.filters.withNewMessage = true,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final mailboxFromApi = graphQLResponse.data?.deleteDraftFromConversation.mailBox;
      if (mailboxFromApi == null) {
        return RequestResultError.genericError();
      }

      final newMessagerie = MessagerieRepositoryMapper.mapToMessagerie(mailboxFromApi);
      if (newMessagerie == null) {
        return RequestResultError.genericError();
      }

      return RequestResultSuccess(newMessagerie);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteConversation(String patientId, String conversationId) async {
    try {
      final mutation = Gdelete_conversationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.conversationId = conversationId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.moveToTrashConversation;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> createContact(String patientId, String email, String fullName, String esId) async {
    try {
      final mutation = Gcreate_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.email = email
          ..vars.esId = esId
          ..vars.fullName = MessagerieRepositoryMapper.cleanName(fullName),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.createContactWithControl;
      if (result == null || !result.success) {
        return RequestResultError.genericError();
      }

      return RequestResultSuccess(result.contactId);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<InactifPsContact>>> checkInactifsPsContactStatus(List<ContactDetails> contacts) async {
    try {
      final mutation = Gcheck_inactifs_ps_contacts_statusReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.contactDetailsInput = ListBuilder(
            contacts.map(
              (contact) => GContactDetailsInput(
                (builder) => builder
                  ..idNat = contact.idNat
                  ..name = contact.name
                  ..type = contact.typeContact
                  ..typeBal = contact.addressMailType?.mapToString,
              ),
            ),
          ),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.checkContactsStatus;
      if (result != null) {
        return RequestResultSuccess(
          result.inactiveContacts
              .map(
                (inactiveContact) => InactifPsContact(
                  idNat: inactiveContact.idNat,
                  fullName: inactiveContact.fullName,
                ),
              )
              .toList(),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
