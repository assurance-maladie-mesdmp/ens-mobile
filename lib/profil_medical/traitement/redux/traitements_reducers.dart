/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:core';

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class TraitementsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchTraitementsAction>(TraitementsReducers._onProcessFetchTraitementsAction).call,
        TypedReducer<EnsState, ProcessFetchTraitementsSuccessAction>(
          TraitementsReducers._onProcessFetchTraitementsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchTraitementsErrorAction>(
          TraitementsReducers._onProcessFetchTraitementsErrorAction,
        ).call,
        TypedReducer<EnsState, AddTraitementAction>(TraitementsReducers._onAddTraitementAction).call,
        TypedReducer<EnsState, UpdateTraitementAction>(TraitementsReducers._onUpdateTraitementAction).call,
        TypedReducer<EnsState, ProcessAddedOrUpdatedTraitementSuccessAction>(
          TraitementsReducers._onProcessAddedOrUpdatedTraitementSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessAddedOrUpdatedTraitementErrorAction>(
          TraitementsReducers._onProcessAddedOrUpdatedTraitementErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteTraitementSuccessAction>(
          TraitementsReducers._onProcessDeleteTraitementSuccessAction,
        ).call,
        TypedReducer<EnsState, InitTraitementEditionAction>(TraitementsReducers._onInitTraitementEditionAction).call,
        TypedReducer<EnsState, ProcessFetchLinkTraitementsSuccessAction>(
          TraitementsReducers._onProcessFetchLinkTraitementsSuccessAction,
        ).call,
        TypedReducer<EnsState, FetchNomTraitementByCodeCipAction>(
          TraitementsReducers._onFetchNomTraitementByCodeCipAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedNomTraitementByCodeCipSuccessAction>(
          TraitementsReducers._onProcessFetchedNomTraitementByCodeCipSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedNomTraitementByCodeCipErrorAction>(
          TraitementsReducers._onProcessFetchedNomTraitementByCodeCipErrorAction,
        ).call,
        TypedReducer<EnsState, ResetTraitementScannerStateAction>(
          TraitementsReducers._onResetTraitementScannerStateAction,
        ).call,
      ];

  static EnsState _onProcessFetchTraitementsAction(EnsState state, FetchTraitementsAction action) {
    if (action.force || state.traitementsState.traitementsListState.status.isNotSuccess()) {
      return state.clone(
        traitementsState: state.traitementsState.clone(
          traitementsListState: state.traitementsState.traitementsListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchTraitementsSuccessAction(EnsState state, ProcessFetchTraitementsSuccessAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementsListState: TraitementsListState(
          status: AllPurposesStatus.SUCCESS,
          traitements: action.traitements,
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchTraitementsErrorAction(EnsState state, ProcessFetchTraitementsErrorAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementsListState: const TraitementsListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onInitTraitementEditionAction(EnsState state, InitTraitementEditionAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(traitementsEditState: AllPurposesStatus.NOT_LOADED),
    );
  }

  static EnsState _onAddTraitementAction(EnsState state, AddTraitementAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(traitementsEditState: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onUpdateTraitementAction(EnsState state, UpdateTraitementAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(traitementsEditState: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessAddedOrUpdatedTraitementSuccessAction(
    EnsState state,
    ProcessAddedOrUpdatedTraitementSuccessAction action,
  ) {
    return state.clone(
      traitementsState: state.traitementsState.clone(traitementsEditState: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessAddedOrUpdatedTraitementErrorAction(
    EnsState state,
    ProcessAddedOrUpdatedTraitementErrorAction action,
  ) {
    return state.clone(
      traitementsState: state.traitementsState.clone(traitementsEditState: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onProcessDeleteTraitementSuccessAction(
    EnsState state,
    ProcessDeleteTraitementSuccessAction action,
  ) {
    TraitementsState newTraitementsState = state.traitementsState;
    MaladiesState newMaladiesState = state.maladiesState;
    AllergiesState newAllergiesState = state.allergiesState;
    newTraitementsState = _updateTraitementsStateAfterDelete(state, action.traitementId);
    newMaladiesState = _updateMaladiesStateAfterTraitementDeleted(state, action.traitementId);
    newAllergiesState = _updateAllergieStateAfterTraitementDelete(state, action.traitementId);
    return state.clone(
      traitementsState: newTraitementsState,
      maladiesState: newMaladiesState,
      allergiesState: newAllergiesState,
    );
  }

  static TraitementsState _updateTraitementsStateAfterDelete(EnsState state, String traitementId) {
    final newTraitements = List<EnsTraitement>.from(state.traitementsState.traitementsListState.traitements);
    if (state.traitementsState.traitementsListState.status.isSuccess()) {
      newTraitements.removeWhere((traitement) => traitement.id == traitementId);
    }
    return state.traitementsState.clone(
      traitementsListState: state.traitementsState.traitementsListState.clone(traitements: newTraitements),
    );
  }

  static MaladiesState _updateMaladiesStateAfterTraitementDeleted(EnsState state, String deletedTraitementId) {
    final maladies = Map<String, EnsMaladie>.from(state.maladiesState.maladiesListState.maladies);

    maladies.updateAll((id, maladie) {
      final newMaladie = EnsMaladie(
        id: maladie.id,
        name: maladie.name,
        startDate: maladie.startDate,
        linkedDocumentIds: maladie.linkedDocumentIds,
        linkedTraitementIds:
            maladie.linkedTraitementIds.where((traitementId) => traitementId != deletedTraitementId).toList(),
      );
      return newMaladie;
    });

    return state.maladiesState.clone(
      maladiesListState: state.maladiesState.maladiesListState.clone(maladies: maladies),
    );
  }

  static AllergiesState _updateAllergieStateAfterTraitementDelete(EnsState state, String deletedTraitementId) {
    final allergies = state.allergiesState.allergiesListState.allergies.map((allergie) {
      final linkedTraitementIds = List<String>.from(allergie.linkedTraitementIds)..remove(deletedTraitementId);

      return EnsAllergie(
        id: allergie.id,
        name: allergie.name,
        linkedTraitementIds: linkedTraitementIds,
      );
    }).toList();

    return state.allergiesState.clone(
      allergiesListState: state.allergiesState.allergiesListState.clone(allergies: allergies),
    );
  }

  static EnsState _onProcessFetchLinkTraitementsSuccessAction(
    EnsState state,
    ProcessFetchLinkTraitementsSuccessAction action,
  ) {
    final currentTraitements = List<EnsTraitement>.from(state.traitementsState.traitementsListState.traitements);
    if (currentTraitements.isEmpty) {
      currentTraitements.addAll(action.traitements);
    } else {
      for (final newTraitement in action.traitements) {
        final existingTraitement = currentTraitements.firstWhereOrNull(
          (currentTraitement) => currentTraitement.id == newTraitement.id,
        );
        if (existingTraitement != null) {
          currentTraitements.remove(existingTraitement);
          final updatedExistingTraitementWithNewTraitement = existingTraitement.clone(
            linkedMaladieIds: action.from == LinkTraitementsFrom.MALADIE ? newTraitement.linkedMaladieIds : null,
            linkedAllergieIds: action.from == LinkTraitementsFrom.ALLERGIE ? newTraitement.linkedAllergieIds : null,
          );
          currentTraitements.add(updatedExistingTraitementWithNewTraitement);
        } else {
          currentTraitements.add(newTraitement);
        }
      }
    }
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementsListState: state.traitementsState.traitementsListState.clone(
          traitements: currentTraitements,
        ),
      ),
    );
  }

  static EnsState _onFetchNomTraitementByCodeCipAction(EnsState state, FetchNomTraitementByCodeCipAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementScannerState: state.traitementsState.traitementScannerState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedNomTraitementByCodeCipSuccessAction(
    EnsState state,
    ProcessFetchedNomTraitementByCodeCipSuccessAction action,
  ) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementScannerState: state.traitementsState.traitementScannerState.clone(
          status: AllPurposesStatus.SUCCESS,
          traitementName: action.nomTraitement,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedNomTraitementByCodeCipErrorAction(
    EnsState state,
    ProcessFetchedNomTraitementByCodeCipErrorAction action,
  ) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementScannerState: state.traitementsState.traitementScannerState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onResetTraitementScannerStateAction(EnsState state, ResetTraitementScannerStateAction action) {
    return state.clone(
      traitementsState: state.traitementsState.clone(
        traitementScannerState: const TraitementScannerState(),
      ),
    );
  }
}
