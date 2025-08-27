/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_interactor.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';

abstract class IDocumentsLinksInteractor {
  Future<RequestResult<List<String>>> createDocumentsToLink(
    String patientId,
    List<DocumentEditionCreation> docsToCreate,
  );
}

class DocumentsLinksInteractor extends IDocumentsLinksInteractor {
  final IDocumentInteractor _documentInteractor;

  DocumentsLinksInteractor(this._documentInteractor);

  @override
  Future<RequestResult<List<String>>> createDocumentsToLink(
    String patientId,
    List<DocumentEditionCreation> docsToCreate,
  ) async {
    final creationsResult = await _documentInteractor.uploadMultipleDocuments(
      patientId: patientId,
      newDocs: docsToCreate,
    );
    if (creationsResult is RequestResultError) {
      return RequestResultError.error(domainError: (creationsResult as RequestResultError).domainError);
    }
    final List<String> newLinks = (creationsResult as RequestResultSuccess<List<UploadDocumentResultSuccess>>)
        .result
        .map((uploadDocResult) => uploadDocResult.createdDocumentId)
        .toList();
    return RequestResultSuccess(newLinks);
  }
}
