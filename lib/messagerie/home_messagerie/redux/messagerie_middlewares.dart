/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messagerie_redux.dart';

class MessagerieMiddlewares {
  final IMessagerieRepository messagerieRepository;
  final FileStorage fileStorage;

  MessagerieMiddlewares._(this.messagerieRepository, this.fileStorage);

  static List<Middleware<EnsState>> create(
    IMessagerieRepository messagerieRepository,
    FileStorage fileStorage,
  ) {
    final middleware = MessagerieMiddlewares._(messagerieRepository, fileStorage);
    return [
      TypedMiddleware<EnsState, FetchMessagerieAction>(middleware._onFetchMessagerieAction).call,
      TypedMiddleware<EnsState, FetchConversationContentAction>(middleware._onFetchConversationContentAction).call,
      TypedMiddleware<EnsState, SendMessageAction>(middleware._onSendMessageAction).call,
      TypedMiddleware<EnsState, SaveDraftAction>(middleware._onSaveDraftAction).call,
      TypedMiddleware<EnsState, AcknowledgeConversationAction>(middleware._onAcknowledgeConversationAction).call,
      TypedMiddleware<EnsState, FetchAttachmentContentAction>(middleware._onFetchAttachmentContentAction).call,
      TypedMiddleware<EnsState, DownloadAttachmentOnDeviceAction>(middleware._onDownloadAttachmentOnDeviceAction).call,
      TypedMiddleware<EnsState, DeleteDraftAction>(middleware._onDeleteDraftAction).call,
      TypedMiddleware<EnsState, UploadAttachmentAction>(middleware._onUploadAttachmentAction).call,
      TypedMiddleware<EnsState, DeleteAttachmentAction>(middleware._onDeleteAttachmentAction).call,
      TypedMiddleware<EnsState, DeleteConversationAction>(middleware._onDeleteConversationAction).call,
      TypedMiddleware<EnsState, CreateContactAction>(middleware._onCreateContactAction).call,
      TypedMiddleware<EnsState, PharmacieAddedAsRecipientAction>(middleware._onPharmacieAddedAsRecipientAction).call,
      TypedMiddleware<EnsState, InitNewConversationAction>(middleware._onInitNewConversationAction).call,
      TypedMiddleware<EnsState, CheckInactifsPsContactsStatusAction>(middleware._onCheckInactifsPsContactsStatus).call,
    ];
  }

  Future<void> _onFetchMessagerieAction(
    Store<EnsState> store,
    FetchMessagerieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final force = action.force;
    final currentHomeMessagerieState = store.state.messagerieState.homeMessagerieState;
    if (force || currentHomeMessagerieState.status.isNotSuccess()) {
      final result = await messagerieRepository.getMessagerie(patientId);
      result.onSuccess((messagerie) {
        store.dispatch(ProcessFetchedMessagerieSuccessAction(messagerie));
      });
      result.onError((_) {
        if (currentHomeMessagerieState.status.isSuccess()) {
          store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        }
        store.dispatch(ProcessFetchedMessagerieErrorAction());
      });
    }
  }

  Future<void> _onFetchConversationContentAction(
    Store<EnsState> store,
    FetchConversationContentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final conversationId = action.conversationId;
    final messageId = action.messageId;
    if (conversationId != null) {
      _processConversationWithId(patientId, conversationId, action, store);
    } else if (messageId != null) {
      final result = await messagerieRepository.getConversationId(messageId, patientId);
      result.onSuccess((successResult) {
        _processConversationWithId(patientId, successResult, action, store);
      });
      result.onError((_) {
        if (action.autoRetry) {
          DelayHelper.displayWithDelay(
            callback: () => store.dispatch(
              FetchConversationContentAction(
                conversationId: action.conversationId,
                messageId: action.messageId,
              ),
            ),
          );
        } else {
          store.dispatch(ProcessFetchedConversationContentErrorAction());
        }
      });
    }
  }

