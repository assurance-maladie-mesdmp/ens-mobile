/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class LinkedTraitementDisplayModel extends Equatable {
  final String id;
  final String nom;
  final String dureeAffichable;

  const LinkedTraitementDisplayModel({required this.id, required this.nom, required this.dureeAffichable});

  @override
  List<Object?> get props => [id, nom, dureeAffichable];
}

extension LinkedTraitementDisplayModelMapper on List<EnsTraitement> {
  List<LinkedTraitementDisplayModel> getTraitementDisplayModelsLinkToEntity(
    List<String> linkEntityTraitementIdAssocierList,
  ) {
    return linkEntityTraitementIdAssocierList
        .map((traitementId) {
          final traitement = firstWhereOrNull((traitement) => traitement.id == traitementId);
          if (traitement == null) return null;
          return LinkedTraitementDisplayModel(
            id: traitement.id,
            nom: traitement.name,
            dureeAffichable: EnsProfilMedicalDateUtils.formatTimeInterval(
              traitement.startDate,
              traitement.endDate,
            ),
          );
        })
        .nonNulls
        .toList();
  }
}
