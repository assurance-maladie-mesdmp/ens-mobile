/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nous_contacter_redux.dart';

class FetchTicketsSupportAction {}

class _ProcessFetchTicketsSupportSuccessAction {
  final List<EnsTicketSupport> ticketsContact;

  _ProcessFetchTicketsSupportSuccessAction(this.ticketsContact);
}

class _ProcessFetchTicketsSupportErrorAction {}

class FetchTicketSupportDetailsAction {
  final String ticketId;

  FetchTicketSupportDetailsAction(this.ticketId);
}

class _ProcessFetchTicketSupportDetailSuccessAction {
  final EnsTicketSupportDetails ticketDetails;

  _ProcessFetchTicketSupportDetailSuccessAction(this.ticketDetails);
}

class _ProcessFetchTicketSupportDetailsErrorAction {}
