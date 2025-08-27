/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'maladies_redux.dart';

class FetchMaladiesAction {
  final bool force;

  const FetchMaladiesAction({this.force = false});
}

class ProcessFetchMaladiesSuccessAction {
  final List<EnsMaladie> maladies;
  final DateTime? nonConcerneDepuis;

  ProcessFetchMaladiesSuccessAction({required this.maladies, this.nonConcerneDepuis});
}

class ProcessFetchMaladiesErrorAction {}

class AddMaladieAction {
  final EditingMaladie editingMaladie;
  final List<DocumentEditionCreation> docsToCreateAndLink;
  final List<TraitementTemporaire> traitementToCreateAndLink;

  AddMaladieAction(this.editingMaladie, this.docsToCreateAndLink, this.traitementToCreateAndLink);
}

class UpdateMaladieAction {
  final EditingMaladie editingMaladie;
  final List<DocumentEditionCreation> docsToCreateAndLink;
  final List<TraitementTemporaire> traitementToCreateAndLink;

  UpdateMaladieAction(this.editingMaladie, this.docsToCreateAndLink, this.traitementToCreateAndLink);
}

class ProcessAddOrUpdateMaladieSuccessAction {}

class ProcessAddOrUpdateMaladieErrorAction {}

class DeleteMaladieAction {
  final String maladieId;

  DeleteMaladieAction(this.maladieId);
}

class ProcessDeleteMaladieSuccessAction {
  final String maladieId;

  ProcessDeleteMaladieSuccessAction(this.maladieId);
}

class RemoveDocumentLinkedToMaladieAction {
  final String maladieId;
  final String documentId;

  RemoveDocumentLinkedToMaladieAction({
    required this.maladieId,
    required this.documentId,
  });
}

class RemoveTraitementLinkedToMaladieAction {
  final String maladieId;
  final String traitementId;

  RemoveTraitementLinkedToMaladieAction({
    required this.maladieId,
    required this.traitementId,
  });
}

class ProcessTraitementRemovedFromMaladieAction {
  final String maladieId;
  final String traitementId;

  ProcessTraitementRemovedFromMaladieAction(this.maladieId, this.traitementId);
}

class ProcessDocumentRemovedFromMaladieAction {
  final String maladieId;
  final String documentId;

  ProcessDocumentRemovedFromMaladieAction(this.maladieId, this.documentId);
}

class ProcessFetchLinkMaladiesSuccessAction {
  final Map<String, EnsMaladie> maladies;

  ProcessFetchLinkMaladiesSuccessAction(this.maladies);
}
