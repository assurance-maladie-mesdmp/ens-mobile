/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_onboarding_get_onboading_data.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository_mapper.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract interface class IOnboardingRepository {
  Future<FetchOnboardingDataResponse> fetchOnboardingData(String patientId);
}

class FetchOnboardingDataResponse extends Equatable {
  final RequestResult<EnsConsentementsUrgence> consentementsUrgence;
  final RequestResult<DefaultConfidentiality> documentConfidentiality;

  const FetchOnboardingDataResponse({
    required this.consentementsUrgence,
    required this.documentConfidentiality,
  });

  FetchOnboardingDataResponse.error()
      : this(
          consentementsUrgence: RequestResultError.genericError(),
          documentConfidentiality: RequestResultError.genericError(),
        );

  @override
  List<Object?> get props => [
        consentementsUrgence,
        documentConfidentiality,
      ];
}

class OnboardingRepository implements IOnboardingRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  OnboardingRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<FetchOnboardingDataResponse> fetchOnboardingData(String patientId) async {
    try {
      final query = Gget_onboarding_dataReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.dmpConsentementInput.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return FetchOnboardingDataResponse.error();
      }

      final result = graphQLResponse.data;
      if (result != null) {
        final dmpConsentement = result.getDmpConsentement;
        final consentementsUrgence = ConsentementsUrgenceRepositoryMapper.toEnsConsentementsUrgence(
          dmpConsentement.toList(),
        );
        final isMasked = result.getDefaultConfidentiality?.masked;

        return FetchOnboardingDataResponse(
          consentementsUrgence: consentementsUrgence != null
              ? RequestResultSuccess(consentementsUrgence)
              : RequestResultError.genericError(),
          documentConfidentiality: isMasked != null
              ? RequestResultSuccess(isMasked ? DefaultConfidentiality.MASKED : DefaultConfidentiality.VISIBLE)
              : RequestResultError.genericError(),
        );
      } else {
        return FetchOnboardingDataResponse.error();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return FetchOnboardingDataResponse.error();
    }
  }
}
