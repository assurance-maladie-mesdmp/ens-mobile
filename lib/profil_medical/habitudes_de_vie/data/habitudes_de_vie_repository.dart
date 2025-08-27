/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_delete_item.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get_initial_section_answers.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get_section_answer.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_update_item.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_mapper_input.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_mapper_output.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_metadata.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

class InitialHabitudesDeVieSectionAnswersResult extends Equatable {
  final RequestResult<HabitudeDeVieAnswer> alimentaire;
  final RequestResult<HabitudeDeVieAnswer> tabac;
  final RequestResult<HabitudeDeVieAnswer> activitePhysique;

  const InitialHabitudesDeVieSectionAnswersResult({
    required this.alimentaire,
    required this.tabac,
    required this.activitePhysique,
  });

  factory InitialHabitudesDeVieSectionAnswersResult.error() {
    return InitialHabitudesDeVieSectionAnswersResult(
      alimentaire: RequestResultError.genericError(),
      tabac: RequestResultError.genericError(),
      activitePhysique: RequestResultError.genericError(),
    );
  }

  @override
  List<Object?> get props => [alimentaire, tabac, activitePhysique];
}

abstract class IHabitudesDeVieRepository {
  Future<RequestResult<HabitudeDeVieMetadata>> getHabitudesDeVie(String patientId);

  Future<InitialHabitudesDeVieSectionAnswersResult> getInitialHabitudesDeVieSectionAnswers(String patientId);

  Future<RequestResult<HabitudeDeVieAnswer>> getHabitudesDeVieSectionAnswer(
    String patientId,
    HabitudeDeVieCategoryCode category,
  );

  Future<RequestResult<void>> updateHabitudesDeVie(String patientId, HabitudeDeVieCategoryUserDetailsAnswer userAnswer);

  Future<RequestResult<void>> deleteHabitudesDeVie(String patientId, String idItem);
}

class HabitudesDeVieRepository extends IHabitudesDeVieRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  HabitudesDeVieRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<HabitudeDeVieMetadata>> getHabitudesDeVie(
    String patientId,
  ) async {
    try {
      final query = Gget_habitudes_de_vieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final metadata = graphQLResponse.data?.fetchLifestylesMetadata;
      final status = graphQLResponse.data?.fetchLifestylesStatus;

      if (metadata != null && status != null) {
        final habitudesVie = metadata.sections
            .map((section) => HabitudesDeVieInputMapper.toHabitudeDeVieCategory(section, status))
            .nonNulls
            .toList();

        final habitudeDeVieMetadata = HabitudeDeVieMetadata(habitudesVie);
        return RequestResultSuccess(habitudeDeVieMetadata);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<InitialHabitudesDeVieSectionAnswersResult> getInitialHabitudesDeVieSectionAnswers(String patientId) async {
    try {
      final query = Gget_initial_habitudes_de_vie_section_answerReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return InitialHabitudesDeVieSectionAnswersResult.error();
      }

      final alimentaireResult = graphQLResponse.data?.alimentaire;
      final tabacResult = graphQLResponse.data?.tabac;
      final activitePhysiqueResult = graphQLResponse.data?.activitePhysique;
      return InitialHabitudesDeVieSectionAnswersResult(
        alimentaire: HabitudesDeVieInputMapper.getHabitudeDeVieAnswerResult(alimentaireResult),
        tabac: HabitudesDeVieInputMapper.getHabitudeDeVieAnswerResult(tabacResult),
        activitePhysique: HabitudesDeVieInputMapper.getHabitudeDeVieAnswerResult(activitePhysiqueResult),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return InitialHabitudesDeVieSectionAnswersResult.error();
    }
  }

  @override
  Future<RequestResult<HabitudeDeVieAnswer>> getHabitudesDeVieSectionAnswer(
    String patientId,
    HabitudeDeVieCategoryCode category,
  ) async {
    try {
      final query = Gget_habitudes_de_vie_section_answerReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.sectionType = HabitudesDeVieOutputMapper.toLifestyleSectionEnum(category),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.fetchLifestyleAnswersForGivenSection;

      if (result != null) {
        final habitudesVie = HabitudesDeVieInputMapper.toHabitudeDeVieSectionAnswer(result);
        return habitudesVie != null ? RequestResultSuccess(habitudesVie) : RequestResultError.genericError();
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateHabitudesDeVie(
    String patientId,
    HabitudeDeVieCategoryUserDetailsAnswer userAnswer,
  ) async {
    try {
      final answer = HabitudesDeVieOutputMapper.toLifestyleAnswerInputList(userAnswer.answers);

      final query = Gupdate_habitudes_de_vie_itemReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.lifestyleInput.name = userAnswer.itemCode
          ..vars.lifestyleInput.details.lastModificationDate = clock.now().toIso8601String()
          ..vars.lifestyleInput.details.answers = ListBuilder(answer),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.updateLifestyleItem;
      if (result != null && result.success) {
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
  Future<RequestResult<void>> deleteHabitudesDeVie(String patientId, String idItem) async {
    try {
      final query = Gdelete_habitudes_de_vie_itemReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.lifestyleItemId = idItem,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteLifestyleItem;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
