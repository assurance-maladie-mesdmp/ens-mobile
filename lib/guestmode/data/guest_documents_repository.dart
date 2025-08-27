/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_domain_error.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';

class GuestDocumentsRepository extends IDocumentsRepository {
  final List<EnsDocument> _documents = [
    EnsDocument(
      id: '0',
      title: 'Arrêt de travail',
      date: DateTime(2020, 03, 24),
      proprietaire: const Proprietaire(
        id: 'proprietaireId',
        firstName: 'Gabrielle',
        lastName: 'Capanelli',
        isPsClickable: false,
      ),
      reportDate: null,
      categorie: EnsDocumentCategorie.certificats,
      confidentialites: const [KindOfConfidentiality.PATIENT_AND_PS],
      deletable: true,
      isCovidCertificate: false,
      updatableTitle: true,
      updatableCategory: true,
      updatableCreationDate: true,
      dossierId: 'folder1',
      isEpingle: false,
      type: EnsDocumentType.AUTRE,
    ),
    EnsDocument(
      id: '1',
      title: 'Attestation vaccinale',
      date: DateTime(2021, 5, 11),
      proprietaire: const Proprietaire(
        id: 'proprietaireId',
        firstName: 'Gabrielle',
        lastName: 'Capanelli',
        isPsClickable: false,
      ),
      reportDate: null,
      categorie: EnsDocumentCategorie.certificats,
      confidentialites: const [KindOfConfidentiality.PATIENT_AND_PS],
      deletable: false,
      isCovidCertificate: true,
      updatableTitle: false,
      updatableCategory: false,
      updatableCreationDate: false,
      dossierId: 'folder1',
      isEpingle: false,
      type: EnsDocumentType.AUTRE,
    ),
    EnsDocument(
      id: '0',
      title: 'Arrêt de travail',
      date: DateTime(2020, 03, 24),
      proprietaire: const Proprietaire(
        id: 'proprietaireId',
        firstName: 'Gabrielle',
        lastName: 'Capanelli',
        isPsClickable: false,
      ),
      reportDate: null,
      categorie: EnsDocumentCategorie.certificats,
      confidentialites: const [KindOfConfidentiality.PATIENT_AND_PS],
      deletable: true,
      isCovidCertificate: false,
      updatableTitle: true,
      updatableCategory: true,
      updatableCreationDate: true,
      isEpingle: true,
      type: EnsDocumentType.AUTRE,
    ),
  ];

  final List<EnsDossier> _folders = [
    const EnsDossier(id: 'folder1', name: 'Certificats et attestations médicales'),
    const EnsDossier(id: 'folder2', name: 'Résultats d\'analyses'),
  ];

  @override
  Future<RequestResult<List<String>>> deleteDocuments({
    required String patientId,
    required List<String> documentsIds,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<FetchDocumentContent>> fetchDocument(String patientId, String documentId) {
    return Future.value(
      RequestResultSuccess(
        FetchDocumentContent(documentId, const EnsFileContent(filename: '', mimeType: '', base64Content: '')),
      ),
    );
  }

  @override
  Future<RequestResult<GetDossiersAndDocumentsResult>> fetchDocuments(String patientId) {
    return Future.value(
      RequestResultSuccess(GetDossiersAndDocumentsResult(documents: _documents, dossiers: _folders)),
    );
  }

  @override
  Future<UploadDocumentResult> uploadDocument(String patientId, DocumentEditionCreation docEdition) {
    return Future.value(
      UploadDocumentResult.error(
        patientId,
        DocumentsDomainError.GUEST_MODE,
        docEdition,
      ),
    );
  }

  @override
  Future<RequestResult<DocumentEditionPropertiesUpdate>> updateDocumentPropertiesAndConfidentiality(
    String patientId,
    DocumentEditionPropertiesUpdate input,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> moveDocuments(String patientId, List<String> documentsIds, String? targetFolderId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<DefaultConfidentiality>> getDefaultConfidentiality(String patientId) {
    return Future.value(RequestResultSuccess(DefaultConfidentiality.VISIBLE));
  }

  @override
  Future<RequestResult<void>> updateDefaultConfidentialityAndUpdateConfidentialityForAllDocuments(
    String patientId,
    DefaultConfidentiality defaultConfidentiality,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<EnsDossier>> createDossier({required String patientId, required String folderName}) async {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteDossier({required String patientId, required String folderId}) async {
    await Future.delayed(const Duration(seconds: 2));
    return RequestResultSuccess(folderId);
  }

  @override
  Future<RequestResult<void>> renameDossier({
    required String patientId,
    required String folderId,
    required String folderName,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<void>> updateDocumentConfidentialityOnly(
    String patientId,
    String docId,
    List<KindOfConfidentiality> newConfidentialites,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess(null);
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
  Future<RequestResult<void>> updateDocumentData(String patientId, DocumentEditionUpdateData docInput) async {
    return RequestResultError.genericError();
  }

  @override
  Future<RequestResult<void>> setDocumentEpingleStatus(
    String patientId,
    String documentId,
    bool isDocumentEpingle,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess(null);
  }
}
