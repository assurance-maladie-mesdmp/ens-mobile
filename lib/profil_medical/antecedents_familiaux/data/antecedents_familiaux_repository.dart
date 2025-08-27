/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_add_antecedent_familial.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_antecedent_familial.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_antecedents_familiaux.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_update_antecedent_familial.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/data/antecedents_familiaux_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedents_familiaux.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IAntecedentsFamiliauxRepository {
  Future<RequestResult<EnsAntecedentsFamiliaux>> getAntecedentsFamiliaux(String patientId);

  Future<RequestResult<EditingAntecedentFamilial>> addAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  );

  Future<RequestResult<EditingAntecedentFamilial>> updateAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  );

  Future<RequestResult<String>> deleteAntecedentFamilial(String patientId, String id);
}

class AntecedentsFamiliauxRepository extends IAntecedentsFamiliauxRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  AntecedentsFamiliauxRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsAntecedentsFamiliaux>> getAntecedentsFamiliaux(String patientId) async {
    try {
      final query = Gget_antecedents_familiauxReq(
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
        final antecedentsFamiliaux = AntecedentsFamiliauxRepositoryMapper.toEnsAntecedentsFamiliaux(
          result.familyHistories.familyHistories.toList(),
          result.unconcerned.declarationDate,
        );
        return RequestResultSuccess(antecedentsFamiliaux);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingAntecedentFamilial>> addAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  ) async {
    final familyHistoryInput =
        AntecedentsFamiliauxRepositoryMapper.toFamilyHistoryInput(patientId, editingAntecedentFamilial);
    if (familyHistoryInput == null) {
      return RequestResultError.mappingError();
    }
    final mutation = Gadd_antecedent_familialReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.familyHistory.familyRelationship = familyHistoryInput.familyRelationship
        ..vars.familyHistory.name = familyHistoryInput.name
        ..vars.familyHistory.patientId = familyHistoryInput.patientId
        ..vars.familyHistory.comment = familyHistoryInput.comment,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.postFamilyHistory;

      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingAntecedentFamilial);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingAntecedentFamilial>> updateAntecedentFamilial(
    String patientId,
    EditingAntecedentFamilial editingAntecedentFamilial,
  ) async {
    final familyHistoryUpdateInput =
        AntecedentsFamiliauxRepositoryMapper.toFamilyHistoryUpdateInput(patientId, editingAntecedentFamilial);
    if (familyHistoryUpdateInput == null) {
      return RequestResultError.mappingError();
    }
    final mutation = Gupdate_antecedent_familialReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.familyHistory.id = familyHistoryUpdateInput.id
        ..vars.familyHistory.patientId = familyHistoryUpdateInput.patientId
        ..vars.familyHistory.name = familyHistoryUpdateInput.name
        ..vars.familyHistory.familyRelationship = familyHistoryUpdateInput.familyRelationship
        ..vars.familyHistory.comment = familyHistoryUpdateInput.comment,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.putFamilyHistory;

      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingAntecedentFamilial);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteAntecedentFamilial(String patientId, String id) async {
    final mutation = Gdelete_antecedent_familialReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.id = id
        ..vars.patientId = patientId,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteFamilyHistory;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(id);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
