/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/editing_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class EditTraitementScreenViewModel extends Equatable {
  final TraitementsEditStatus editStatus;
  final TraitementFormulaireMode editionMode;
  final TraitementPreRemplis? initialTraitement;
  final bool initialActiveTraitementStatus;
  final bool isTraitementNameTruncated;
  final DateTime birthDate;
  final Function() resetTraitementScannerStatus;
  final Function(TraitementTemporaire) sendTraitementFormData;

  const EditTraitementScreenViewModel._internal({
    required this.editStatus,
    required this.editionMode,
    this.initialTraitement,
    required this.birthDate,
    required this.initialActiveTraitementStatus,
    required this.sendTraitementFormData,
    required this.resetTraitementScannerStatus,
    required this.isTraitementNameTruncated,
  });

  static const _MAX_CHARACTER_NUMBER = 50;

  bool get isInCreationMode => editionMode is CreateTraitementMode || isCreatingTraitementFromMhs;

  bool get isInTraitementEditingMode => editionMode is EditTraitementMode;

  bool get isCreatingTraitementFromMhs => editionMode is CreateTraitementFromMHSMode;

  String get editedTraitementId => (editionMode as EditTraitementMode).traitementId;

  factory EditTraitementScreenViewModel({
    required Store<EnsState> store,
    required TraitementFormulaireMode editionMode,
  }) {
    final now = clock.now().toLocal();

    final traitementsEditState = store.state.traitementsState.traitementsEditState;
    final traitementScannerState = store.state.traitementsState.traitementScannerState;

    TraitementsEditStatus editStatus = TraitementsEditStatus.INIT;
    if (traitementScannerState.status.isLoading()) {
      editStatus = TraitementsEditStatus.LOADING;
    }

    if (traitementsEditState.isSuccess()) {
      editStatus = TraitementsEditStatus.ADD_OR_UPDATE_SUCCESS;
    } else if (traitementsEditState.isLoading()) {
      editStatus = TraitementsEditStatus.PENDING;
    }

    bool initialActiveTraitementStatus = true;
    bool isNameTruncated = false;
    TraitementPreRemplis? traitement;

    if (editionMode is EditTraitementMode) {
      final traitementInEdition = store.state.traitementsState.traitementsListState.traitements
          .where((traitement) => traitement.id == editionMode.traitementId)
          .firstOrNull;
      traitement = traitementInEdition != null ? TraitementPreRemplis.fromEnsTraitement(traitementInEdition) : null;
      if (traitementScannerState.status.isSuccess()) {
        if (traitementScannerState.traitementName.length > _MAX_CHARACTER_NUMBER) {
          isNameTruncated = true;
          traitement = traitement?.clone(
            name: traitementScannerState.traitementName.truncate(_MAX_CHARACTER_NUMBER),
            comment: traitementScannerState.traitementName,
          );
        } else {
          traitement = traitement?.clone(name: traitementScannerState.traitementName);
        }
      }
      initialActiveTraitementStatus = traitement?.endDate?.year == null;
    } else if (traitementScannerState.status.isSuccess()) {
      if (traitementScannerState.traitementName.length > _MAX_CHARACTER_NUMBER) {
        isNameTruncated = true;
        traitement = TraitementPreRemplis(
          name: traitementScannerState.traitementName.truncate(_MAX_CHARACTER_NUMBER),
          startDate: EnsDate.fromDateTime(now),
          comment: traitementScannerState.traitementName,
        );
      } else {
        traitement = TraitementPreRemplis(
          name: traitementScannerState.traitementName,
          startDate: EnsDate.fromDateTime(DateTime.now()),
        );
      }
    } else if (editionMode is CreateTraitementFromMHSMode) {
      final traitementName = editionMode.traitementData.name;
      if (traitementName.length > _MAX_CHARACTER_NUMBER) {
        isNameTruncated = true;
        traitement = TraitementPreRemplis(
          name: traitementName.truncate(_MAX_CHARACTER_NUMBER),
          startDate: editionMode.traitementData.startDate,
          comment: traitementName,
        );
      } else {
        traitement = TraitementPreRemplis(
          name: traitementName,
          startDate: editionMode.traitementData.startDate,
        );
      }
    }

    return EditTraitementScreenViewModel._internal(
      editStatus: editStatus,
      editionMode: editionMode,
      initialTraitement: traitement,
      birthDate: UserSelectors.getBirthdateOrNow(store.state),
      initialActiveTraitementStatus: initialActiveTraitementStatus,
      resetTraitementScannerStatus: () => store.dispatch(ResetTraitementScannerStateAction()),
      sendTraitementFormData: (traitement) {
        store.dispatch(ResetTraitementScannerStateAction());

        if (editionMode is EditTraitementMode) {
          final editedTraitementId = editionMode.traitementId;
          final editingTraitement = EditingTraitement(
            id: editedTraitementId,
            name: traitement.name,
            startDay: traitement.startDay,
            startMonth: traitement.startMonth,
            startYear: traitement.startYear,
            endDay: traitement.endDay,
            endMonth: traitement.endMonth,
            endYear: traitement.endYear,
            dosage: traitement.dosage,
            comment: traitement.comment,
          );
          store.dispatch(UpdateTraitementAction(editingTraitement));
        } else {
          store.dispatch(AddTraitementAction(traitement));
        }
      },
      isTraitementNameTruncated: isNameTruncated,
    );
  }

  @override
  List<Object?> get props => [
        editStatus,
        editionMode,
        initialTraitement,
        initialActiveTraitementStatus,
        birthDate,
        isTraitementNameTruncated,
      ];
}

