/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';

class DocumentActionsHelper {
  static void downloadDocument(
    BuildContext context, {
    required EnsDocument docToDisplay,
    EnsTag tag = TagsDocuments.tag_button_telecharger,
  }) {
    context.tagAction(tag);
    StoreProvider.of<EnsState>(context).dispatch(DownloadDocumentAction(docToDisplay));
  }

  static void downloadFile(BuildContext context, {required EnsFileContent file}) {
    StoreProvider.of<EnsState>(context).dispatch(DownloadFileAction(file));
  }

  static void deleteDocument(
    BuildContext context,
    String documentId,
  ) {
    _updateSynthesePml(context, documentId);

    StoreProvider.of<EnsState>(context).dispatch(
      DeleteDocumentsAction(documentsIds: [documentId]),
    );
  }

  static void deleteDirectivesAnticipees(BuildContext context, String documentId) {
    _updateSynthesePml(context, documentId);

    StoreProvider.of<EnsState>(context).dispatch(
      DeleteDirectivesAnticipeesAction(),
    );
  }

  static void _updateSynthesePml(BuildContext context, String documentId) {
    final document = StoreProvider.of<EnsState>(context).state.documentsState.documentsListState.documents[documentId];
    if (document?.categorie == EnsDocumentCategorie.pieceAdministrative) {
      StoreProvider.of<EnsState>(context).dispatch(const FetchRecommandationsAction(force: true));
    }
  }

  static void setDocumentPinStatus(BuildContext context, String documentId, bool pinStatus) {
    StoreProvider.of<EnsState>(context)
        .dispatch(SetDocumentEpingleStatusAction(documentId: documentId, newDocumentEpingleStatus: pinStatus));
  }

  static void tagValidateClick(BuildContext context) {
    context.tagAction(TagsDocuments.tag_724_button_supprimer_document_valider);
  }

  static void tagCancelClick(BuildContext context) {
    context.tagAction(TagsDocuments.tag_725_button_supprimer_document_annuler);
  }

  static void tagShowModal(BuildContext context) {
    context.tagAction(TagsDocuments.tag_726_popin_supprimer_document);
  }
}
