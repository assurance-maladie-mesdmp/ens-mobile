/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_create_helpdesk_ticket.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_fetch_last_reports_information.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_helpdesk_get_motifs.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_helpdesk_get_motifs.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_send_signalement.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/helpdesk/data/helpdesk_repository_mapper.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/creating_helpdesk_ticket.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/helpdesk_domain_error.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/nouvelle_demande_motif.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/send_signalement_data.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_information.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IHelpdeskRepository {
  Future<RequestResult<void>> createHelpdeskTicket({
    required String patientId,
    required CreatingHelpdeskTicket ticket,
  });

  Future<RequestResult<List<NouvelleDemandeMotif>>> getMotifs();

  Future<RequestResult<void>> sendSignalement({
    required String patientId,
    required SendSignalementData signalement,
  });

  Future<RequestResult<SignalementInformation>> fetchSignalementInformation({
    required String patientId,
    required SignalementType signalementType,
    required String idToSignal,
  });
}

class HelpdeskRepository extends IHelpdeskRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  HelpdeskRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<void>> createHelpdeskTicket({
    required String patientId,
    required CreatingHelpdeskTicket ticket,
  }) async {
    try {
      final attachments = ticket.attachments.map(
        (attachment) => GTicketDocumentInput(
          (builder) => builder
            ..name = attachment.filename
            ..data = attachment.base64Content
            ..typeMime = attachment.mimeType,
        ),
      );

      final mutation = Gcreate_helpdesk_ticketReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.ticketToCreateInput.patientId = patientId
          ..vars.ticketToCreateInput.reason = ticket.reason
          ..vars.ticketToCreateInput.message = ticket.message
          ..vars.ticketToCreateInput.hasConsent = ticket.hasConsent
          ..vars.ticketToCreateInput.documents.replace(attachments)
          ..vars.ticketToCreateInput.idDocument = ticket.idDoc,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final helpdeskResult = graphQLResponse.data?.createHelpdeskTicketV2;
      if (helpdeskResult != null) {
        if (helpdeskResult.errorCode != null) {
          final domainError = HelpdeskDomainError.getErrorDomainFromGraphQLError(helpdeskResult.errorCode!);
          return RequestResultError.error(domainError: domainError);
        } else if (helpdeskResult.success) {
          return RequestResultSuccess(null);
        }
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<NouvelleDemandeMotif>>> getMotifs() async {
    try {
      final query = Gget_motifs_nouvelle_demandeReq(
        (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final motifsResult = graphQLResponse.data?.fetchAllReasons;
      if (motifsResult != null) {
        return RequestResultSuccess(motifsResult.map((motif) => motif.toMotifsDomain()).toList());
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> sendSignalement({
    required String patientId,
    required SendSignalementData signalement,
  }) async {
    try {
      final mutation = Gsend_signalementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.demandeRequest.idEns = patientId
          ..vars.demandeRequest.typeDemande = HelpdeskRepositoryMapper.toGTypeDemande(signalement.signalementType)
          ..vars.demandeRequest.idSignale = signalement.idToSignal
          ..vars.demandeRequest.nom = signalement.nom
          ..vars.demandeRequest.description = signalement.description
          ..vars.demandeRequest.hasConsent = signalement.hasConsent
          ..vars.demandeRequest.documents = ListBuilder(),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.sendReport;
      if (result != null) {
        final errorCode = result.errorCode;
        if (errorCode != null) {
          final domainError = HelpdeskDomainError.getErrorDomainFromGraphQLError(errorCode);
          return RequestResultError.error(domainError: domainError);
        }
        if (result.success) {
          return RequestResultSuccess(null);
        }
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<SignalementInformation>> fetchSignalementInformation({
    required String patientId,
    required SignalementType signalementType,
    required String idToSignal,
  }) async {
    try {
      final query = Gfetch_last_reports_informationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.typeDemande = HelpdeskRepositoryMapper.toGTypeDemande(signalementType)
          ..vars.idSignale = idToSignal,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchLastReportsInformation;
      if (result != null) {
        return RequestResultSuccess(
          SignalementInformation(
            lastReportDate: result.lastReport != null ? DateTime.parse(result.lastReport!) : null,
            isReportLimitExceeded: result.isReportLimitExceeded,
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}

extension _MotifMapper on Gget_motifs_nouvelle_demandeData_fetchAllReasons {
  NouvelleDemandeMotif toMotifsDomain() {
    return NouvelleDemandeMotif(
      id: value,
      label: label,
    );
  }
}
