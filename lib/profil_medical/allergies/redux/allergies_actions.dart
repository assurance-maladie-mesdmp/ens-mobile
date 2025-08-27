/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'allergies_redux.dart';

class FetchAllergiesAction {
  final bool force;

  const FetchAllergiesAction({this.force = false});
}

class ProcessFetchAllergiesSuccessAction {
  final List<EnsAllergie> allergies;
  final DateTime? nonConcerneDepuis;

  ProcessFetchAllergiesSuccessAction({required this.allergies, this.nonConcerneDepuis});
}

class ProcessFetchAllergiesErrorAction {}

class AddAllergieAction {
  final String? name;
  final String? comment;
  final List<String> traitementsInMesToLink;
  final List<TraitementTemporaire> newTraitementsToLink;

  const AddAllergieAction({
    required this.name,
    required this.comment,
    required this.traitementsInMesToLink,
    required this.newTraitementsToLink,
  });
}

class ProcessAddOrUpdateAllergieSuccessAction {}

class ProcessAddOrUpdateAllergieErrorAction {}

class UpdateAllergieAction {
  final String id;
  final String? name;
  final String? comment;
  final List<String> traitementsLinks;
  final List<TraitementTemporaire> traitementToCreateAndLink;

  const UpdateAllergieAction({
    required this.id,
    required this.name,
    required this.comment,
    required this.traitementsLinks,
    required this.traitementToCreateAndLink,
  });
}

class DeleteAllergieAction {
  final String allergieId;

  const DeleteAllergieAction(this.allergieId);
}

class ProcessDeleteAllergieSuccessAction {
  final String allergieId;

  ProcessDeleteAllergieSuccessAction(this.allergieId);
}

class RemoveTraitementLinkedToAllergieAction {
  final String allergieId;
  final String traitementId;

  RemoveTraitementLinkedToAllergieAction({
    required this.allergieId,
    required this.traitementId,
  });
}

class _ProcessTraitementRemovedFromAllergieAction {
  final String allergieId;
  final String traitementId;

  _ProcessTraitementRemovedFromAllergieAction(this.allergieId, this.traitementId);
}

class ProcessFetchLinkAllergiesSuccessAction {
  final Map<String, EnsAllergie> allergies;

  ProcessFetchLinkAllergiesSuccessAction(this.allergies);
}
