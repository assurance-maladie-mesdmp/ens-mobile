/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'directives_anticipees_redux.dart';

class FetchDirectivesAnticipeesAction {
  final bool force;

  FetchDirectivesAnticipeesAction({this.force = false});
}

class _ProcessFetchDirectivesAnticipeesSuccessAction {
  final EnsDocument document;

  _ProcessFetchDirectivesAnticipeesSuccessAction(this.document);
}

class _ProcessFetchDirectivesAnticipeesErrorAction {
  final DirectivesAnticipeesDomainError error;

  _ProcessFetchDirectivesAnticipeesErrorAction(this.error);
}

class DeleteDirectivesAnticipeesAction {}

class ProcessDeleteDirectivesAnticipeesSuccessAction {
  final List<String> documentDeletedIds;

  ProcessDeleteDirectivesAnticipeesSuccessAction(this.documentDeletedIds);
}

class UploadDirectivesAnticipeesAction extends UploadingDocumentAction {
  final DocumentEditionCreation newDocument;

  UploadDirectivesAnticipeesAction({required this.newDocument});
}

class _ProcessUploadDirectivesAnticipeesSuccessAction extends UploadingDocumentAction {
  final EnsDocument document;

  _ProcessUploadDirectivesAnticipeesSuccessAction({required this.document});
}