enum TraitementsEditStatus {
  INIT,
  LOADING,
  ADD_OR_UPDATE_SUCCESS,
  PENDING,
}

sealed class TraitementFormulaireMode extends Equatable {
  const TraitementFormulaireMode._();

  const factory TraitementFormulaireMode.createTraitement() = CreateTraitementMode;

  const factory TraitementFormulaireMode.createTemporaryTraitement() = CreateTemporaryTraitementMode;

  const factory TraitementFormulaireMode.createTraitementFromMHS(TraitementDataFromMhs dataFromMHS) =
      CreateTraitementFromMHSMode;

  const factory TraitementFormulaireMode.editTraitement(String traitementId) = EditTraitementMode;
}

class CreateTraitementMode extends TraitementFormulaireMode {
  const CreateTraitementMode() : super._();

  @override
  List<Object?> get props => [];
}

class CreateTemporaryTraitementMode extends TraitementFormulaireMode {
  const CreateTemporaryTraitementMode() : super._();

  @override
  List<Object?> get props => [];
}

class EditTraitementMode extends TraitementFormulaireMode {
  final String traitementId;

  const EditTraitementMode(this.traitementId) : super._();

  @override
  List<Object?> get props => [traitementId];
}

class CreateTraitementFromMHSMode extends TraitementFormulaireMode {
  final TraitementDataFromMhs traitementData;

  const CreateTraitementFromMHSMode(this.traitementData) : super._();

  @override
  List<Object?> get props => [traitementData];
}

class TraitementDataFromMhs {
  final String name;
  final EnsDate startDate;

  const TraitementDataFromMhs({required this.name, required this.startDate});
}

class TraitementPreRemplis extends Equatable {
  final String? id;
  final String name;
  final EnsDate startDate;
  final EnsDate? endDate;
  final String? dosage;
  final String? comment;

  const TraitementPreRemplis({
    this.id,
    required this.name,
    required this.startDate,
    this.endDate,
    this.dosage,
    this.comment,
  });

  TraitementPreRemplis.fromEnsTraitement(EnsTraitement traitement)
      : id = traitement.id,
        name = traitement.name,
        startDate = traitement.startDate,
        endDate = traitement.endDate,
        dosage = traitement.dosage,
        comment = traitement.comment;

  TraitementPreRemplis clone({String? name, String? comment}) {
    return TraitementPreRemplis(
      id: id,
      name: name ?? this.name,
      startDate: startDate,
      endDate: endDate,
      dosage: dosage,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object?> get props => [id, name, dosage, comment, startDate, endDate];
}
