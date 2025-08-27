/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ens_plugin/file_bridge.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/data/file_share_helper.dart';
import 'package:fr_cnamts_ens/files/data/file_storage.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:share_plus/share_plus.dart';

class EnsShareResult extends Equatable {
  final ShareResultStatus shareStatus;
  final String? errorMessage;

  const EnsShareResult({required this.shareStatus, this.errorMessage});

  @override
  List<Object?> get props => [shareStatus, errorMessage];
}

abstract class IDocumentInteractor {
  Future<RequestResult<GetDossiersAndDocumentsResult>> getDocuments({
    required String patientId,
    required bool isMainProfile,
  });

  Future<RequestResult<DocumentAttachmentRetrieval>> retrieveDocument({
    required String patientId,
    required String documentId,
    required bool force,
    required bool isMainProfile,
  });

  Future<FileExportationResult> downloadDocument({
    required String patientId,
    required EnsDocument document,
    required bool isMainProfile,
  });

  Future<EnsShareResult> shareDocument({
    required String patientId,
    required String documentId,
    required bool isMainProfile,
    required String documentName,
  });

  Future<ShareResultStatus> shareDocumentContent({required EnsFileContent document, required String documentName});

  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentProperties({
    required String patientId,
    required DocumentEditionPropertiesUpdate docInput,
    required Map<String, EnsDocument> documents,
  });

  Future<RequestResult<List<UploadDocumentResultSuccess>>> uploadMultipleDocuments({
    required String patientId,
    required List<DocumentEditionCreation> newDocs,
  });
}

class DocumentInteractor extends IDocumentInteractor {
  final IDocumentsRepository _documentsRepository;
  final FileStorage _fileStorage;
  final FileShareHelper fileShareHelper;

  DocumentInteractor(
    this._documentsRepository,
    this._fileStorage,
    this.fileShareHelper,
  );

  @override
  Future<RequestResult<GetDossiersAndDocumentsResult>> getDocuments({
    required String patientId,
    required bool isMainProfile,
  }) async {
    final result = await _documentsRepository.fetchDocuments(patientId);
    if (result is RequestResultSuccess<GetDossiersAndDocumentsResult>) {
      return RequestResultSuccess(
        GetDossiersAndDocumentsResult(
          documents: _filterDocumentForCovidCertificates(result.result.documents, patientId, isMainProfile),
          dossiers: result.result.dossiers,
        ),
      );
    }
    return result;
  }

  @override
  Future<RequestResult<DocumentAttachmentRetrieval>> retrieveDocument({
    required String patientId,
    required String documentId,
    required bool force,
    bool isMainProfile = true,
  }) async {
    if (!force) {
      final alreadyStoredFile = _fileStorage.getDocumentInStorage(documentId);
      if (alreadyStoredFile != null) {
        return RequestResultSuccess(DocumentAttachmentRetrieval(documentId, alreadyStoredFile));
      }
    }
    final fetchedDocument = await _documentsRepository.fetchDocument(patientId, documentId);
    if (fetchedDocument is RequestResultSuccess<FetchDocumentContent>) {
      final EnsFileContent ensFileContent = fetchedDocument.result.ensFileContent;
      _fileStorage.storeDocument(documentId, ensFileContent);
      return RequestResultSuccess(DocumentAttachmentRetrieval(documentId, ensFileContent));
    } else {
      return RequestResultError.error(domainError: (fetchedDocument as RequestResultError).domainError);
    }
  }

  @override
  Future<FileExportationResult> downloadDocument({
    required String patientId,
    required EnsDocument document,
    required bool isMainProfile,
  }) async {
    final retrieveResult = await retrieveDocument(
      patientId: patientId,
      documentId: document.id,
      force: false,
      isMainProfile: isMainProfile,
    );

    if (retrieveResult is RequestResultError<DocumentAttachmentRetrieval>) {
      final errorMessage = retrieveResult.domainError.errorMessage;
      return FileExportationResult.failure(errorMessage);
    }

    final retrievalSuccess = (retrieveResult as RequestResultSuccess<DocumentAttachmentRetrieval>).result;
    return _fileStorage.exportDocument(retrievalSuccess.ensFileContent, document);
  }

  @override
  Future<EnsShareResult> shareDocument({
    required String patientId,
    required String documentId,
    required bool isMainProfile,
    required String documentName,
  }) async {
    final retrieveResult = await retrieveDocument(
      patientId: patientId,
      documentId: documentId,
      force: false,
      isMainProfile: isMainProfile,
    );

    if (retrieveResult is RequestResultError<DocumentAttachmentRetrieval>) {
      final errorMessage = retrieveResult.domainError.errorMessage;
      return EnsShareResult(
        shareStatus: ShareResultStatus.unavailable,
        errorMessage: errorMessage,
      );
    }

    final retrievalSuccess = (retrieveResult as RequestResultSuccess<DocumentAttachmentRetrieval>).result;
    final ShareResultStatus result =
        await shareDocumentContent(document: retrievalSuccess.ensFileContent, documentName: documentName);
    return EnsShareResult(shareStatus: result);
  }

  @override
  Future<ShareResultStatus> shareDocumentContent({
    required EnsFileContent document,
    required String documentName,
  }) async {
    final ShareResultStatus result = await fileShareHelper.shareFile(document, documentName);
    return result;
  }

  List<EnsDocument> _filterDocumentForCovidCertificates(
    List<EnsDocument> documents,
    String patientId,
    bool isMainProfile,
  ) {
    final docsWithoutCovidCertificates = documents.where((document) => !document.isCovidCertificate).toList();
    final covidCertificates = documents.where((document) => document.isCovidCertificate).toList();
    if (covidCertificates.isNotEmpty) {
      covidCertificates.sort();

      retrieveDocument(
        patientId: patientId,
        documentId: covidCertificates.first.id,
        force: true,
        isMainProfile: isMainProfile,
      );
      return [...docsWithoutCovidCertificates, covidCertificates.first];
    }
    return docsWithoutCovidCertificates;
  }

  @override
  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentProperties({
    required String patientId,
    required DocumentEditionPropertiesUpdate docInput,
    required Map<String, EnsDocument> documents,
  }) {
    final docToUpdate = documents[docInput.id];
    if (docToUpdate == null) {
      return Future.value(
        RequestResultError<DocumentEditionPropertiesUpdate>.genericError(),
      );
    }
    return _documentsRepository.updateDocumentPropertiesAndConfidentiality(patientId, docInput);
  }

  @override
  Future<RequestResult<List<UploadDocumentResultSuccess>>> uploadMultipleDocuments({
    required String patientId,
    required List<DocumentEditionCreation> newDocs,
  }) async {
    final List<UploadDocumentResultSuccess> results = [];
    for (final newDoc in newDocs) {
      final result = await _documentsRepository.uploadDocument(patientId, newDoc);
      if (result is UploadDocumentResultError) {
        return RequestResultError.error(domainError: result.domainError);
      }
      results.add(result as UploadDocumentResultSuccess);
    }
    return RequestResultSuccess(results);
  }
}

class DocumentAttachmentRetrieval extends Equatable {
  final EnsFileContent ensFileContent;
  final String documentId;

  const DocumentAttachmentRetrieval(this.documentId, this.ensFileContent);

  @override
  List<Object?> get props => [documentId, ensFileContent];
}
