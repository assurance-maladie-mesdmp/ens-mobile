/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_delete_questionnaire_reponses.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_reponses_questionnaire.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_version.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_post_questionnaire_reponses.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_update_questionnaire_reponses.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_question_extension.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/questionnaire.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/user_answers.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IQuestionnaireAgesClesRepository {
  Future<RequestResult<Questionnaire>> getQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  });

  Future<RequestResult<UserAnswers>> getQuestionnaireAgesClesResponses({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  });

  Future<RequestResult<void>> saveQuestionnaireAgesCles({
    required String patientId,
    required Questionnaire questionnaire,
    required UserAnswers userAnswers,
  });

  Future<RequestResult<void>> deleteQuestionnaireResponses(String responseId, String patientId);

  Future<RequestResult<GetQuestionnaireVersionReponse>> getQuestionnaireCodeVersion({
    required String patientId,
    required String fileNamePrefix,
  });
}

class QuestionnaireAgesClesRepository extends IQuestionnaireAgesClesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  QuestionnaireAgesClesRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<Questionnaire>> getQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  }) async {
    try {
      final query = Gget_questionnaireReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.code = questionnaireCode.getValue()
          ..vars.version = questionnaireVersion,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchHealthQuiz;
      if (result == null) {
        return RequestResultError.genericError();
      }

      final debutInformations = result.toDebutInformations();
      final finInformations = result.toFinInformations();
      final questionsAgesCles = result.toAgesClesQuestions();

      return RequestResultSuccess(
        Questionnaire(
          code: questionnaireCode,
          version: result.version,
          debutInformations: debutInformations,
          finInformations: finInformations,
          questions: questionsAgesCles,
        ),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<UserAnswers>> getQuestionnaireAgesClesResponses({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  }) async {
    try {
      final query = Gget_reponses_questionnaireReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.code = questionnaireCode.getValue()
          ..vars.version = questionnaireVersion,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getHealthQuizResponses;
      return RequestResultSuccess(result.toUserAnswers());
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> saveQuestionnaireAgesCles({
    required String patientId,
    required Questionnaire questionnaire,
    required UserAnswers userAnswers,
  }) async {
    try {
      final healthQuizInput = questionnaire.toHealthQuizInput(patientId, userAnswers);

      if (userAnswers.id != null && userAnswers.id!.isNotEmpty) {
        final mutation = Gupdate_questionnaire_reponsesReq(
          (builder) => builder
            ..fetchPolicy = FetchPolicy.NetworkOnly
            ..vars.healthQuizResponse = healthQuizInput
            ..vars.responseId = userAnswers.id,
        );

        final graphQLResponse = await ferryClient.request(mutation).first;

        if (graphQLResponse.checkGenericError(crashlytics)) {
          return RequestResultError.genericError();
        }

        final mutationResult = graphQLResponse.data?.updateHealthQuizResponses;
        if (mutationResult != null && mutationResult.success) {
          return RequestResultSuccess(null);
        } else {
          return RequestResultError.genericError();
        }
      } else {
        final mutation = Gpost_questionnaire_reponsesReq(
          (builder) => builder
            ..fetchPolicy = FetchPolicy.NetworkOnly
            ..vars.healthQuizResponse = healthQuizInput,
        );

        final graphQLResponse = await ferryClient.request(mutation).first;
        if (graphQLResponse.checkGenericError(crashlytics)) {
          return RequestResultError.genericError();
        }

        final mutationResult = graphQLResponse.data?.postHealthQuizResponses;
        if (mutationResult != null && mutationResult.success) {
          return RequestResultSuccess(null);
        } else {
          return RequestResultError.genericError();
        }
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteQuestionnaireResponses(String responseId, String patientId) async {
    try {
      final mutation = Gdelete_questionnaire_reponsesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.responseId = responseId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final mutationResult = graphQLResponse.data?.deleteHealthQuizResponses;
      if (mutationResult != null && mutationResult.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<GetQuestionnaireVersionReponse>> getQuestionnaireCodeVersion({
    required String patientId,
    required String fileNamePrefix,
  }) async {
    try {
      final query = Gget_version_questionnaireReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.fileNamePrefix = fileNamePrefix,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getHealthQuizCodeVersion;

      if (result != null) {
        return RequestResultSuccess(
          GetQuestionnaireVersionReponse(
            code: getQuizCodeFromString(result.code),
            savedVersion: result.savedVersion,
            newVersion: result.newVersion,
            responseId: result.responseId,
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

class GetQuestionnaireVersionReponse extends Equatable {
  final QuestionnaireCode code;
  final String? savedVersion;
  final String? newVersion;
  final String? responseId;

  const GetQuestionnaireVersionReponse({
    required this.code,
    required this.savedVersion,
    required this.newVersion,
    required this.responseId,
  });

  @override
  List<Object?> get props => [code, savedVersion, newVersion, responseId];
}
