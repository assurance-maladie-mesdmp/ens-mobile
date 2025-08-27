/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_get_questionnaires.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/data/bilan_de_prevention_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaires.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IBilanDePreventionRepository {
  Future<RequestResult<BilanDePreventionQuestionnaires>> getQuestionnaires(String patientId);
}

class BilanDePreventionRepository extends IBilanDePreventionRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  BilanDePreventionRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<BilanDePreventionQuestionnaires>> getQuestionnaires(String patientId) async {
    try {
      final query = Gget_questionnairesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;

      if (result != null) {
        final questionnaires = BilanDePreventionRepositoryMapper.toEnsQuestionnaires(result.fetchAllHealthQuizStatus);
        return RequestResultSuccess(questionnaires);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
