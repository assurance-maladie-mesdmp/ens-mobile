/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/data/nous_contacter_mapper.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support_details.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_nous_contacter_get_ticket_support_details.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_nous_contacter_get_tickets_support.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class INousContacterRepository {
  Future<RequestResult<List<EnsTicketSupport>>> getTicketsSupport(String patientId);

  Future<RequestResult<EnsTicketSupportDetails>> getTicketSupportDetails(String ticketId);
}

class NousContacterRepository extends INousContacterRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  NousContacterRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<List<EnsTicketSupport>>> getTicketsSupport(String patientId) async {
    try {
      final query = Gget_tickets_supportReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchHelpdeskTickets;

      if (result == null) return RequestResultError.genericError();
      final ticketsResult = NousContacterMapper.toEnsTicketsSupport(result);
      return RequestResultSuccess(ticketsResult);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsTicketSupportDetails>> getTicketSupportDetails(String ticketId) async {
    try {
      final query = Gget_ticket_support_detailsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.ticketId = ticketId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchHelpdeskTicketDetails;

      if (result == null) return RequestResultError.genericError();
      final ticketDetailsResult = NousContacterMapper.toEnsTicketSupportDetails(result);
      return RequestResultSuccess(ticketDetailsResult);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
