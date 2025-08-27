/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ens_plugin/file_bridge.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_interactor.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_mode_docs.dart';
import 'package:share_plus/share_plus.dart';

class GuestDocumentInteractor extends IDocumentInteractor {
  final IDocumentsRepository _documentsRepository;

  GuestDocumentInteractor(this._documentsRepository);

  @override
  Future<RequestResult<GetDossiersAndDocumentsResult>> getDocuments({
    required String patientId,
    required bool isMainProfile,
  }) async {
    return await _documentsRepository.fetchDocuments(patientId);
  }

  @override
  Future<FileExportationResult> downloadDocument({
    required String patientId,
    required EnsDocument document,
    required bool isMainProfile,
  }) {
    return Future.value(const FileExportationResult.failure(null));
  }

  @override
  Future<EnsShareResult> shareDocument({
    required String patientId,
    required String documentId,
    required bool isMainProfile,
    required String documentName,
  }) {
    return Future.value(const EnsShareResult(shareStatus: ShareResultStatus.unavailable));
  }

  @override
  Future<ShareResultStatus> shareDocumentContent({required EnsFileContent document, required String documentName}) {
    return Future.value(ShareResultStatus.unavailable);
  }

  @override
  Future<RequestResult<DocumentAttachmentRetrieval>> retrieveDocument({
    required String patientId,
    required String documentId,
    required bool force,
    required bool isMainProfile,
  }) {
    return Future.value(
      RequestResultSuccess(
        DocumentAttachmentRetrieval(
          'a',
          EnsFileContent(
            filename: 'a',
            mimeType: 'image/jpg',
            base64Content: _getBase64Content(documentId),
          ),
        ),
      ),
    );
  }

  String _getBase64Content(String docId) {
    switch (docId) {
      case '0':
        return GuestModeDocs.arretDeTravail;
      case '1':
        return GuestModeDocs.certificatCovid;
      case '2':
        return GuestModeDocs.radioThorax;
      case '4':
        return GuestModeDocs.certificatCovid;
      default:
        return '';
    }
  }

  @override
  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentProperties({
    required String patientId,
    required DocumentEditionPropertiesUpdate docInput,
    required Map<String, EnsDocument> documents,
  }) async {
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<List<UploadDocumentResultSuccess>>> uploadMultipleDocuments({
    required String patientId,
    required List<DocumentEditionCreation> newDocs,
  }) async {
    return RequestResultError.unavailableInGuestMode();
  }
}
