/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_add.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_delete.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_get.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_get.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_hospitalisations_update.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisations.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IHospitalisationsRepository {
  Future<RequestResult<EnsHospitalisations>> getHospitalisations(String patientId);

  Future<RequestResult<EditingHospitalisation>> addHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
  );

  Future<RequestResult<EditingHospitalisation>> updateHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
    List<String> addedDocumentIds,
    List<String> removedDocumentIds,
  );

  Future<RequestResult<String>> deleteHospitalisation(String patientId, String id);
}

class HospitalisationsRepository extends IHospitalisationsRepository {
  final Client ferryClient;
  final ILinksInMemoryInteractor linksInMemoryInteractor;
  final Crashlytics crashlytics;

  HospitalisationsRepository(
    this.ferryClient,
    this.linksInMemoryInteractor,
    this.crashlytics,
  );

  @override
  Future<RequestResult<EnsHospitalisations>> getHospitalisations(String patientId) async {
    try {
      final query = Gget_hospitalisationsReq(
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
        final hospitalisations = HospitalisationsRepositoryMapper.toEnsHospitalisations(
          result.hospitalizations.hospitalizations,
          result.unconcerned.declarationDate,
        );
        _updateLinks(result.hospitalizations.hospitalizations);
        return RequestResultSuccess(hospitalisations);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingHospitalisation>> addHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
  ) async {
    try {
      final mutation = Gadd_hospitalisationReq(
        HospitalisationsRepositoryMapper.buildAddHospitalisationInput(editingHospitalisation, patientId),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.postHospitalization;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingHospitalisation);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingHospitalisation>> updateHospitalisation(
    String patientId,
    EditingHospitalisation editingHospitalisation,
    List<String> documentIdsToAdd,
    List<String> documentIdsToRemove,
  ) async {
    try {
      final mutation = Gupdate_hospitalisationReq(
        HospitalisationsRepositoryMapper.updateHospitalisationInput(
          editingHospitalisation,
          patientId,
          documentIdsToAdd,
          documentIdsToRemove,
          linksInMemoryInteractor,
        ),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.putHospitalization;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingHospitalisation);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteHospitalisation(String patientId, String id) async {
    try {
      final mutation = Gdelete_hospitalisationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteHospitalization;
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

  void _updateLinks(Iterable<Gget_hospitalisationsData_hospitalizations_hospitalizations> hospitalizations) {
    for (final hospitalisation in hospitalizations) {
      hospitalisation.linkedDocuments?.forEach((doc) {
        linksInMemoryInteractor.addDocumentToHospitalisationLink(hospitalisation.id, doc.document.id, doc.linkId);
      });
    }
  }
}
