/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professionnels_de_sante_redux.dart';

class FetchProfessionnelsDeSanteAction {
  final bool force;

  FetchProfessionnelsDeSanteAction({this.force = false});
}

class FetchProfessionnelsDeSanteSynchroMedecinTraitantAction {
  final bool force;
  final bool isFromAddPs;

  FetchProfessionnelsDeSanteSynchroMedecinTraitantAction({this.force = false, this.isFromAddPs = false});
}

class _ProcessFetchProfessionnelsDeSanteSuccessAction {
  final List<ProfessionnelDeSante> professionnelsDeSante;

  _ProcessFetchProfessionnelsDeSanteSuccessAction(this.professionnelsDeSante);
}

class _ProcessFetchProfessionnelsDeSanteErrorAction {}

class AddPsAction {
  final String professionnelSanteId;
  final PsRoleDomaine? role;

  const AddPsAction({required this.professionnelSanteId, this.role});
}

class _ProcessAddPsSuccessAction {
  final String professionnelSanteId;

  _ProcessAddPsSuccessAction(this.professionnelSanteId);
}

class _ProcessAddPsErrorAction {}

class RemovePsAction {
  final String professionnelSanteId;

  RemovePsAction(this.professionnelSanteId);
}

class ProcessRemovePsSuccessAction {
  final String professionnelSanteId;

  ProcessRemovePsSuccessAction(this.professionnelSanteId);
}

enum FetchProfessionnelSanteDetailFrom { MHS, HOME, PS_DETAIL }

class FetchProfessionnelSanteDetailAction {
  final FetchProfessionnelSanteDetailFrom detailFrom;
  final String psIdNat;

  FetchProfessionnelSanteDetailAction({required this.detailFrom, required this.psIdNat});
}

class _ProcessFetchProfessionnelSanteDetailSuccessAction {
  final String psIdNat;
  final ProfessionnelDeSante professionnelSante;

  _ProcessFetchProfessionnelSanteDetailSuccessAction(this.psIdNat, this.professionnelSante);
}

class _ProcessFetchProfessionnelSanteDetailErrorAction {
  final String psIdNat;

  _ProcessFetchProfessionnelSanteDetailErrorAction(this.psIdNat);
}

class FetchShouldDisplayPsHorsRefInfoAction {}

class _ProcessFetchShouldDisplayPsHorsRefInfoAction {
  final bool shouldDisplayInfoBottomSheet;

  _ProcessFetchShouldDisplayPsHorsRefInfoAction(this.shouldDisplayInfoBottomSheet);
}

class UpdateNonRefPsInfoViewDisplayAction {}

class FetchProfessionnelSanteConfidentialitiesAction {
  final bool force;

  const FetchProfessionnelSanteConfidentialitiesAction({this.force = false});
}

class _ProcessFetchProfessionnelSanteConfidentialitiesSuccessAction {
  final ProfessionnelSanteConfidentialities psConfidentialities;

  _ProcessFetchProfessionnelSanteConfidentialitiesSuccessAction(this.psConfidentialities);
}

class _ProcessFetchProfessionnelSanteConfidentialitiesErrorAction {}

class _ProcessUpdatePsRoleSuccessAction {
  final String psIdNat;
  final PsRoleDomaine role;

  _ProcessUpdatePsRoleSuccessAction({required this.psIdNat, required this.role});
}

class RemoveRoleFromPsAction {
  final String psIdNat;
  final PsRoleDomaine role;

  RemoveRoleFromPsAction({required this.psIdNat, required this.role});
}

class _ProcessRemoveRoleFromPsSuccessAction {
  final String psIdNat;

  _ProcessRemoveRoleFromPsSuccessAction({required this.psIdNat});
}

class UpdatePsRoleAction {
  final String psIdNat;
  final PsRoleDomaine role;

  UpdatePsRoleAction({required this.psIdNat, required this.role});
}

class FetchAsSuggestionsAction {
  final bool force;

  FetchAsSuggestionsAction({this.force = false});
}

class ProcessFetchAsSuggestionsSuccessAction {
  final List<ActeurDeSanteSuggestion> suggestions;

  const ProcessFetchAsSuggestionsSuccessAction(this.suggestions);
}

class ProcessFetchAsSuggestionsErrorAction {
  const ProcessFetchAsSuggestionsErrorAction();
}
