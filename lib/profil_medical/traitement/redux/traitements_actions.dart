/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/editing_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';

class FetchTraitementsAction {
  final bool force;

  const FetchTraitementsAction({this.force = false});
}

class ProcessFetchTraitementsSuccessAction {
  final List<EnsTraitement> traitements;
  final DateTime? nonConcerneDepuis;

  ProcessFetchTraitementsSuccessAction({required this.traitements, this.nonConcerneDepuis});
}

class ProcessFetchTraitementsErrorAction {}

class AddTraitementAction {
  final TraitementTemporaire traitementTemporaire;

  AddTraitementAction(this.traitementTemporaire);
}

class ProcessAddedOrUpdatedTraitementSuccessAction {}

class ProcessAddedOrUpdatedTraitementErrorAction {}

class InitTraitementEditionAction {}

class UpdateTraitementAction {
  final EditingTraitement editingTraitement;

  UpdateTraitementAction(this.editingTraitement);
}

class DeleteTraitementAction {
  final String traitementId;

  DeleteTraitementAction({required this.traitementId});
}

class ProcessDeleteTraitementSuccessAction {
  final String traitementId;

  ProcessDeleteTraitementSuccessAction(this.traitementId);
}

enum LinkTraitementsFrom { MALADIE, ALLERGIE }

class ProcessFetchLinkTraitementsSuccessAction {
  final List<EnsTraitement> traitements;
  final LinkTraitementsFrom from;

  ProcessFetchLinkTraitementsSuccessAction({required this.traitements, required this.from});
}

class FetchNomTraitementByCodeCipAction {
  final String codeCip;

  FetchNomTraitementByCodeCipAction({required this.codeCip});
}

class ProcessFetchedNomTraitementByCodeCipSuccessAction {
  final String nomTraitement;

  ProcessFetchedNomTraitementByCodeCipSuccessAction(this.nomTraitement);
}

class ProcessFetchedNomTraitementByCodeCipErrorAction {}

class ResetTraitementScannerStateAction {}
