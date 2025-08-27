/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nous_contacter_redux.dart';

class NousContacterState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsTicketSupport> tickets;
  final TicketSupportDetailsState ticketContactDetailsState;

  const NousContacterState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.tickets = const [],
    this.ticketContactDetailsState = const TicketSupportDetailsState(),
  });

  NousContacterState clone({
    AllPurposesStatus? status,
    List<EnsTicketSupport>? tickets,
    TicketSupportDetailsState? ticketContactDetailsState,
  }) {
    return NousContacterState(
      status: status ?? this.status,
      tickets: tickets ?? this.tickets,
      ticketContactDetailsState: ticketContactDetailsState ?? this.ticketContactDetailsState,
    );
  }

  @override
  List<Object?> get props => [status, tickets, ticketContactDetailsState];
}

class TicketSupportDetailsState extends Equatable {
  final AllPurposesStatus status;
  final EnsTicketSupportDetails? ticketDetails;

  const TicketSupportDetailsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.ticketDetails,
  });

  TicketSupportDetailsState clone({
    AllPurposesStatus? status,
    EnsTicketSupportDetails? ticketDetails,
  }) {
    return TicketSupportDetailsState(
      status: status ?? this.status,
      ticketDetails: ticketDetails ?? this.ticketDetails,
    );
  }

  @override
  List<Object?> get props => [status, ticketDetails];
}
