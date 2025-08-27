/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_mes_activites_traces.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_professionnels_de_sante_traces.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_historique_activites_get_services_synchronises_traces.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/data/historique_activites_repository_mapper.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/mes_activites_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnel_de_sante_traces_by_id.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnels_de_sante_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/services_synchronises_traces.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:intl/intl.dart';

abstract class IHistoriqueActivitesRepository {
  Future<RequestResult<ProfessionnelsDeSanteTraces>> getProfessionnelsDeSanteTraces({
    required String patientId,
    required int page,
    DateTime? startDate,
    DateTime? endDate,
  });

  Future<RequestResult<MesActivitesTraces>> getMesActivitesTraces(String patientId);

  Future<RequestResult<ServicesSynchronisesTraces>> getServicesSynchronisesTraces(String patientId);

  Future<RequestResult<ProfessionnelDeSanteTracesById>> getProfessionnelDeSanteTracesById({
    required String patientId,
    required String psIdNat,
  });
}

class HistoriqueActivitesRepository extends IHistoriqueActivitesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;
  final LocaleHelper localeHelper;

  HistoriqueActivitesRepository(this.ferryClient, this.crashlytics, this.localeHelper);

  @override
  Future<RequestResult<ProfessionnelsDeSanteTraces>> getProfessionnelsDeSanteTraces({
    required String patientId,
    required int page,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final dateFormat = DateFormat('yyyy-MM-dd');
    try {
      final query = Gget_professionnels_de_sante_tracesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.filter.startDate = startDate != null ? dateFormat.format(startDate) : null
          ..vars.filter.endDate = endDate != null ? dateFormat.format(endDate) : null
          ..vars.page = page
          ..vars.pageSize = 100,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.activityTraces;
      if (result != null) {
        final traces = ProfessionnelsDeSanteTraces(
          traces: HistoriqueActivitesRepositoryMapper.psTraceToTrace(result.items.toList(), localeHelper),
          currentPage: result.pageInfo.page,
          hasNextPage: result.pageInfo.hasNextPage,
        );
        return RequestResultSuccess(traces);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<MesActivitesTraces>> getMesActivitesTraces(String patientId) async {
    try {
      final query = Gget_mes_activites_tracesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.ensActivityHistory;
      if (result != null) {
        final traces = MesActivitesTraces(
          traces: HistoriqueActivitesRepositoryMapper.userTraceToTrace(result.toList(), localeHelper),
        );
        return RequestResultSuccess(traces);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ServicesSynchronisesTraces>> getServicesSynchronisesTraces(String patientId) async {
    try {
      final query = Gget_services_synchronises_tracesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.synchronizedServicesActivityHistory;
      if (result != null) {
        final traces = ServicesSynchronisesTraces(
          traces: HistoriqueActivitesRepositoryMapper.synchronizedTraceToTrace(result.toList(), localeHelper),
        );
        return RequestResultSuccess(traces);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ProfessionnelDeSanteTracesById>> getProfessionnelDeSanteTracesById({
    required String patientId,
    required String psIdNat,
  }) async {
    try {
      final query = Gget_professionnel_de_sante_traces_by_idReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.rppsId = psIdNat,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getPsTracesHistory;
      if (result != null) {
        final traces = ProfessionnelDeSanteTracesById(traces: result.toTraces(localeHelper));
        return RequestResultSuccess(traces);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
