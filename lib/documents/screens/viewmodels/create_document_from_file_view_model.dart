/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/editing_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:redux/redux.dart';

class CreateDocumentFromFileViewModel extends Equatable {
  final CreateDocumentFromFileStatus status;
  final EnsDocumentCategorie? forcedCategory;
  final bool isDocumentCreatedToBeLinked;
  final EditingDocument initialDoc;
  final String? dossierId;
  final void Function(DocumentEdition newDoc) sendDoc;
  final void Function(DocumentEdition newDoc) storeLinkDocuments;

  const CreateDocumentFromFileViewModel._internal({
    required this.status,
    this.forcedCategory,
    required this.isDocumentCreatedToBeLinked,
    required this.initialDoc,
    this.dossierId,
    required this.sendDoc,
    required this.storeLinkDocuments,
  });

  factory CreateDocumentFromFileViewModel(Store<EnsState> store, CreateDocumentFromFileArgument argument) {
    CreateDocumentFromFileStatus status = CreateDocumentFromFileStatus.INIT;
    final editionStatus = store.state.documentsState.editionStatus;
    EditingDocument initialDoc = const EditingDocument();

    if (editionStatus is DocumentEditionInitializationError) {
      status = CreateDocumentFromFileStatus.INIT_ERROR;
    } else if (editionStatus is DocumentEditionInitializationSuccess) {
      status = CreateDocumentFromFileStatus.INIT_SUCCESS;
      initialDoc = EditingDocument(content: editionStatus.ensFileContent);
    } else if (editionStatus is DocumentEditionUploading) {
      status = CreateDocumentFromFileStatus.UPLOADING;
    } else if (editionStatus is DocumentEditionUploadSuccess) {
      status = CreateDocumentFromFileStatus.SUCCESS;
    } else if (editionStatus is DocumentEditionUpdateError) {
      status = CreateDocumentFromFileStatus.UPLOADING_ERROR;
      initialDoc = EditingDocument(
        title: editionStatus.ensFile?.name,
        date: editionStatus.ensFile?.documentDate,
        categorie: editionStatus.ensFile?.category,
        confidentialites: editionStatus.ensFile?.confidentialites,
        dossierId: editionStatus.ensFile?.dossierId,
        content: editionStatus.ensFile?.ensFileContent,
      );
    }

    return CreateDocumentFromFileViewModel._internal(
      status: status,
      initialDoc: initialDoc,
      forcedCategory: argument.forcedCategory,
      isDocumentCreatedToBeLinked: argument.isDocumentCreatedToBeLinked,
      dossierId: argument.dossierId,
      sendDoc: (newDoc) => _sendDoc(store, newDoc),
      storeLinkDocuments: (newDoc) => store.dispatch(StoreLinkedDocumentAction(newDoc)),
    );
  }

  static void _sendDoc(Store<EnsState> store, DocumentEdition newDoc) {
    if (newDoc.category == EnsDocumentCategorie.directivesAnticipees) {
      store.dispatch(
        UploadDirectivesAnticipeesAction(
          newDocument: newDoc as DocumentEditionCreation,
        ),
      );
    } else {
      store.dispatch(UploadDocumentAction(newDocument: newDoc as DocumentEditionCreation, isFromAttachment: false));
      if (newDoc.category == EnsDocumentCategorie.pieceAdministrative) {
        store.dispatch(const FetchRecommandationsAction(force: true));
      }
    }
  }

  @override
  List<Object?> get props => [initialDoc, status, forcedCategory, isDocumentCreatedToBeLinked, dossierId];
}

enum CreateDocumentFromFileStatus { INIT, INIT_ERROR, INIT_SUCCESS, UPLOADING, SUCCESS, UPLOADING_ERROR }
