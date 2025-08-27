/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsTicketSupportDetails extends Equatable {
  final String id;
  final String titre;
  final List<EnsTicketSupportMessage> messages;

  const EnsTicketSupportDetails({
    required this.id,
    required this.titre,
    required this.messages,
  });

  @override
  List<Object?> get props => [id, titre, messages];
}

class EnsTicketSupportMessage extends Equatable {
  final String id;
  final String from;
  final String message;
  final DateTime createdAt;
  final List<MessageAttachment> attachments;

  const EnsTicketSupportMessage({
    required this.id,
    required this.from,
    required this.message,
    required this.createdAt,
    required this.attachments,
  });

  @override
  List<Object?> get props => [id, message, from, createdAt, attachments];
}

class MessageAttachment extends Equatable {
  final String id;
  final String name;

  const MessageAttachment({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
