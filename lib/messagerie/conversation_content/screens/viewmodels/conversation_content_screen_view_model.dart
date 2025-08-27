/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_screen.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_view_model_helper.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class ConversationContentScreenViewModel extends Equatable {
  final ProfilType profilType;
  final ConversationContentStatus conversationContentStatus;
  final AllPurposesStatus suppressionStatus;
  final bool withReplyFloatingButton;
  final String? responseButtonLabel;
  final ConversationContentScreenArguments? arguments;
  final String? subject;
  final List<ConversationContentScreenDisplayModelItem>? displayModels;
  final bool? shouldAcknowledge;
  final String? conversationFinalizedBy;
  final bool isConversationFinalized;
  final bool shouldDisplayCantReplySnackbar;
  final bool shouldDisplayReplyOptionsBottomSheet;
  final List<ReplyOptionType> replyOptions;
  final String? acteurDeSanteContactNameForTrace;
  final List<String> inactifPsContactNamesList;
  final void Function() refreshMessages;
  final void Function() dispatchAcknowledgeIfNeeded;
  final void Function() deleteConversation;
  final void Function() displayUnavailableAsAidantSnackbar;

  const ConversationContentScreenViewModel._internal({
    required this.profilType,
    required this.conversationContentStatus,
    this.suppressionStatus = AllPurposesStatus.NOT_LOADED,
    this.withReplyFloatingButton = false,
    this.responseButtonLabel,
    this.arguments,
    this.subject,
    this.displayModels,
    this.shouldAcknowledge,
    this.conversationFinalizedBy,
    this.isConversationFinalized = false,
    required this.shouldDisplayCantReplySnackbar,
    required this.shouldDisplayReplyOptionsBottomSheet,
    required this.replyOptions,
    this.acteurDeSanteContactNameForTrace,
    required this.inactifPsContactNamesList,
    required this.refreshMessages,
    required this.dispatchAcknowledgeIfNeeded,
    required this.deleteConversation,
    required this.displayUnavailableAsAidantSnackbar,
  });

  factory ConversationContentScreenViewModel.from(
    Store<EnsState> store,
    MessagerieViewModelHelper helper,
  ) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final String profilFullName = store.state.userState.currentProfile.nomComplet;

    final messagerieState = store.state.messagerieState;
    final conversationContentState = messagerieState.conversationContentState;
    final deleteConversationState = messagerieState.deleteConversationState;
    final inactifPsContactsState = messagerieState.inactifPsContactsState;

    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      final profile = store.state.userState.currentProfile;
      final draft = conversationContent!.draft;
      final MessageItemDisplayModel? draftDisplayModel = _buildDraftDisplayModel(draft, helper, profile);
      final List<ConversationContentScreenDisplayModelItem> messagesDisplayModel = [
        ConversationContentScreenHeaderDisplayModel(),
        ..._buildMessagesDisplayModel(conversationContent, draftDisplayModel, helper, profile),
      ];
      final String? conversationFinalizedBy = conversationContent.responseTemplate.conversationFinalizedBy;
      final bool isConversationFinalized = conversationFinalizedBy != null;
      final List<ReplyOptionType> replyOptions = conversationContent.responseTemplate.replyOptions;
      final bool shouldDisplayCantReplySnackbar = replyOptions.isEmpty && !isConversationFinalized;
      final bool shouldDisplayReplyOptionsBottomSheet = draft == null &&
          conversationContent.responseTemplate.recipients.length > 1 &&
          (replyOptions.contains(ReplyOptionType.REPLY_TO_ALL) && replyOptions.contains(ReplyOptionType.REPLY));

      final arguments = ConversationContentScreenArguments(conversationId: conversationContent.id);
      return ConversationContentScreenViewModel._internal(
        profilType: profilType,
        conversationContentStatus: ConversationContentStatus.SUCCESS,
        suppressionStatus: deleteConversationState.status,
        withReplyFloatingButton: !isConversationFinalized && !shouldDisplayCantReplySnackbar,
        responseButtonLabel: _buildResponseButtonLabel(draftDisplayModel, replyOptions),
        subject: conversationContent.subject,
        displayModels: messagesDisplayModel,
        arguments: arguments,
        shouldAcknowledge: conversationContent.acknowledge,
        conversationFinalizedBy: conversationFinalizedBy,
        isConversationFinalized: isConversationFinalized,
        shouldDisplayCantReplySnackbar: shouldDisplayCantReplySnackbar,
        shouldDisplayReplyOptionsBottomSheet: shouldDisplayReplyOptionsBottomSheet,
        replyOptions: replyOptions,
        acteurDeSanteContactNameForTrace: conversationContent.responseTemplate.recipients.firstOrNull,
        inactifPsContactNamesList: inactifPsContactsState.contacts.map((contact) => contact.fullName).toList(),
        refreshMessages: () => _refreshMessages(store, arguments),
        dispatchAcknowledgeIfNeeded: () =>
            _dispatchAcknowledgeIfNeeded(store, arguments, conversationContent.acknowledge),
        deleteConversation: () => _deleteConversation(store, arguments),
        displayUnavailableAsAidantSnackbar: () {
          store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
        },
      );
    } else if (conversationContentState.status.isError() &&
        conversationContentState.errorType == FetchConversionContentErrorType.NOT_FOUND_ERROR) {
      final arguments = ConversationContentScreenArguments(conversationId: conversationContentState.conversationId);
      return ConversationContentScreenViewModel._internal(
        profilType: profilType,
        conversationContentStatus: ConversationContentStatus.NOT_FOUND_ERROR,
        arguments: arguments,
        shouldDisplayCantReplySnackbar: false,
        shouldDisplayReplyOptionsBottomSheet: false,
        replyOptions: const [],
        inactifPsContactNamesList: const [],
        refreshMessages: () => _refreshMessages(store, arguments),
        dispatchAcknowledgeIfNeeded: () =>
            _dispatchAcknowledgeIfNeeded(store, arguments, conversationContent?.acknowledge),
        deleteConversation: () => _deleteConversation(store, arguments),
        displayUnavailableAsAidantSnackbar: () {
          store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
        },
      );
    } else if (conversationContentState.isErrorOrSuccessWithoutData) {
      final arguments = ConversationContentScreenArguments(conversationId: conversationContentState.conversationId);
      return ConversationContentScreenViewModel._internal(
        profilType: profilType,
        conversationContentStatus: ConversationContentStatus.GENERIC_ERROR,
        arguments: arguments,
        shouldDisplayCantReplySnackbar: false,
        shouldDisplayReplyOptionsBottomSheet: false,
        replyOptions: const [],
        inactifPsContactNamesList: const [],
        refreshMessages: () => _refreshMessages(store, arguments),
        dispatchAcknowledgeIfNeeded: () =>
            _dispatchAcknowledgeIfNeeded(store, arguments, conversationContent?.acknowledge),
        deleteConversation: () => _deleteConversation(store, arguments),
        displayUnavailableAsAidantSnackbar: () {
          store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
        },
      );
    } else if (conversationContentState.status.isLoading()) {
      return ConversationContentScreenViewModel._internal(
        profilType: profilType,
        conversationContentStatus: ConversationContentStatus.LOADING,
        shouldDisplayCantReplySnackbar: false,
        shouldDisplayReplyOptionsBottomSheet: false,
        replyOptions: const [],
        inactifPsContactNamesList: const [],
        refreshMessages: () {},
        dispatchAcknowledgeIfNeeded: () {},
        deleteConversation: () {},
        displayUnavailableAsAidantSnackbar: () {
          store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
        },
      );
    } else {
      return ConversationContentScreenViewModel._internal(
        profilType: profilType,
        conversationContentStatus: ConversationContentStatus.LOADING,
        shouldDisplayCantReplySnackbar: false,
        shouldDisplayReplyOptionsBottomSheet: false,
        replyOptions: const [],
        inactifPsContactNamesList: const [],
        refreshMessages: () {},
        dispatchAcknowledgeIfNeeded: () {},
        deleteConversation: () {},
        displayUnavailableAsAidantSnackbar: () {
          store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
        },
      );
    }
  }

  static List<MessageItemDisplayModel> _buildMessagesDisplayModel(
    ConversationContent conversationContent,
    MessageItemDisplayModel? draftDisplayModel,
    MessagerieViewModelHelper helper,
    EnsProfil? profileData,
  ) {
    final List<MessageItemDisplayModel> messagesDisplayModel = conversationContent.messages
        .map(
          (msg) => MessageItemDisplayModel.build(
            helper,
            profileData,
            from: msg.contactList.from,
            date: msg.date,
            content: msg.content,
            recipients: msg.contactList.recipients,
            files: msg.fileDescriptors,
          ),
        )
        .toList();
    if (draftDisplayModel != null) {
      messagesDisplayModel.insert(0, draftDisplayModel);
    }
    return messagesDisplayModel;
  }

  static MessageItemDisplayModel? _buildDraftDisplayModel(
    MessageDraft? draft,
    MessagerieViewModelHelper helper,
    EnsProfil? profileData,
  ) {
    final MessageItemDisplayModel? draftDisplayModel = draft != null
        ? MessageItemDisplayModel.build(
            helper,
            profileData,
            from: draft.contactList.from,
            date: draft.date,
            content: draft.content,
            recipients: draft.contactList.recipients,
            files: draft.fileDescriptors,
            isDraft: true,
          )
        : null;
    return draftDisplayModel;
  }

  static String _buildResponseButtonLabel(
    MessageItemDisplayModel? draftDisplayModel,
    List<ReplyOptionType> replyOptions,
  ) {
    if (draftDisplayModel != null) {
      return 'Reprendre mon brouillon';
    }
    if (replyOptions.contains(ReplyOptionType.REPLY)) {
      return 'Répondre';
    }
    return 'Répondre à tous';
  }

  static void _refreshMessages(Store<EnsState> store, ConversationContentScreenArguments arguments) {
    store.dispatch(
      FetchConversationContentAction(
        conversationId: arguments.conversationId,
        messageId: arguments.messageId,
      ),
    );
  }

  static void _dispatchAcknowledgeIfNeeded(
    Store<EnsState> store,
    ConversationContentScreenArguments arguments,
    bool? shouldAcknowledge,
  ) {
    if (shouldAcknowledge == true && arguments.conversationId != null) {
      store.dispatch(AcknowledgeConversationAction(arguments.conversationId!));
    }
  }

  static void _deleteConversation(Store<EnsState> store, ConversationContentScreenArguments arguments) {
    if (arguments.conversationId != null) {
      store.dispatch(DeleteConversationAction(arguments.conversationId!));
    }
  }

  @override
  List<Object?> get props => [
        profilType,
        conversationContentStatus,
        suppressionStatus,
        withReplyFloatingButton,
        responseButtonLabel,
        arguments,
        subject,
        displayModels,
        shouldAcknowledge,
        conversationFinalizedBy,
        isConversationFinalized,
        shouldDisplayCantReplySnackbar,
        shouldDisplayReplyOptionsBottomSheet,
        replyOptions,
        acteurDeSanteContactNameForTrace,
        inactifPsContactNamesList,
      ];
}