  Future<void> _processConversationWithId(
    String patientId,
    String conversationId,
    FetchConversationContentAction action,
    Store<EnsState> store,
  ) async {
    final result = await messagerieRepository.getConversationContent(patientId, conversationId);
    result.onSuccess((conversationContent) {
      store.dispatch(ProcessFetchedConversationContentSuccessAction(conversationId, conversationContent));
      store.dispatch(CheckInactifsPsContactsStatusAction(contacts: conversationContent.allContactsDetails));
    }).onError((domainError) {
      if (action.autoRetry) {
        DelayHelper.displayWithDelay(
          callback: () => store.dispatch(
            FetchConversationContentAction(
              conversationId: action.conversationId,
              messageId: action.messageId,
            ),
          ),
        );
      } else {
        store.dispatch(
          ProcessFetchedConversationContentErrorAction(
            conversationId: conversationId,
            errorType: domainError == MessagerieDomainError.NOT_FOUND
                ? FetchConversionContentErrorType.NOT_FOUND_ERROR
                : FetchConversionContentErrorType.GENERIC_ERROR,
          ),
        );
      }
    });
  }

  Future<void> _onSendMessageAction(Store<EnsState> store, SendMessageAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final sendMessageInput = action.sendMessageInput;
    final hasAttachment = sendMessageInput.fileDescriptor.isNotEmpty;
    final result = await messagerieRepository.sendMessage(patientId, sendMessageInput);
    result.onSuccess((sendMessageResult) {
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(const DisplaySnackbarAction.success('Message envoyé')),
      );
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessSendMessagesResultSuccessAction(sendMessageResult));
      if (hasAttachment) {
        store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.MESSAGERIE));
      }
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessSendMessagesResultErrorAction());
    });
  }

  Future<void> _onSaveDraftAction(Store<EnsState> store, SaveDraftAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final sendMessageInput = action.sendMessageInput;
    final result = await messagerieRepository.sendMessage(patientId, sendMessageInput, isDraft: true);
    result.onSuccess((successResult) {
      store.dispatch(UpdateConversationAction(successResult));
      if (action.shouldDisplaySnackBar) {
        store.dispatch(const DisplaySnackbarAction.success('Brouillon enregistré'));
      }
      if (action.shouldCheckInactifsPsContactsStatus) {
        store.dispatch(
          CheckInactifsPsContactsStatusAction(
            contacts: successResult.conversationContent.allContactsDetails,
          ),
        );
      }
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  void _onAcknowledgeConversationAction(
    Store<EnsState> store,
    AcknowledgeConversationAction action,
    NextDispatcher next,
  ) {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final conversationId = action.conversationId;
    messagerieRepository.acknowledge(patientId, conversationId);
  }

  Future<void> _onFetchAttachmentContentAction(
    Store<EnsState> store,
    FetchAttachmentContentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final attachmentId = action.attachmentId;
    final result = await messagerieRepository.getAttachmentContent(patientId, attachmentId);
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchedAttachmentContentSuccessAction(attachmentId, successResult));
    });
    result.onError((error) {
      store.dispatch(ProcessFetchedAttachmentContentErrorAction(attachmentId));
    });
  }

  Future<void> _onDownloadAttachmentOnDeviceAction(
    Store<EnsState> store,
    DownloadAttachmentOnDeviceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Téléchargement en cours'));
    final result = await fileStorage.exportAttachment(action.attachmentContent);
    if (result is FileExportationSuccess) {
      if (Platform.isAndroid) {
        store.dispatch(const DisplaySnackbarAction.success('Pièce jointe téléchargée'));
      } else {
        store.dispatch(const HideSnackBarAction());
      }
    } else {
      store.dispatch(const DisplaySnackbarAction.error('Erreur lors du téléchargement'));
    }
  }

  Future<void> _onDeleteDraftAction(Store<EnsState> store, DeleteDraftAction action, NextDispatcher next) async {
    next(action);
    final conversationId = action.conversationId;
    final result = await messagerieRepository.deleteDraft(UserSelectors.getPatientId(store.state), conversationId);
    result.onSuccess((messagerie) {
      if (action.shouldDisplaySnackBar) {
        store.dispatch(const DisplaySnackbarAction.success('Brouillon supprimé'));
      }
      store.dispatch(ProcessDeleteDraftSuccessAction(messagerie));
    });
    result.onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUploadAttachmentAction(
    Store<EnsState> store,
    UploadAttachmentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final sendMessageInput = action.sendMessageInput;
    final result = await messagerieRepository.sendMessage(patientId, sendMessageInput, isDraft: true);
    result.onSuccess((sendMessageResult) {
      if (action.isAPharmacie) {
        _dispatchSnackbarWarningDocumentForAPharmacie(store);
      } else {
        store.dispatch(const DisplaySnackbarAction.success('Pièce(s) jointe(s) ajoutée(s)'));
      }
      store.dispatch(UpdateConversationAction(sendMessageResult));
      store.dispatch(ProcessUploadAttachmentSuccessAction(sendMessageResult));
    });
    result.onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(ProcessUploadAttachmentErrorAction());
    });
  }

  Future<void> _onDeleteAttachmentAction(
    Store<EnsState> store,
    DeleteAttachmentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final sendMessageInput = action.sendMessageInput;
    final result = await messagerieRepository.sendMessage(patientId, sendMessageInput, isDraft: true);
    result.onSuccess((sendMessageResult) {
      store.dispatch(UpdateConversationAction(sendMessageResult));
    });
    result.onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
    store.dispatch(DeleteAttachmentFinishedAction());
  }

  void _onPharmacieAddedAsRecipientAction(
    Store<EnsState> store,
    PharmacieAddedAsRecipientAction action,
    NextDispatcher next,
  ) {
    next(action);
    final conversationContentState = store.state.messagerieState.conversationContentState;
    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      final draft = conversationContent!.draft;
      final hasAttachment = draft != null && (draft.fileDescriptors.isNotEmpty || draft.ensDocuments.isNotEmpty);
      if (hasAttachment) {
        _dispatchSnackbarWarningDocumentForAPharmacie(store);
      }
    }
  }

  void _dispatchSnackbarWarningDocumentForAPharmacie(Store<EnsState> store) {
    store.dispatch(
      const DisplaySnackbarAction.success(
        'Document(s) ajouté(s). Si j\'envoie une ordonnance à une pharmacie, '
        'je pense à apporter la version papier quand je vais chercher mon traitement',
        verylongDuration: true,
      ),
    );
  }

  Future<void> _onDeleteConversationAction(
    Store<EnsState> store,
    DeleteConversationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final conversationId = action.conversationId;
    store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours\u2026'));
    final result = await messagerieRepository.deleteConversation(patientId, conversationId);
    result.onSuccess((_) {
      store.dispatch(ProcessDeleteConversationSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Conversation supprimée'));
    });
    result.onError((_) {
      store.dispatch(ProcessDeleteConversationErrorAction());
      store.dispatch(
        const DisplaySnackbarAction.error('Une erreur est survenue lors de la suppression de la conversation.'),
      );
    });
  }

  Future<void> _onCreateContactAction(
    Store<EnsState> store,
    CreateContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final email = action.email;
    final fullName = action.fullName;
    final result = await messagerieRepository.createContact(patientId, email, fullName, action.esId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessCreatedContactSuccessAction(contactId: successResult, contactName: fullName));
    });
    result.onError((_) {
      store.dispatch(const DisplaySnackbarAction.error('Une erreur est survenue.'));
      store.dispatch(_ProcessCreatedContactErrorAction());
    });
  }

  Future<void> _onInitNewConversationAction(
    Store<EnsState> store,
    InitNewConversationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final conversationId = action.conversationId;
    store.dispatch(const InitSendMessageAction());
    store.dispatch(const FetchMessagerieAction());
    store.dispatch(const FetchPharmaciesSuggestionsAction());
    if (conversationId != null) {
      store.dispatch(FetchConversationContentAction(conversationId: conversationId));
    } else {
      store.dispatch(InitConversationContentStateAction());
    }
  }

  Future<void> _onCheckInactifsPsContactsStatus(
    Store<EnsState> store,
    CheckInactifsPsContactsStatusAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final filteredContacts = action.contacts.where((contact) => contact.isUsableContact).toList();
    _removeDuplicateContactDetails(filteredContacts);
    if (filteredContacts.isNotEmpty) {
      final result = await messagerieRepository.checkInactifsPsContactStatus(filteredContacts);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessCheckInactifsPsContactsStatusSuccessAction(inactifPsContacts: successResult));
      }).onError((domainError) {
        store.dispatch(_ProcessCheckInactifsPsContactsStatusErrorAction());
      });
    } else {
      store.dispatch(ReinitCheckInactifsPsContactsStatusAction());
    }
  }

  void _removeDuplicateContactDetails(List<ContactDetails> contactDetails) {
    final ids = contactDetails.map((contact) => contact.idNat).toSet();
    contactDetails.retainWhere((contact) => ids.remove(contact.idNat));
  }
}
