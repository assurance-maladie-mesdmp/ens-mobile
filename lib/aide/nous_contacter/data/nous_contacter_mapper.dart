/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support_details.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_nous_contacter_get_ticket_support_details.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_nous_contacter_get_tickets_support.query.data.gql.dart';

class NousContacterMapper {
  static List<EnsTicketSupport> toEnsTicketsSupport(
    BuiltList<Gget_tickets_supportData_fetchHelpdeskTickets>? ticketsGraphQL,
  ) {
    return ticketsGraphQL
            ?.map(
              (ticket) => EnsTicketSupport(
                id: ticket.id,
                titre: ticket.reasonLabel,
                lastMessage: LastMessage(
                  message: ticket.lastComment.message,
                  hasAttachment: ticket.lastComment.hasDocuments,
                ),
                lastUpdate: DateTime.parse(ticket.lastUpdate),
              ),
            )
            .toList() ??
        [];
  }

  static EnsTicketSupportDetails toEnsTicketSupportDetails(
    Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails ticketDetailsGraphQL,
  ) {
    return EnsTicketSupportDetails(
      id: ticketDetailsGraphQL.id,
      titre: ticketDetailsGraphQL.reasonLabel,
      messages: ticketDetailsGraphQL.comments
          .map(
            (ticketMessage) => EnsTicketSupportMessage(
              id: ticketMessage.id,
              from: ticketMessage.from,
              message: ticketMessage.message,
              createdAt: DateTime.parse(ticketMessage.createdAt),
              attachments: ticketMessage.documents
                  .map(
                    (attachment) => MessageAttachment(id: attachment.id, name: attachment.name),
                  )
                  .toList(),
            ),
          )
          .sorted((a, b) => b.createdAt.compareTo(a.createdAt))
          .toList(),
    );
  }
}