enum ConversationContentStatus { LOADING, SUCCESS, GENERIC_ERROR, NOT_FOUND_ERROR }

abstract class ConversationContentScreenDisplayModelItem extends Equatable {
  @override
  List<Object?> get props => [];
}

class ConversationContentScreenHeaderDisplayModel extends ConversationContentScreenDisplayModelItem {}

class MessageItemDisplayModel extends ConversationContentScreenDisplayModelItem {
  final TypeOfContact? fromContact;
  final String dateLabel;
  final List<TypeOfContact> recipients;
  final List<FileAttachmentDisplayModel> attachments;
  final String content;
  final bool withDraftIndicator;

  MessageItemDisplayModel({
    this.fromContact,
    required this.dateLabel,
    required this.recipients,
    required this.attachments,
    required this.content,
    required this.withDraftIndicator,
  });

  factory MessageItemDisplayModel.build(
    MessagerieViewModelHelper helper,
    EnsProfil? profileData, {
    ContactDetails? from,
    required DateTime date,
    required List<ContactDetails> recipients,
    required List<FileDescriptor> files,
    required String content,
    bool isDraft = false,
  }) {
    TypeOfContact? fromContact;
    if (from != null) {
      fromContact = TypeOfContactFactory.handleContact(
        ContactDetails(
          name: helper.prepareEmailLabel(from.name, profileData),
          typeContact: from.typeContact,
          idNat: from.idNat,
          addressMailType: from.addressMailType,
        ),
      );
    }

    final toRecipients = recipients
        .map(
          (recipient) => TypeOfContactFactory.handleContact(
            ContactDetails(
              name: helper.prepareEmailLabel(recipient.name, profileData),
              typeContact: recipient.typeContact,
              idNat: recipient.idNat,
              addressMailType: recipient.addressMailType,
            ),
          ),
        )
        .toList();

    return MessageItemDisplayModel(
      fromContact: fromContact,
      dateLabel: helper.formatForMessagerie(date),
      recipients: toRecipients,
      attachments: files.map((f) => FileAttachmentDisplayModel(documentId: f.id, name: f.name)).toList(),
      content: content,
      withDraftIndicator: isDraft,
    );
  }

  @override
  List<Object?> get props => [fromContact, dateLabel, recipients, attachments, content, withDraftIndicator];
}
