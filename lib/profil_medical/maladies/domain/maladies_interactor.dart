/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/documents_links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';

abstract class IMaladiesInteractor {
  Future<RequestResult<void>> addMaladie({
    required String patientId,
    required EditingMaladie editingMaladie,
    required List<DocumentEditionCreation> docsToCreateAndLink,
    required List<TraitementTemporaire> traitementToCreateAndLink,
  });

  Future<RequestResult<void>> updateMaladie({
    required String patientId,
    required EnsMaladie? currentMaladie,
    required EditingMaladie editingMaladie,
    required List<DocumentEditionCreation> docsToCreateAndLink,
    required List<TraitementTemporaire> traitementToCreateAndLink,
  });
}

class MaladiesInteractor extends IMaladiesInteractor {
  final IMaladiesRepository _maladiesRepository;
  final IDocumentsLinksInteractor _documentsLinksInteractor;
  final ITraitementsRepository _traitementLinksRepository;

  MaladiesInteractor(this._maladiesRepository, this._documentsLinksInteractor, this._traitementLinksRepository);

  @override
  Future<RequestResult<void>> addMaladie({
    required String patientId,
    required EditingMaladie editingMaladie,
    required List<DocumentEditionCreation> docsToCreateAndLink,
    required List<TraitementTemporaire> traitementToCreateAndLink,
  }) async {
    EditingMaladie editingMaladieWithAllLinks = editingMaladie;
    if (docsToCreateAndLink.isNotEmpty) {
      final createdDocumentsLinksResult =
          await _documentsLinksInteractor.createDocumentsToLink(patientId, docsToCreateAndLink);
      if (createdDocumentsLinksResult is RequestResultError) {
        return RequestResultError.error(domainError: (createdDocumentsLinksResult as RequestResultError).domainError);
      }

      final createdDocumentsLinks = (createdDocumentsLinksResult as RequestResultSuccess<List<String>>).result;
      editingMaladieWithAllLinks = editingMaladieWithAllLinks
          .clone(linkedDocumentIds: [...editingMaladieWithAllLinks.linkedDocumentIds, ...createdDocumentsLinks]);
    }

    if (traitementToCreateAndLink.isNotEmpty) {
      final createdTraitementLinkResult = await _traitementLinksRepository.addTraitements(
        patientId,
        traitementToCreateAndLink,
      );
      if (createdTraitementLinkResult.isError()) {
        return RequestResultError.genericError();
      } else {
        final createdTraitementLinks = (createdTraitementLinkResult as RequestResultSuccess<List<String>>).result;
        editingMaladieWithAllLinks = editingMaladieWithAllLinks.clone(
          linkedTraitementIds: [...editingMaladieWithAllLinks.linkedTraitementIds, ...createdTraitementLinks],
        );
      }
    }
    return await _maladiesRepository.addMaladie(patientId, editingMaladieWithAllLinks);
  }

  @override
  Future<RequestResult<void>> updateMaladie({
    required String patientId,
    required EnsMaladie? currentMaladie,
    required EditingMaladie editingMaladie,
    required List<DocumentEditionCreation> docsToCreateAndLink,
    required List<TraitementTemporaire> traitementToCreateAndLink,
  }) async {
    if (currentMaladie == null) {
      return RequestResultError.genericError();
    }
    final List<String> documentsToAdd = editingMaladie.linkedDocumentIds
        .where(
          (editDocumentId) =>
              !currentMaladie.linkedDocumentIds.any((currentDocumentId) => currentDocumentId == editDocumentId),
        )
        .toList();

    final List<String> traitementsToAdd = editingMaladie.linkedTraitementIds
        .where(
          (editTraitementId) => !currentMaladie.linkedTraitementIds
              .any((currentLinkedTraitementId) => currentLinkedTraitementId == editTraitementId),
        )
        .toList();

    final List<String> documentsToRemove = currentMaladie.linkedDocumentIds
        .where(
          (currentDocumentId) =>
              !editingMaladie.linkedDocumentIds.any((editDocumentId) => editDocumentId == currentDocumentId),
        )
        .toList();

    final List<String> traitementsToRemove = currentMaladie.linkedTraitementIds
        .where(
          (currentLinkedTraitementId) => !editingMaladie.linkedTraitementIds
              .any((editTraitementId) => editTraitementId == currentLinkedTraitementId),
        )
        .toList();

    if (docsToCreateAndLink.isNotEmpty) {
      final createdDocumentsLinksResult =
          await _documentsLinksInteractor.createDocumentsToLink(patientId, docsToCreateAndLink);
      if (createdDocumentsLinksResult is RequestResultError) {
        return RequestResultError.error(domainError: (createdDocumentsLinksResult as RequestResultError).domainError);
      }
      final createdDocumentsLinks = (createdDocumentsLinksResult as RequestResultSuccess<List<String>>).result;
      documentsToAdd.addAll(createdDocumentsLinks);
    }

    if (traitementToCreateAndLink.isNotEmpty) {
      final createdTraitementLinkResult = await _traitementLinksRepository.addTraitements(
        patientId,
        traitementToCreateAndLink,
      );
      if (createdTraitementLinkResult.isError()) {
        return RequestResultError.genericError();
      } else {
        final createdTraitementLinks = (createdTraitementLinkResult as RequestResultSuccess<List<String>>).result;
        traitementsToAdd.addAll(createdTraitementLinks);
      }
    }

    return _maladiesRepository.updateMaladie(
      patientId,
      editingMaladie,
      documentsToAdd,
      documentsToRemove,
      traitementsToAdd,
      traitementsToRemove,
    );
  }
}
