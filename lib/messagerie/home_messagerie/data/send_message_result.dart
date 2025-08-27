/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/messagerie.dart';

class SendMessageResult extends Equatable {
  final String conversationId;
  final ConversationContent conversationContent;
  final Messagerie messagerie;

  const SendMessageResult({
    required this.conversationId,
    required this.conversationContent,
    required this.messagerie,
  });

  @override
  List<Object?> get props => [conversationId, conversationContent, messagerie];
}

enum ReplyType {
  REPLY,
  REPLY_TO_ALL,
  REPLY_BLOCKED,
  NO_REPLY,
  NEW_MESSAGE,
}

extension ReplyTypeExtension on ReplyType {
  GReplyTypeEnum toReplyTypeEnum() {
    return switch (this) {
      ReplyType.REPLY => GReplyTypeEnum.REPLY,
      ReplyType.REPLY_TO_ALL => GReplyTypeEnum.REPLY_TO_ALL,
      ReplyType.REPLY_BLOCKED => GReplyTypeEnum.REPLY_BLOCKED,
      ReplyType.NO_REPLY => GReplyTypeEnum.NO_REPLY,
      ReplyType.NEW_MESSAGE => GReplyTypeEnum.NEW_MESSAGE
    };
  }
}
