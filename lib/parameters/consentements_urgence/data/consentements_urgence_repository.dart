/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_urgence_get_consentement_urgence.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_urgence_set_consentement_urgence.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository_mapper.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IConsentementsUrgenceRepository {
  Future<RequestResult<EnsConsentementsUrgence>> getConsentementsUrgence(String patientId);

  Future<RequestResult<EnsConsentementsUrgence>> updateConsentementUrgence(
    String patientId,
    EnsConsentementsUrgence editingConsentementUrgence,
  );
}

class ConsentementsUrgenceRepository extends IConsentementsUrgenceRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  ConsentementsUrgenceRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsConsentementsUrgence>> getConsentementsUrgence(String patientId) async {
    final query = Gget_consentement_urgenceReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.dmpConsentementInput.patientId = patientId,
    );

    try {
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getDmpConsentement;
      if (result != null) {
        final consentementsUrgence = ConsentementsUrgenceRepositoryMapper.toEnsConsentementsUrgence(result.toList());
        if (consentementsUrgence != null) {
          return RequestResultSuccess(consentementsUrgence);
        } else {
          return RequestResultError.genericError();
        }
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsConsentementsUrgence>> updateConsentementUrgence(
    String patientId,
    EnsConsentementsUrgence ensConsentementsUrgence,
  ) async {
    final mutation = Gset_consentement_urgenceReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId
        ..vars.newValueETREAT = ensConsentementsUrgence.samu.isAllowed
        ..vars.consentementIdETREAT = ensConsentementsUrgence.samu.id
        ..vars.newValueBTG = ensConsentementsUrgence.autrePS.isAllowed
        ..vars.consentementIdBTG = ensConsentementsUrgence.autrePS.id
        ..vars.newValueMASKED = ensConsentementsUrgence.documentsMasques.isAllowed
        ..vars.consentementIdMASKED = ensConsentementsUrgence.documentsMasques.id,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResultETREAT = graphQLResponse.data?.setETREAT;
      final graphQLResultBTG = graphQLResponse.data?.setBTG;
      final graphQLResultMASKED = graphQLResponse.data?.setMASKED;

      final resultIsNull = graphQLResultETREAT == null || graphQLResultBTG == null || graphQLResultMASKED == null;
      bool resultIsSuccess = false;
      if (!resultIsNull) {
        resultIsSuccess = graphQLResultETREAT.success && graphQLResultBTG.success && graphQLResultMASKED.success;
      }

      if (!resultIsNull && resultIsSuccess) {
        return RequestResultSuccess(ensConsentementsUrgence);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
