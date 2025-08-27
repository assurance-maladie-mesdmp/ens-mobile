/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/confidentialite_mapper.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository_mapper.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_domain_error.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_create_folder.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_delete_documents.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_delete_folder.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_get_document_attachment.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_get_document_default_confidentiality.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_mark_document.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_move_documents.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_post_document.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_rename_folder.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_set_all_documents_confidentiality.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_update_document.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_update_document_confidentiality_only.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_update_document_data.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents_get_documents.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IDocumentsRepository {
  Future<RequestResult<GetDossiersAndDocumentsResult>> fetchDocuments(String patientId);

  Future<UploadDocumentResult> uploadDocument(String patientId, DocumentEditionCreation docEdition);

  Future<RequestResult<void>> updateDocumentData(String patientId, DocumentEditionUpdateData docInput);

  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentPropertiesAndConfidentiality(
    String patientId,
    DocumentEditionPropertiesUpdate input,
  );

  Future<RequestResult<void>> updateDocumentConfidentialityOnly(
    String patientId,
    String docId,
    List<KindOfConfidentiality> newConfidentialites,
  );

  Future<RequestResult<DefaultConfidentiality>> getDefaultConfidentiality(String patientId);

  Future<RequestResult<void>> updateDefaultConfidentialityAndUpdateConfidentialityForAllDocuments(
    String patientId,
    DefaultConfidentiality defaultConfidentiality,
  );

  Future<RequestResult<FetchDocumentContent>> fetchDocument(String patientId, String documentId);

  Future<RequestResult<List<String>>> deleteDocuments({
    required String patientId,
    required List<String> documentsIds,
  });

  Future<RequestResult<EnsDossier>> createDossier({required String patientId, required String folderName});

  Future<RequestResult<String>> deleteDossier({required String patientId, required String folderId});

  Future<RequestResult<void>> renameDossier({
    required String patientId,
    required String folderId,
    required String folderName,
  });

  Future<RequestResult<void>> moveDocuments(String patientId, List<String> documentsIds, String? targetFolderId);

  Future<RequestResult<String>> getBlackAndWhiteBase64(EnsFileImageContent ensFileImageContent);

  Future<RequestResult<void>> setDocumentEpingleStatus(
    String patientId,
    String documentId,
    bool newDocumentEpingleStatus,
  );
}

