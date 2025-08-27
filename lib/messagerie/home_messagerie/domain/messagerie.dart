/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_summary.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';

class Messagerie extends Equatable {
  final String userMail;
  final bool oneOrMoreUnreadConversation;
  final List<ConversationSummary> conversations;
  final List<PsContact> contacts;

  const Messagerie({
    required this.userMail,
    required this.oneOrMoreUnreadConversation,
    required this.conversations,
    required this.contacts,
  });

  Messagerie copyWith({List<ConversationSummary>? conversations, bool? oneOrMoreUnreadConversation}) {
    return Messagerie(
      userMail: userMail,
      oneOrMoreUnreadConversation: oneOrMoreUnreadConversation ?? this.oneOrMoreUnreadConversation,
      conversations: conversations ?? this.conversations,
      contacts: contacts,
    );
  }

  @override
  List<Object?> get props => [userMail, oneOrMoreUnreadConversation, conversations, contacts];
}
