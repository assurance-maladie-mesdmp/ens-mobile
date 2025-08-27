/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/editing_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_attachment_screen.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:redux/redux.dart';

class CreateDocumentFromAttachmentViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store<EnsState> _store;
  final CreateDocumentFromAttachmentStatus status;
  final EditingDocument initialDoc;

  CreateDocumentFromAttachmentViewModel._internal(
    this._store, {
    required this.status,
    required this.initialDoc,
  }) : super(_store);

  factory CreateDocumentFromAttachmentViewModel(Store<EnsState> store, CreateDocumentFromAttachmentArgument argument) {
    CreateDocumentFromAttachmentStatus status = CreateDocumentFromAttachmentStatus.INIT;
    final editionStatus = store.state.documentsState.editionStatus;
    final attachmentContent = argument.attachmentContent;
    final EnsFileContent fileContent = EnsFileContent(
      filename: attachmentContent.name,
      mimeType: attachmentContent.mimeType,
      base64Content: attachmentContent.base64Content,
    );
    final EditingDocument initialDocInfo = EditingDocument(
      title: attachmentContent.name,
      date: attachmentContent.createdAt,
      content: fileContent,
    );

    if (editionStatus is DocumentEditionUploading) {
      status = CreateDocumentFromAttachmentStatus.UPLOADING;
    } else if (editionStatus is DocumentEditionUploadSuccess) {
      status = CreateDocumentFromAttachmentStatus.SUCCESS;
    }

    return CreateDocumentFromAttachmentViewModel._internal(
      store,
      status: status,
      initialDoc: initialDocInfo,
    );
  }

  void sendDoc(DocumentEdition newDoc) {
    _store.dispatch(UploadDocumentAction(newDocument: newDoc as DocumentEditionCreation, isFromAttachment: true));
    if (newDoc.category == EnsDocumentCategorie.pieceAdministrative) {
      _store.dispatch(const FetchRecommandationsAction(force: true));
    }
  }

  @override
  List<Object?> get props => [status, initialDoc];
}

enum CreateDocumentFromAttachmentStatus { INIT, UPLOADING, SUCCESS }
