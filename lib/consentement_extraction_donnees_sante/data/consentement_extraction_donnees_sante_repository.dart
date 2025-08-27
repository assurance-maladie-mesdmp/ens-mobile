/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_traitement_auto_doc.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_update_consent_document_data_auto_fetching.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';

abstract interface class IConsentementExtractionDonneesSanteRepository {
  Future<RequestResult<void>> updateConsentement(String patientId, bool hasAccepted);

  Future<RequestResult<ExtractionMesureConsentementResponse>> getConsentement(String patientId);
}

class ConsentementExtractionDonneesSanteRepository implements IConsentementExtractionDonneesSanteRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  ConsentementExtractionDonneesSanteRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<ExtractionMesureConsentementResponse>> getConsentement(String patientId) async {
    try {
      final query = Gget_treatment_doc_auto_finalityReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      final result = graphQLResponse.data?.fetchTreatmentDocAutoFinalityByPatientId;
      if (result != null) {
        return RequestResultSuccess(
          ExtractionMesureConsentementResponse(
            consent: result.consent,
            isWhitelisted: result.isWhitelisted,
          ),
        );
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateConsentement(
    String patientId,
    bool hasAccepted,
  ) async {
    try {
      final input = GFinalityConsentToUpdateInput(
        (builder) => builder
          ..patientId = patientId
          ..consent = hasAccepted
          ..finalityCode = GFinalityCode.TRAITEMENT_AUTO_DOCS,
      );

      final mutation = Gupdate_finality_consent_statusReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.finalityToUpdate.replace(input),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      final result = graphQLResponse.data?.updateFinalityConsentByCodeAndPatientId.success;
      if (result != null && result == true) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}

class ExtractionMesureConsentementResponse extends Equatable {
  final bool? consent;
  final bool? isWhitelisted;

  const ExtractionMesureConsentementResponse({required this.consent, required this.isWhitelisted});

  @override
  List<Object?> get props => [consent, isWhitelisted];
}
