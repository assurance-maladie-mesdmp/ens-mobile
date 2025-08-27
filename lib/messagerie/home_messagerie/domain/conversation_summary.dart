/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class ConversationSummary extends Equatable {
  final String id;
  final String from;
  final DateTime date;
  final bool hasAttachment;
  final bool hasDraft;
  final String subject;
  final bool read;
  final bool isNewMessage;

  const ConversationSummary({
    required this.id,
    required this.from,
    required this.date,
    required this.hasAttachment,
    required this.hasDraft,
    required this.subject,
    required this.read,
    required this.isNewMessage,
  });

  ConversationSummary clone({bool? read}) {
    return ConversationSummary(
      id: id,
      from: from,
      date: date,
      hasAttachment: hasAttachment,
      hasDraft: hasDraft,
      subject: subject,
      read: read ?? this.read,
      isNewMessage: isNewMessage,
    );
  }

  @override
  List<Object?> get props => [id, from, date, hasAttachment, hasDraft, subject, read, isNewMessage];
}
