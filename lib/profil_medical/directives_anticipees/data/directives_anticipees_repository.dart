/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/confidentialite_mapper.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository_mapper.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_directives_anticipee_get.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_directives_anticipee_update.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/domain/directives_anticipees_domain_error.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IDirectivesAnticipeesRepository {
  Future<RequestResult<EnsDocument>> getDirectivesAnticipeesDocument(String patientId);

  Future<RequestResult<EnsDocument>> postDirectivesAnticipeesDocuments(
    String patientId,
    DocumentEditionCreation documentEditionCreation,
  );
}

class DirectivesAnticipeesRepository extends IDirectivesAnticipeesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  DirectivesAnticipeesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsDocument>> getDirectivesAnticipeesDocument(String patientId) async {
    try {
      final query = Gget_directives_anticipeesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final codeError = graphQLResponse.extractFirstExtensionCode();
        final domainError = DirectivesAnticipeesDomainError.getErrorDomainFromGraphQLError(
          codeError: codeError,
          isAntiVirusError: graphQLResponse.hasAntiVirusError(),
        );

        return RequestResultError.error(domainError: domainError);
      }

      final data = graphQLResponse.data;
      if (data == null) {
        return RequestResultError.genericError();
      }
      final document = data.advanceDirectives.document;

      final ensDocument = DocumentsRepositoryMapper.toEnsDocument(document);
      return RequestResultSuccess(ensDocument);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsDocument>> postDirectivesAnticipeesDocuments(
    String patientId,
    DocumentEditionCreation documentEditionCreation,
  ) async {
    try {
      final mutation = Gpost_directives_anticipeesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.advanceDirectiveInput.patientId = patientId
          ..vars.advanceDirectiveInput.filename = documentEditionCreation.name
          ..vars.advanceDirectiveInput.attachment = documentEditionCreation.ensFileContent.base64Content
          ..vars.advanceDirectiveInput.mimeType = documentEditionCreation.ensFileContent.mimeType
          ..vars.advanceDirectiveInput.confidentialities =
              ConfidentialiteMapper.buildConfidentialities(documentEditionCreation.confidentialites),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final domainError = DirectivesAnticipeesDomainError.getErrorDomainFromGraphQLError(
          isAntiVirusError: graphQLResponse.hasAntiVirusError(),
        );
        return RequestResultError.error(domainError: domainError);
      }

      final data = graphQLResponse.data;
      if (data == null) {
        return RequestResultError.genericError();
      }

      final document = data.postAdvanceDirectives.document;

      final ensDocument = DocumentsRepositoryMapper.toEnsDocument(document);
      return RequestResultSuccess(ensDocument);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
