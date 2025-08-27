/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsTicketSupport extends Equatable {
  final String id;
  final String titre;
  final LastMessage lastMessage;
  final DateTime lastUpdate;

  const EnsTicketSupport({
    required this.id,
    required this.titre,
    required this.lastMessage,
    required this.lastUpdate,
  });

  @override
  List<Object?> get props => [id, titre, lastMessage, lastUpdate];
}

class LastMessage extends Equatable {
  final String message;
  final bool hasAttachment;

  const LastMessage({required this.message, required this.hasAttachment});

  @override
  List<Object?> get props => [message, hasAttachment];
}
