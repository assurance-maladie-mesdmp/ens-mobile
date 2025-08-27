/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/dossier_representation.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/viewModels/synthese_document_view_model_helper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';

class DocumentsSelectors {
  static List<EnsDocument> getLoadedDocuments(EnsState state) {
    final documentsListState = state.documentsState.documentsListState;
    if (documentsListState.status.isSuccess()) {
      return documentsListState.documents.values.toList()..sort();
    } else {
      return [];
    }
  }

  static List<DossierRepresentation> getDossiersRepresentations(EnsState state) {
    final dossiers = state.documentsState.documentsListState.dossiers.values;
    final documents = state.documentsState.documentsListState.documents.values;

    final dossiersRepresentations = dossiers
        .map(
          (dossier) => DossierRepresentation(
            dossierId: dossier.id,
            documentIds:
                documents.where((document) => document.dossierId == dossier.id).map((document) => document.id).toList(),
          ),
        )
        .toList();
    dossiersRepresentations.add(
      DossierRepresentation(
        dossierId: null,
        documentIds: documents.where((document) => document.dossierId == null).map((document) => document.id).toList(),
      ),
    );
    return dossiersRepresentations;
  }

  static String getDossierTitleFromId(EnsState state, String dossierId) =>
      state.documentsState.documentsListState.dossiers[dossierId]?.name ?? '';

  static EnsDocument getLoadedDocumentById(EnsState state, String id) {
    final doc = state.documentsState.documentsListState.documents[id];

    if (doc != null) {
      return doc;
    } else {
      throw Exception('Aucun document pour l\'id $id');
    }
  }

  static List<EnsDocument> getDocumentsByCategories(
    EnsState state,
    List<EnsDocumentCategorie> categories, [
    String? dossierId,
  ]) {
    List<EnsDocument> filteredList =
        getLoadedDocuments(state).where((document) => categories.contains(document.categorie)).toList();
    if (dossierId != null) {
      filteredList = filteredList.where((document) => document.dossierId == dossierId).toList();
    }
    return filteredList;
  }

  static List<EnsDocument> getFolderlessDocument(EnsState state) =>
      getLoadedDocuments(state).where((document) => document.dossierId == null).toList();

  static List<EnsDocument> getPiecesAdministratives(EnsState state) => getLoadedDocuments(state)
      .where((document) => document.categorie == EnsDocumentCategorie.pieceAdministrative)
      .toList();

  static List<EnsDocument> getAvisArretDeTravail(EnsState state) =>
      getLoadedDocuments(state).where((document) => document.type == EnsDocumentType.AVIS_ARRET_DE_TRAVAIL).toList();

  static List<EnsDocument> getPiecesSante(EnsState state) => getLoadedDocuments(state)
      .where((document) => document.categorie != EnsDocumentCategorie.pieceAdministrative)
      .toList();

  static EnsDocument? getQuestionnaireDeSanteDocument(EnsState state, QuestionnaireCode tranchAge) {
    final baseFileName = getQuestionnaireDeSanteDocumentFileNameForAge(state, tranchAge);
    return getLoadedDocuments(state).firstWhereOrNull((doc) => doc.title.startsWith(baseFileName, 0));
  }

  static EnsDocument? getSynthesePmlDocument(EnsState state) {
    return getLoadedDocuments(state).firstWhereOrNull((doc) => doc.categorie == EnsDocumentCategorie.syntheseMedicale);
  }

  static String getQuestionnaireDeSanteDocumentFileNameForAge(EnsState state, QuestionnaireCode trancheAge) {
    final String firstName = UserSelectors.getFirstName(state) ?? '';
    final String lastName = UserSelectors.getLastName(state) ?? '';
    return SyntheseDocumentViewModelHelper.prepareQuestionnaireBaseFileName(firstName, lastName, trancheAge);
  }

  static List<FileAttachmentDisplayModel> getDocumentsLinkedToPs(EnsState state, String idNat) {
    return state.documentsState.documentsListState.documents.values
        .where((doc) => doc.proprietaire.id == idNat)
        .map((doc) => FileAttachmentDisplayModel(documentId: doc.id, name: doc.title))
        .toList();
  }

  static List<EnsDocument> getDocumentsEpingles(EnsState state) =>
      state.documentsState.documentsListState.documents.values.where((document) => document.isEpingle).toList();
}