class DocumentsRepository extends IDocumentsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  DocumentsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<GetDossiersAndDocumentsResult>> fetchDocuments(String patientId) async {
    try {
      final query = Gget_documentsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;
      if (result != null && result.documents != null && result.fetchAllFolders != null) {
        return RequestResultSuccess(
          GetDossiersAndDocumentsResult(
            dossiers: result.fetchAllFolders!.map((folder) => DocumentsRepositoryMapper.toEnsDossier(folder)).toList(),
            documents: DocumentsRepositoryMapper.toEnsDocuments(result.documents!.documents.toList()),
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

  @override
  Future<UploadDocumentResult> uploadDocument(String patientId, DocumentEditionCreation docEdition) async {
    final documentInput = DocumentsRepositoryMapper.toDocumentInput(patientId, docEdition);
    final documentInputBuilder = GDocumentInputBuilder();
    documentInputBuilder.replace(documentInput);

    final uploadDocumentResultError = _uploadDocumentResultError(docEdition);

    try {
      final mutation = Gpost_documentReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input = documentInputBuilder,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        if (graphQLResponse.hasAntiVirusError()) {
          return UploadDocumentResult.error(patientId, DocumentsDomainError.DOCUMENT_NON_CONFORME, docEdition);
        }
        return uploadDocumentResultError;
      }
      final postResult = graphQLResponse.data?.postDocument;
      if (postResult != null) {
        return UploadDocumentResult.success(patientId, postResult.id, docEdition.name);
      } else {
        return uploadDocumentResultError;
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return uploadDocumentResultError;
    }
  }

  UploadDocumentResult _uploadDocumentResultError(DocumentEditionCreation docEdition) {
    return UploadDocumentResult.error('', DocumentsDomainError.GENERIC, docEdition);
  }

  @override
  Future<RequestResult<FetchDocumentContent>> fetchDocument(String patientId, String documentId) async {
    try {
      final query = Gget_document_attachmentReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.documentId = documentId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError(
          domainError: DocumentsDomainError.getErrorDomainFromGraphQLError(
            isNotFoundError: graphQLResponse.hasNotFoundError(),
            isAntivirusError: graphQLResponse.hasAntiVirusError(),
          ),
        );
      }

      final result = graphQLResponse.data;

      if (result != null) {
        return RequestResultSuccess(
          FetchDocumentContent(
            documentId,
            EnsFileContent(
              filename: documentId,
              mimeType: result.document.mimeType,
              base64Content: result.document.attachment.trim().replaceAll(RegExp('\n'), ''),
              mesureIds: result.document.measureIds.toList(),
            ),
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

  @override
  Future<RequestResult<List<String>>> deleteDocuments({
    required String patientId,
    required List<String> documentsIds,
  }) async {
    try {
      final mutation = Gdelete_documentsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.documentsIds = ListBuilder(documentsIds),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final postResult = graphQLResponse.data?.deleteDocuments;

      if (postResult != null && postResult.success) {
        return RequestResultSuccess(documentsIds);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateDocumentData(String patientId, DocumentEditionUpdateData docInput) async {
    final documentUpdateInput = DocumentsRepositoryMapper.toDocumentUpdateInput(patientId, docInput);
    final documentUpdateInputBuilder = GDocumentUpdateInputBuilder();
    documentUpdateInputBuilder.replace(documentUpdateInput);

    try {
      final mutation = Gupdate_document_dataReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.documentUpdateInput = documentUpdateInputBuilder,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError(
          domainError: DocumentsDomainError.getErrorDomainFromGraphQLError(
            isAntivirusError: graphQLResponse.hasAntiVirusError(),
          ),
        );
      }

      return RequestResultSuccess(null);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentPropertiesAndConfidentiality(
    String patientId,
    DocumentEditionPropertiesUpdate input,
  ) async {
    final documentPropertiesUpdateInput = DocumentsRepositoryMapper.toDocumentPropertiesUpdateInput(patientId, input);
    final documentPropertiesUpdateInputBuilder = GDocumentPropertiesUpdateInputBuilder();
    documentPropertiesUpdateInputBuilder.replace(documentPropertiesUpdateInput);

    try {
      final mutation = Gupdate_documentReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.documentPropertiesUpdateInput = documentPropertiesUpdateInputBuilder,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final documentPropertiesResult = graphQLResponse.data?.updateDocumentProperties;

      if (documentPropertiesResult != null && documentPropertiesResult.success) {
        return RequestResultSuccess(input);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateDocumentConfidentialityOnly(
    String patientId,
    String docId,
    List<KindOfConfidentiality> newConfidentialites,
  ) async {
    try {
      final mutation = Gupdate_document_confidentiality_onlyReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.documentUpdateConfidentialityInput.patientId = patientId
          ..vars.documentUpdateConfidentialityInput.id = docId
          ..vars.documentUpdateConfidentialityInput.confidentialities =
              ConfidentialiteMapper.buildConfidentialities(newConfidentialites),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final confidentialityResult = graphQLResponse.data?.updateConfidentialityDocument;
      if (confidentialityResult != null && confidentialityResult.success) {
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
  Future<RequestResult<DefaultConfidentiality>> getDefaultConfidentiality(String patientId) async {
    try {
      final mutation = Gget_document_default_confidentialityReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final isMasked = graphQLResponse.data?.getDefaultConfidentiality?.masked;

      if (isMasked != null) {
        return RequestResultSuccess(isMasked ? DefaultConfidentiality.MASKED : DefaultConfidentiality.VISIBLE);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateDefaultConfidentialityAndUpdateConfidentialityForAllDocuments(
    String patientId,
    DefaultConfidentiality defaultConfidentiality,
  ) async {
    try {
      final mutation = Gset_all_documents_confidentialityReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.documentsMaskedByDefault = defaultConfidentiality == DefaultConfidentiality.MASKED,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.setAllDocumentsConfidentiality;
      if (result != null) {
        if (result.success) {
          return RequestResultSuccess(null);
        } else {
          return RequestResultError.error(domainError: DocumentsDomainError.NOT_APPLIED_FOR_ALL_DOCS);
        }
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsDossier>> createDossier({required String patientId, required String folderName}) async {
    try {
      final mutation = Gcreate_folderReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.createFolderInputs.patientId = patientId
          ..vars.createFolderInputs.folderName = folderName,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        return RequestResultError.error(
          domainError: DocumentsDomainError.getErrorDomainFromGraphQLError(codeError: error),
        );
      }

      final createFolder = graphQLResponse.data?.createFolderV2;
      if (createFolder != null) {
        return RequestResultSuccess(EnsDossier(id: createFolder.id, name: folderName));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteDossier({required String patientId, required String folderId}) async {
    try {
      final mutation = Gdelete_folderReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.deleteFolderInputs.patientId = patientId
          ..vars.deleteFolderInputs.folderId = folderId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteFolder;
      if (result != null && result.success) {
        return RequestResultSuccess(folderId);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> renameDossier({
    required String patientId,
    required String folderId,
    required String folderName,
  }) async {
    try {
      final mutation = Grename_folderReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.renameFolderInputs.patientId = patientId
          ..vars.renameFolderInputs.folderId = folderId
          ..vars.renameFolderInputs.folderName = folderName,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        return RequestResultError.error(
          domainError: DocumentsDomainError.getErrorDomainFromGraphQLError(codeError: error),
        );
      }

      final result = graphQLResponse.data?.renameFolderV2;
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
  Future<RequestResult<void>> moveDocuments(String patientId, List<String> documentsIds, String? targetFolderId) async {
    try {
      final mutation = Gmove_documentsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.documentsMoveInput.patientId = patientId
          ..vars.documentsMoveInput.documents = ListBuilder(
            DocumentsRepositoryMapper.buildGDocumentPatchInputs(documentsIds, targetFolderId),
          ),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final documentPropertiesResult = graphQLResponse.data?.moveDocumentsV2;

      if (documentPropertiesResult != null && documentPropertiesResult.success) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> getBlackAndWhiteBase64(EnsFileImageContent ensFileImageContent) async {
    final result = await ScannerBridge.getBlackAndWhiteBase64(ensFileImageContent);
    if (result != null) {
      return RequestResultSuccess(result);
    } else {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> setDocumentEpingleStatus(
    String patientId,
    String documentId,
    bool newDocumentEpingleStatus,
  ) async {
    try {
      final mutation = Gmark_documentReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.documentMarkInput.patientId = patientId
          ..vars.documentMarkInput.document.id = documentId
          ..vars.documentMarkInput.document.pinned = newDocumentEpingleStatus,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final setDocumentEpingleStatusResult = graphQLResponse.data?.markDocument;
      if (setDocumentEpingleStatusResult != null && setDocumentEpingleStatusResult.success) {
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

class GetDossiersAndDocumentsResult extends Equatable {
  final List<EnsDocument> documents;
  final List<EnsDossier> dossiers;

  const GetDossiersAndDocumentsResult({required this.documents, required this.dossiers});

  bool get hasDocuments => documents.isNotEmpty;

  @override
  List<Object?> get props => [documents, dossiers];
}

abstract class UploadDocumentResult extends Equatable {
  final String patientId;

  const UploadDocumentResult._internal(this.patientId);

  const factory UploadDocumentResult.success(String patientId, String createdDocumentId, String createdDocumentTitle) =
      UploadDocumentResultSuccess._internal;

  const factory UploadDocumentResult.error(
    String patientId,
    IDocumentsDomainError domainError,
    DocumentEditionCreation ensFileContent,
  ) = UploadDocumentResultError._internal;

  @override
  List<Object?> get props => [patientId];
}

class UploadDocumentResultSuccess extends UploadDocumentResult {
  final String createdDocumentId;
  final String createdDocumentTitle;

  const UploadDocumentResultSuccess._internal(super.patientId, this.createdDocumentId, this.createdDocumentTitle)
      : super._internal();

  @override
  List<Object?> get props => [patientId, createdDocumentId, createdDocumentId, createdDocumentTitle];
}

class UploadDocumentResultError extends UploadDocumentResult {
  final IDocumentsDomainError domainError;
  final DocumentEditionCreation ensFile;

  const UploadDocumentResultError._internal(super.patientId, this.domainError, this.ensFile) : super._internal();

  @override
  List<Object?> get props => [patientId, domainError, ensFile];
}

class FetchDocumentContent extends Equatable {
  final String documentId;
  final EnsFileContent ensFileContent;

  const FetchDocumentContent(this.documentId, this.ensFileContent);

  @override
  List<Object?> get props => [documentId, ensFileContent];
}

sealed class GetDefaultConfidentialityResult extends Equatable {
  const GetDefaultConfidentialityResult._internal();

  const factory GetDefaultConfidentialityResult.success(bool isMasked) =
      GetDefaultConfidentialityResultSuccess._internal;

  const factory GetDefaultConfidentialityResult.error(String errorMessage) =
      GetDefaultConfidentialityResultError._internal;
}

class GetDefaultConfidentialityResultSuccess extends GetDefaultConfidentialityResult {
  final bool isMasked;

  const GetDefaultConfidentialityResultSuccess._internal(this.isMasked) : super._internal();

  @override
  List<Object?> get props => [isMasked];
}

class GetDefaultConfidentialityResultError extends GetDefaultConfidentialityResult {
  final String errorMessage;

  const GetDefaultConfidentialityResultError._internal(this.errorMessage) : super._internal();

  @override
  List<Object?> get props => [errorMessage];
}
