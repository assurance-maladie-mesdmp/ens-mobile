/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/documents_links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';

abstract class IHospitalisationInteractor {
  Future<RequestResult<EditingHospitalisation>> addHospitalisation({
    required String patientId,
    required EditingHospitalisation editingHospitalisation,
    required List<DocumentEditionCreation> docsToCreateAndLink,
  });

  Future<RequestResult<EditingHospitalisation>> updateHospitalisation({
    required String patientId,
    required EnsHospitalisation currentHospitalisation,
    required EditingHospitalisation editingHospitalisation,
    required List<DocumentEditionCreation> docsToCreateAndLink,
  });
}

class HospitalisationInteractor extends IHospitalisationInteractor {
  final IHospitalisationsRepository _hospitalisationsRepository;
  final IDocumentsLinksInteractor _documentsLinksInteractor;

  HospitalisationInteractor(this._hospitalisationsRepository, this._documentsLinksInteractor);

  @override
  Future<RequestResult<EditingHospitalisation>> addHospitalisation({
    required String patientId,
    required EditingHospitalisation editingHospitalisation,
    required List<DocumentEditionCreation> docsToCreateAndLink,
  }) async {
    EditingHospitalisation editingHospitalisationWithAllLinks = editingHospitalisation;
    if (docsToCreateAndLink.isNotEmpty) {
      final createdDocumentsLinksResult =
          await _documentsLinksInteractor.createDocumentsToLink(patientId, docsToCreateAndLink);
      if (createdDocumentsLinksResult is RequestResultError) {
        return RequestResultError.error(domainError: (createdDocumentsLinksResult as RequestResultError).domainError);
      }
      final createdDocumentsLinks = (createdDocumentsLinksResult as RequestResultSuccess<List<String>>).result;
      editingHospitalisationWithAllLinks = editingHospitalisation
          .clone(linkedDocumentsIds: [...editingHospitalisation.linkedDocumentsIds, ...createdDocumentsLinks]);
    }
    return _hospitalisationsRepository.addHospitalisation(patientId, editingHospitalisationWithAllLinks);
  }

  @override
  Future<RequestResult<EditingHospitalisation>> updateHospitalisation({
    required String patientId,
    required EnsHospitalisation currentHospitalisation,
    required EditingHospitalisation editingHospitalisation,
    required List<DocumentEditionCreation> docsToCreateAndLink,
  }) async {
    final List<String> addedDocumentIds = editingHospitalisation.linkedDocumentsIds
        .where(
          (editLinkDoc) =>
              !currentHospitalisation.linkedDocumentsIds.any((currentLinkDoc) => currentLinkDoc == editLinkDoc),
        )
        .toList();
    final List<String> removedDocumentIds = currentHospitalisation.linkedDocumentsIds
        .where(
          (currentLinkDoc) =>
              !editingHospitalisation.linkedDocumentsIds.any((editLinkDoc) => editLinkDoc == currentLinkDoc),
        )
        .toList();

    if (docsToCreateAndLink.isNotEmpty) {
      final createdDocumentsLinksResult =
          await _documentsLinksInteractor.createDocumentsToLink(patientId, docsToCreateAndLink);
      if (createdDocumentsLinksResult is RequestResultError) {
        return RequestResultError.error(domainError: (createdDocumentsLinksResult as RequestResultError).domainError);
      }
      final createdDocumentsLinks = (createdDocumentsLinksResult as RequestResultSuccess<List<String>>).result;
      addedDocumentIds.addAll(createdDocumentsLinks);
    }

    return _hospitalisationsRepository.updateHospitalisation(
      patientId,
      editingHospitalisation,
      addedDocumentIds,
      removedDocumentIds,
    );
  }
}
