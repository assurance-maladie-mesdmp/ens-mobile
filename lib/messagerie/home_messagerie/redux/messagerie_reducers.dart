/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messagerie_redux.dart';

class MessagerieReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchMessagerieAction>(MessagerieReducers._onFetchMessagerieAction).call,
        TypedReducer<EnsState, ProcessFetchedMessagerieSuccessAction>(
          MessagerieReducers._onProcessFetchedMessagerieSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedMessagerieErrorAction>(
          MessagerieReducers._onProcessFetchedMessagerieErrorAction,
        ).call,
        TypedReducer<EnsState, FetchConversationContentAction>(MessagerieReducers._onFetchConversationContentAction)
            .call,
        TypedReducer<EnsState, ProcessFetchedConversationContentSuccessAction>(
          MessagerieReducers._onProcessFetchedConversationContentSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedConversationContentErrorAction>(
          MessagerieReducers._onProcessFetchedConversationContentErrorAction,
        ).call,
        TypedReducer<EnsState, InitSendMessageAction>(MessagerieReducers._onInitSendMessageAction).call,
        TypedReducer<EnsState, InitConversationContentStateAction>(
          MessagerieReducers._onInitConversationContentStateAction,
        ).call,
        TypedReducer<EnsState, SendMessageAction>(MessagerieReducers._onSendMessageAction).call,
        TypedReducer<EnsState, ProcessSendMessagesResultSuccessAction>(
          MessagerieReducers._onProcessSendMessagesResultSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessSendMessagesResultErrorAction>(
          MessagerieReducers._onProcessSendMessagesResultErrorAction,
        ).call,
        TypedReducer<EnsState, AcknowledgeConversationAction>(MessagerieReducers._onAcknowledgeConversationAction).call,
        TypedReducer<EnsState, FetchAttachmentContentAction>(MessagerieReducers._onFetchAttachmentContentAction).call,
        TypedReducer<EnsState, ProcessFetchedAttachmentContentSuccessAction>(
          MessagerieReducers._onProcessFetchedAttachmentContentSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedAttachmentContentErrorAction>(
          MessagerieReducers._onProcessFetchedAttachmentContentErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteDraftSuccessAction>(MessagerieReducers._onProcessDeleteDraftSuccessAction)
            .call,
        TypedReducer<EnsState, UploadAttachmentAction>(MessagerieReducers._onUploadAttachmentAction).call,
        TypedReducer<EnsState, ProcessUploadAttachmentSuccessAction>(
          MessagerieReducers._onProcessUploadAttachmentSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessUploadAttachmentErrorAction>(
          MessagerieReducers._onProcessUploadAttachmentErrorAction,
        ).call,
        TypedReducer<EnsState, DeleteAttachmentAction>(MessagerieReducers._onDeleteAttachmentAction).call,
        TypedReducer<EnsState, DeleteAttachmentFinishedAction>(MessagerieReducers._onDeleteAttachmentFinishedAction)
            .call,
        TypedReducer<EnsState, UpdateConversationAction>(MessagerieReducers._onUpdateConversationAction).call,
        TypedReducer<EnsState, DeleteConversationAction>(MessagerieReducers._onDeleteConversationAction).call,
        TypedReducer<EnsState, ProcessDeleteConversationSuccessAction>(
          MessagerieReducers._onDeleteConversationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteConversationErrorAction>(
          MessagerieReducers._onDeleteConversationErrorAction,
        ).call,
        TypedReducer<EnsState, CreateContactAction>(MessagerieReducers._onCreateContactAction).call,
        TypedReducer<EnsState, _ProcessCreatedContactSuccessAction>(
          MessagerieReducers._onProcessCreatedContactSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessCreatedContactErrorAction>(
          MessagerieReducers._onProcessCreatedContactErrorAction,
        ).call,
        TypedReducer<EnsState, InitCreateContactAction>(MessagerieReducers._onInitCreateContactAction).call,
        TypedReducer<EnsState, CheckInactifsPsContactsStatusAction>(
          MessagerieReducers._onCheckInactifsPsContactsStatusAction,
        ).call,
        TypedReducer<EnsState, _ProcessCheckInactifsPsContactsStatusSuccessAction>(
          MessagerieReducers._onProcessCheckInactifsPsContactsStatusSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessCheckInactifsPsContactsStatusErrorAction>(
          MessagerieReducers._onProcessCheckInactifsPsContactsStatusErrorAction,
        ).call,
        TypedReducer<EnsState, ReinitCheckInactifsPsContactsStatusAction>(
          MessagerieReducers._onReinitCheckInactifsPsContactsStatusAction,
        ).call,
      ];

  static EnsState _onFetchMessagerieAction(EnsState state, FetchMessagerieAction action) {
    final force = action.force;
    final currentHomeMessagerieState = state.messagerieState.homeMessagerieState;
    if (force) {
      if (currentHomeMessagerieState.status.isSuccess()) {
        return state.clone(
          messagerieState: state.messagerieState.clone(
            homeMessagerieState: HomeMessagerieState(
              status: AllPurposesStatus.SUCCESS,
              messagerie: currentHomeMessagerieState.messagerie,
              isReloading: true,
            ),
          ),
        );
      } else {
        return state.clone(
          messagerieState: state.messagerieState.clone(
            homeMessagerieState: HomeMessagerieState(
              status: AllPurposesStatus.LOADING,
              messagerie: currentHomeMessagerieState.messagerie,
            ),
          ),
        );
      }
    } else if (currentHomeMessagerieState.status.isNotSuccess()) {
      return state.clone(
        messagerieState: state.messagerieState.clone(
          homeMessagerieState: const HomeMessagerieState(status: AllPurposesStatus.LOADING),
        ),
      );
    }

    return state;
  }

  static EnsState _onProcessFetchedMessagerieSuccessAction(
    EnsState state,
    ProcessFetchedMessagerieSuccessAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        homeMessagerieState: HomeMessagerieState(
          status: AllPurposesStatus.SUCCESS,
          messagerie: action.messagerie,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedMessagerieErrorAction(
    EnsState state,
    ProcessFetchedMessagerieErrorAction action,
  ) {
    final currentHomeMessagerieState = state.messagerieState.homeMessagerieState;
    if (currentHomeMessagerieState.status.isSuccess() && currentHomeMessagerieState.isReloading) {
      return state.clone(
        messagerieState: state.messagerieState.clone(
          homeMessagerieState: HomeMessagerieState(
            status: AllPurposesStatus.SUCCESS,
            messagerie: currentHomeMessagerieState.messagerie,
          ),
        ),
      );
    }
    return state.clone(
      messagerieState: state.messagerieState.clone(
        homeMessagerieState: const HomeMessagerieState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchConversationContentAction(EnsState state, FetchConversationContentAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        conversationContentState: const ConversationContentState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchedConversationContentSuccessAction(
    EnsState state,
    ProcessFetchedConversationContentSuccessAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        conversationContentState: ConversationContentState(
          status: AllPurposesStatus.SUCCESS,
          conversationContent: action.conversationContent.clone(
            id: action.conversationId,
            responseTemplate: action.conversationContent.responseTemplate.cloneWithNewConversationId(
              action.conversationId,
            ),
          ),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedConversationContentErrorAction(
    EnsState state,
    ProcessFetchedConversationContentErrorAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        conversationContentState: ConversationContentState(
          status: AllPurposesStatus.ERROR,
          conversationId: action.conversationId,
          errorType: action.errorType,
        ),
      ),
    );
  }

  static EnsState _onInitSendMessageAction(EnsState state, InitSendMessageAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        sendMessageState: const SendMessageState(status: AllPurposesStatus.NOT_LOADED),
      ),
    );
  }

  static EnsState _onInitConversationContentStateAction(EnsState state, InitConversationContentStateAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        conversationContentState: const ConversationContentState(status: AllPurposesStatus.NOT_LOADED),
      ),
    );
  }

  static EnsState _onSendMessageAction(EnsState state, SendMessageAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        sendMessageState: const SendMessageState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessSendMessagesResultSuccessAction(
    EnsState state,
    ProcessSendMessagesResultSuccessAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        sendMessageState: const SendMessageState(status: AllPurposesStatus.SUCCESS),
        conversationContentState: ConversationContentState(
          status: AllPurposesStatus.SUCCESS,
          conversationContent: action.sendMessageResult.conversationContent,
        ),
        homeMessagerieState: HomeMessagerieState(
          status: AllPurposesStatus.SUCCESS,
          messagerie: action.sendMessageResult.messagerie,
        ),
      ),
    );
  }

  static EnsState _onProcessSendMessagesResultErrorAction(
    EnsState state,
    ProcessSendMessagesResultErrorAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        sendMessageState: const SendMessageState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAcknowledgeConversationAction(EnsState state, AcknowledgeConversationAction action) {
    final currentHomeMessagerieState = state.messagerieState.homeMessagerieState;
    final messagerie = currentHomeMessagerieState.messagerie;
    if (currentHomeMessagerieState.isSuccessWithData) {
      final newConversation =
          messagerie!.conversations.map((c) => c.id == action.conversationId ? c.clone(read: true) : c).toList();
      final oneOrMoreUnreadConversation = newConversation.any((element) => element.read == false);
      return state.clone(
        messagerieState: state.messagerieState.clone(
          homeMessagerieState: HomeMessagerieState(
            status: AllPurposesStatus.SUCCESS,
            messagerie: messagerie.copyWith(
              conversations: newConversation,
              oneOrMoreUnreadConversation: oneOrMoreUnreadConversation,
            ),
            isReloading: false,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onFetchAttachmentContentAction(EnsState state, FetchAttachmentContentAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        attachmentContentState: AttachmentContentState(
          status: AllPurposesStatus.LOADING,
          attachmentId: action.attachmentId,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedAttachmentContentSuccessAction(
    EnsState state,
    ProcessFetchedAttachmentContentSuccessAction action,
  ) {
    final currentAttachmentContentState = state.messagerieState.attachmentContentState;
    if (currentAttachmentContentState.status.isLoading() &&
        currentAttachmentContentState.attachmentId == action.attachmentId) {
      return state.clone(
        messagerieState: state.messagerieState.clone(
          attachmentContentState: AttachmentContentState(
            status: AllPurposesStatus.SUCCESS,
            attachmentContent: action.attachmentContent,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchedAttachmentContentErrorAction(
    EnsState state,
    ProcessFetchedAttachmentContentErrorAction action,
  ) {
    final currentAttachmentContentState = state.messagerieState.attachmentContentState;
    if (currentAttachmentContentState.status.isLoading() &&
        currentAttachmentContentState.attachmentId == action.attachmentId) {
      return state.clone(
        messagerieState: state.messagerieState.clone(
          attachmentContentState: AttachmentContentState(
            status: AllPurposesStatus.ERROR,
            attachmentId: action.attachmentId,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessDeleteDraftSuccessAction(EnsState state, ProcessDeleteDraftSuccessAction action) {
    final currentConversationContentState = state.messagerieState.conversationContentState;
    final conversationContent = currentConversationContentState.conversationContent;
    if (currentConversationContentState.isSuccessWithData) {
      return state.clone(
        messagerieState: state.messagerieState.clone(
          conversationContentState: ConversationContentState(
            status: AllPurposesStatus.SUCCESS,
            conversationContent: conversationContent!.withoutDraft(),
          ),
          homeMessagerieState: HomeMessagerieState(
            status: AllPurposesStatus.SUCCESS,
            messagerie: action.newMessagerie,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onUploadAttachmentAction(EnsState state, UploadAttachmentAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        uploadAttachmentState: const UploadAttachmentState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessUploadAttachmentSuccessAction(EnsState state, ProcessUploadAttachmentSuccessAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        uploadAttachmentState: const UploadAttachmentState(status: AllPurposesStatus.SUCCESS),
      ),
    );
  }

  static EnsState _onProcessUploadAttachmentErrorAction(EnsState state, ProcessUploadAttachmentErrorAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        uploadAttachmentState: const UploadAttachmentState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onDeleteAttachmentAction(EnsState state, DeleteAttachmentAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        deleteAttachmentState: DeleteAttachmentState(
          status: DeleteAttachmentStatus.LOADING,
          attachmentId: action.attachmentIdToRemove,
        ),
      ),
    );
  }

  static EnsState _onDeleteAttachmentFinishedAction(EnsState state, DeleteAttachmentFinishedAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        deleteAttachmentState: const DeleteAttachmentState(status: DeleteAttachmentStatus.NOT_LOADED),
      ),
    );
  }

  static EnsState _onUpdateConversationAction(EnsState state, UpdateConversationAction action) {
    final sendMessageResult = action.sendMessageResult;
    return state.clone(
      messagerieState: state.messagerieState.clone(
        conversationContentState: ConversationContentState(
          status: AllPurposesStatus.SUCCESS,
          conversationContent: sendMessageResult.conversationContent.clone(
            responseTemplate: sendMessageResult.conversationContent.responseTemplate.cloneWithNewConversationId(
              sendMessageResult.conversationId,
            ),
          ),
        ),
        homeMessagerieState: HomeMessagerieState(
          status: AllPurposesStatus.SUCCESS,
          messagerie: sendMessageResult.messagerie,
        ),
      ),
    );
  }

  static EnsState _onDeleteConversationAction(EnsState state, DeleteConversationAction action) {
    final newConversationsBeingDeleted = Set<String>.from(state.messagerieState.conversationsBeingDeleted);
    newConversationsBeingDeleted.add(action.conversationId);
    return state.clone(
      messagerieState: state.messagerieState.clone(
        deleteConversationState: DeleteConversationState(
          status: AllPurposesStatus.LOADING,
          conversationId: action.conversationId,
        ),
        conversationsBeingDeleted: Set<String>.unmodifiable(newConversationsBeingDeleted),
      ),
    );
  }

  static EnsState _onDeleteConversationSuccessAction(EnsState state, ProcessDeleteConversationSuccessAction action) {
    final messagerieState = state.messagerieState;
    final newConversationsBeingDeleted = Set<String>.from(messagerieState.conversationsBeingDeleted);
    final conversationId = messagerieState.deleteConversationState.conversationId;
    newConversationsBeingDeleted.remove(conversationId);

    late HomeMessagerieState newHomeMessagerieState;
    final homeMessagerieState = messagerieState.homeMessagerieState;
    if (homeMessagerieState.isSuccessWithData && conversationId != null) {
      final messagerie = homeMessagerieState.messagerie!;
      newHomeMessagerieState = _newListStateWithoutDeletedDocument(messagerie, conversationId);
    } else {
      newHomeMessagerieState = homeMessagerieState;
    }

    return state.clone(
      messagerieState: messagerieState.clone(
        homeMessagerieState: newHomeMessagerieState,
        conversationsBeingDeleted: Set<String>.unmodifiable(newConversationsBeingDeleted),
        deleteConversationState: const DeleteConversationState(
          status: AllPurposesStatus.SUCCESS,
        ),
      ),
    );
  }

  static EnsState _onDeleteConversationErrorAction(EnsState state, ProcessDeleteConversationErrorAction action) {
    final messagerieState = state.messagerieState;
    final newConversationsBeingDeleted = Set<String>.from(messagerieState.conversationsBeingDeleted);
    newConversationsBeingDeleted.remove(messagerieState.deleteConversationState.conversationId);

    return state.clone(
      messagerieState: messagerieState.clone(
        conversationsBeingDeleted: Set<String>.unmodifiable(newConversationsBeingDeleted),
        deleteConversationState: const DeleteConversationState(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static HomeMessagerieState _newListStateWithoutDeletedDocument(Messagerie currentMessagerie, String deletedId) {
    final newList = [...currentMessagerie.conversations];
    newList.removeWhere((element) => element.id == deletedId);
    return HomeMessagerieState(
      status: AllPurposesStatus.SUCCESS,
      messagerie: currentMessagerie.copyWith(conversations: newList),
    );
  }

  static EnsState _onCreateContactAction(EnsState state, CreateContactAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        createContactState: const CreateContactState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessCreatedContactSuccessAction(EnsState state, _ProcessCreatedContactSuccessAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        createContactState: CreateContactState(
          status: AllPurposesStatus.SUCCESS,
          contactId: action.contactId,
          contactName: action.contactName,
        ),
      ),
    );
  }

  static EnsState _onProcessCreatedContactErrorAction(EnsState state, _ProcessCreatedContactErrorAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        createContactState: const CreateContactState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onInitCreateContactAction(EnsState state, InitCreateContactAction action) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        createContactState: const CreateContactState(status: AllPurposesStatus.NOT_LOADED),
      ),
    );
  }

  static EnsState _onCheckInactifsPsContactsStatusAction(
    EnsState state,
    CheckInactifsPsContactsStatusAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        inactifPsContactsState: const InactifPsContactsState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessCheckInactifsPsContactsStatusSuccessAction(
    EnsState state,
    _ProcessCheckInactifsPsContactsStatusSuccessAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        inactifPsContactsState: InactifPsContactsState(
          status: AllPurposesStatus.SUCCESS,
          contacts: action.inactifPsContacts,
        ),
      ),
    );
  }

  static EnsState _onProcessCheckInactifsPsContactsStatusErrorAction(
    EnsState state,
    _ProcessCheckInactifsPsContactsStatusErrorAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        inactifPsContactsState: const InactifPsContactsState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onReinitCheckInactifsPsContactsStatusAction(
    EnsState state,
    ReinitCheckInactifsPsContactsStatusAction action,
  ) {
    return state.clone(
      messagerieState: state.messagerieState.clone(
        inactifPsContactsState: const InactifPsContactsState(status: AllPurposesStatus.NOT_LOADED),
      ),
    );
  }
}
