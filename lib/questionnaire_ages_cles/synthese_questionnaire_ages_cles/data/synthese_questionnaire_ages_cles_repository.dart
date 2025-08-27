/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_synthese_questionnaire.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/data/synthese_questionnaire_ages_cles_repository_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/domain/models/synthese_questionnaire.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ISyntheseQuestionnaireAgesClesRepository {
  Future<RequestResult<SyntheseQuestionnaire>> getSyntheseQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String? questionnaireVersion,
  });
}

class SyntheseQuestionnaireAgesClesRepository extends ISyntheseQuestionnaireAgesClesRepository {
  final Client ferryCLient;
  final Crashlytics crashlytics;

  SyntheseQuestionnaireAgesClesRepository(this.ferryCLient, this.crashlytics);

  @override
  Future<RequestResult<SyntheseQuestionnaire>> getSyntheseQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String? questionnaireVersion,
  }) async {
    if (questionnaireVersion == null) {
      crashlytics.recordError(
        Exception(),
        StackTrace.fromString(
          'getSyntheseQuestionnaireAgesCles questionnaireVersion must not be null',
        ),
      );
      return RequestResultError.genericError();
    }

    final query = Gget_questionnaire_syntheseReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId
        ..vars.code = questionnaireCode.getValue()
        ..vars.version = questionnaireVersion,
    );

    try {
      final graphQLResponse = await ferryCLient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getHealthQuizPDF;

      if (result != null) {
        final syntheseQuiz = result.toSyntheseQuestionnaire();
        return RequestResultSuccess(syntheseQuiz);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
