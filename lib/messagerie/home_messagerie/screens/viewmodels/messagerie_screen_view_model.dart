/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/clipboard/redux/clipboard_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_summary.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_view_model_helper.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class MessagerieScreenViewModel extends Equatable {
  final MessagerieStatus messagerieStatus;
  final String? profilFullName;
  final ProfilType profilType;
  final String? userEmail;
  final List<MessagerieScreenItemDisplayModel>? conversations;
  final Function(String conversationId) deleteConversation;
  final void Function() refreshConversations;
  final Function() copyEmail;

  const MessagerieScreenViewModel._internal({
    this.profilFullName,
    required this.profilType,
    required this.messagerieStatus,
    required this.deleteConversation,
    required this.refreshConversations,
    required this.copyEmail,
    this.userEmail,
    this.conversations,
  });

  factory MessagerieScreenViewModel(Store<EnsState> store, MessagerieViewModelHelper helper) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final homeMessagerieState = store.state.messagerieState.homeMessagerieState;
    final status = _getMessagerieStatus(store);
    final String profilFullName = store.state.userState.currentProfile.nomComplet;

    String? mail;
    List<MessagerieScreenItemDisplayModel>? conversationsList;
    final messagerie = homeMessagerieState.messagerie;
    if (homeMessagerieState.isSuccessWithData) {
      mail = messagerie!.userMail;
      if (messagerie.conversations.isNotEmpty) {
        final profile = store.state.userState.currentProfile;
        final Set<String> conversationsBeingDeleted = store.state.messagerieState.conversationsBeingDeleted;
        conversationsList = [
          MessagerieScreenHeaderDisplayModel(),
          ...messagerie.conversations.map(
            (conv) => ConversationSummaryItemDisplayModel.build(
              conv,
              helper,
              profile,
              conversationsBeingDeleted.contains(conv.id),
            ),
          ),
        ];
      }
    }
    return MessagerieScreenViewModel._internal(
      profilType: profilType,
      profilFullName: profilFullName,
      messagerieStatus: status,
      deleteConversation: (String conversationId) => store.dispatch(DeleteConversationAction(conversationId)),
      refreshConversations: () => store.dispatch(const FetchMessagerieAction(force: true)),
      copyEmail: () {
        if (homeMessagerieState.isSuccessWithData && messagerie!.userMail.isNotEmpty) {
          store.dispatch(
            CopyToClipboardAction(
              text: messagerie.userMail,
              successMessage: 'Adresse de messagerie copiée.',
            ),
          );
        }
      },
      userEmail: mail,
      conversations: conversationsList,
    );
  }

  @override
  List<Object?> get props => [messagerieStatus, userEmail, conversations, profilType, profilFullName];
}

MessagerieStatus _getMessagerieStatus(Store<EnsState> store) {
  final homeMessagerieState = store.state.messagerieState.homeMessagerieState;
  if (homeMessagerieState.isSuccessWithData) {
    final messagerie = homeMessagerieState.messagerie!;
    return messagerie.conversations.isNotEmpty ? MessagerieStatus.SUCCESS : MessagerieStatus.EMPTY;
  } else if (homeMessagerieState.isErrorOrSuccessWithoutData) {
    return MessagerieStatus.ERROR;
  } else {
    return MessagerieStatus.LOADING;
  }
}

enum MessagerieStatus { LOADING, ERROR, SUCCESS, EMPTY }

abstract class MessagerieScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class MessagerieScreenHeaderDisplayModel extends MessagerieScreenItemDisplayModel {}

class ConversationSummaryItemDisplayModel extends MessagerieScreenItemDisplayModel {
  final String id;
  final bool withNotReadStyle;
  final bool withDraftIndicator;
  final bool withAttachmentIndicator;
  final String fromLabel;
  final String dateLabel;
  final String subject;
  final bool isBeingDeleted;
  final bool isNewMessage;

  ConversationSummaryItemDisplayModel({
    required this.id,
    required this.withNotReadStyle,
    required this.withDraftIndicator,
    required this.withAttachmentIndicator,
    required this.fromLabel,
    required this.dateLabel,
    required this.subject,
    required this.isBeingDeleted,
    required this.isNewMessage,
  });

  factory ConversationSummaryItemDisplayModel.build(
    ConversationSummary conversation,
    MessagerieViewModelHelper messagerieViewModelHelper,
    EnsProfil? profileData,
    bool isBeingDeleted,
  ) {
    return ConversationSummaryItemDisplayModel(
      id: conversation.id,
      withNotReadStyle: !conversation.read,
      withDraftIndicator: conversation.hasDraft,
      withAttachmentIndicator: conversation.hasAttachment,
      fromLabel: messagerieViewModelHelper.prepareEmailLabel(conversation.from.capitalizeName(), profileData),
      subject: conversation.subject,
      dateLabel: messagerieViewModelHelper.formatForMessagerie(conversation.date),
      isBeingDeleted: isBeingDeleted,
      isNewMessage: conversation.isNewMessage,
    );
  }

  @override
  List<Object?> get props => [
        id,
        withNotReadStyle,
        withDraftIndicator,
        withAttachmentIndicator,
        fromLabel,
        dateLabel,
        subject,
        isBeingDeleted,
        isNewMessage,
      ];
}
