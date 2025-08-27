/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class AssocierTraitementScreenViewModel extends Equatable {
  final List<TraitementAssociableDisplayModel> displayModels;
  final List<LinkedTraitementDisplayModel> Function(List<String>) toLinkedTraitementDisplayModel;
  final ProfilType profilType;

  @override
  List<Object?> get props => [displayModels, profilType];

  const AssocierTraitementScreenViewModel._internal({
    required this.displayModels,
    required this.toLinkedTraitementDisplayModel,
    required this.profilType,
  });

  factory AssocierTraitementScreenViewModel.from(Store<EnsState> store) {
    final List<TraitementAssociableDisplayModel> displayModels = [];
    final traitements = store.state.traitementsState.traitementsListState.traitements;
    final maladies = store.state.maladiesState.maladiesListState.maladies;
    final allergies = store.state.allergiesState.allergiesListState.allergies;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    final traitementEnCours = traitements.where((traitement) => traitement.isEnCours()).toList();
    final traitementTermines = traitements.where((traitement) => !traitement.isEnCours()).toList();

    traitementEnCours.sort((traitement1, traitement2) {
      final sortedValue = traitement2.startDate.compareTo(traitement1.startDate);
      if (sortedValue == 0) {
        return traitement1.name.compareToIgnoringCase(traitement2.name);
      } else {
        return sortedValue;
      }
    });
    traitementTermines.sort((traitement1, traitement2) {
      final sortedValueEndDate = traitement2.endDate!.compareTo(traitement1.endDate!);
      if (sortedValueEndDate == 0) {
        final sortedValueStartDate = traitement2.startDate.compareTo(traitement1.startDate);
        if (sortedValueStartDate == 0) {
          return traitement1.name.compareToIgnoringCase(traitement2.name);
        } else {
          return sortedValueStartDate;
        }
      } else {
        return sortedValueEndDate;
      }
    });

    final traitementsTries = [...traitementEnCours, ...traitementTermines];

    for (final traitement in traitementsTries) {
      final linkedMaladieNames = traitement.linkedMaladieIds.map((linkId) => maladies[linkId]?.name).nonNulls.toList();
      final linkedAllergieNames = traitement.linkedAllergieIds
          .map((linkAllergieId) => allergies.firstWhereOrNull((allergie) => allergie.id == linkAllergieId)?.name)
          .nonNulls
          .toList();
      _addToDisplayModels(displayModels, traitement, linkedMaladieNames, linkedAllergieNames);
    }

    return AssocierTraitementScreenViewModel._internal(
      displayModels: displayModels,
      toLinkedTraitementDisplayModel: (List<String> traitementIds) => _toLinkedTraitementDisplayModel(
        traitementIds,
        traitements,
      ),
      profilType: profilType,
    );
  }
}

List<LinkedTraitementDisplayModel> _toLinkedTraitementDisplayModel(
  List<String> traitementIds,
  List<EnsTraitement> traitements,
) {
  final linkedTraitementDisplayModels = <LinkedTraitementDisplayModel>[];
  for (final traitementId in traitementIds) {
    final traitement = traitements.where((traitement) => traitement.id == traitementId).firstOrNull;
    if (traitement != null) {
      linkedTraitementDisplayModels.add(
        LinkedTraitementDisplayModel(
          id: traitement.id,
          nom: traitement.name,
          dureeAffichable: EnsProfilMedicalDateUtils.formatTimeInterval(
            traitement.startDate,
            traitement.endDate,
          ),
        ),
      );
    }
  }
  return linkedTraitementDisplayModels;
}

void _addToDisplayModels(
  List<TraitementAssociableDisplayModel> displayModels,
  EnsTraitement traitement,
  List<String> linkedMaladieNames,
  List<String> linkedAllergieNames,
) {
  displayModels.add(
    TraitementAssociableDisplayModel(
      id: traitement.id,
      nom: traitement.name,
      dateLabel: EnsProfilMedicalDateUtils.formatTimeInterval(
        traitement.startDate,
        traitement.endDate,
      ),
      posologie: traitement.dosage,
      linkedMaladieNames: linkedMaladieNames,
      linkedAllergieNames: linkedAllergieNames,
    ),
  );
}

class TraitementAssociableDisplayModel extends Equatable {
  final String id;
  final String nom;
  final String dateLabel;
  final String? posologie;
  final List<String> linkedMaladieNames;
  final List<String> linkedAllergieNames;

  const TraitementAssociableDisplayModel({
    required this.id,
    required this.nom,
    required this.dateLabel,
    this.posologie,
    this.linkedMaladieNames = const [],
    this.linkedAllergieNames = const [],
  });

  @override
  List<Object?> get props => [id, nom, dateLabel, posologie, linkedMaladieNames, linkedAllergieNames];
}
