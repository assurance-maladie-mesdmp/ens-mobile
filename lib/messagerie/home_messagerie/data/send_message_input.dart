/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:optional/optional_internal.dart';

class SendMessageInput extends Equatable {
  final String conversationId;
  final String messageId;
  final String content;
  final List<FileDescriptor> fileDescriptor;
  final List<EnsFileContent> ensFileContent;
  final List<EnsDocument> ensDocument;
  final bool withProfilMedical;
  final ReplyType? replyType;
  final String? objet;
  final String? destinataireId;

  const SendMessageInput({
    required this.conversationId,
    required this.messageId,
    required this.content,
    this.fileDescriptor = const [],
    this.ensFileContent = const [],
    this.ensDocument = const [],
    this.withProfilMedical = false,
    this.replyType,
    this.objet,
    this.destinataireId,
  });

  SendMessageInput clone({
    String? conversationId,
    String? messageId,
    String? content,
    List<FileDescriptor>? fileDescriptor,
    List<EnsFileContent>? ensFileContent,
    List<EnsDocument>? ensDocument,
    bool? withProfilMedical,
    Optional<String>? objetOptional,
    Optional<String>? destinataireIdOptional,
    Optional<ReplyType>? replyTypeOptional,
  }) {
    return SendMessageInput(
      conversationId: conversationId ?? this.conversationId,
      messageId: messageId ?? this.messageId,
      content: content ?? this.content,
      fileDescriptor: fileDescriptor ?? this.fileDescriptor,
      ensFileContent: ensFileContent ?? this.ensFileContent,
      ensDocument: ensDocument ?? this.ensDocument,
      withProfilMedical: withProfilMedical ?? this.withProfilMedical,
      objet: objetOptional != null ? objetOptional.orElseNullable(null) : objet,
      destinataireId: destinataireIdOptional != null ? destinataireIdOptional.orElseNullable(null) : destinataireId,
      replyType: replyTypeOptional != null ? replyTypeOptional.orElseNullable(null) : replyType,
    );
  }

  @override
  List<Object?> get props => [
        conversationId,
        messageId,
        content,
        fileDescriptor,
        ensFileContent,
        withProfilMedical,
        replyType,
        objet,
        destinataireId,
        ensDocument,
      ];
}
