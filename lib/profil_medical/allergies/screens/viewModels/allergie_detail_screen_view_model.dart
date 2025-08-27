/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class AllergieDetailScreenViewModel extends Equatable {
  final AllergieDetailScreenDisplayModel screenDisplayModel;
  final void Function(String traitementId) deleteAllergie;
  final void Function() loadAllergie;
  final TraitementLinkDisplayFrom displayFrom;
  final ProfilType profilType;
  final List<LinkedTraitementDisplayModel> linkTraitementDisplayModel;
  final void Function(String traitementId) deleteTraitementLinkToAllergie;

  const AllergieDetailScreenViewModel._internal({
    required this.screenDisplayModel,
    required this.deleteAllergie,
    required this.loadAllergie,
    required this.displayFrom,
    required this.profilType,
    required this.linkTraitementDisplayModel,
    required this.deleteTraitementLinkToAllergie,
  });

  factory AllergieDetailScreenViewModel.from(Store<EnsState> store, AllergieDetailScreenArgument arg) {
    final allergie = store.state.allergiesState.allergiesListState.allergies
        .where((allergie) => allergie.id == arg.allergieId)
        .firstOrNull;
    AllergieDetailScreenDisplayModel screenStatus;
    List<LinkedTraitementDisplayModel> linkTraitementDisplayModel = [];
    if (allergie != null) {
      screenStatus = AllergieDetailScreenDisplayModel.success(allergie);
      if (arg.displayFrom != TraitementLinkDisplayFrom.traitement) {
        final traitements = store.state.traitementsState.traitementsListState.traitements;
        linkTraitementDisplayModel = traitements.getTraitementDisplayModelsLinkToEntity(
          allergie.linkedTraitementIds,
        );
      }
    } else {
      screenStatus = store.state.allergiesState.allergiesListState.status.isFinishLoaded()
          ? const AllergieDetailScreenDisplayModel.error()
          : const AllergieDetailScreenDisplayModel.loading();
    }

    return AllergieDetailScreenViewModel._internal(
      screenDisplayModel: screenStatus,
      deleteAllergie: (allergieId) => store.dispatch(DeleteAllergieAction(allergieId)),
      loadAllergie: () => store.dispatch(const FetchAllergiesAction(force: true)),
      displayFrom: arg.displayFrom,
      profilType: ProfilsUtils.getCurrentProfilType(store.state),
      linkTraitementDisplayModel: linkTraitementDisplayModel,
      deleteTraitementLinkToAllergie: (traitementId) => store
          .dispatch(RemoveTraitementLinkedToAllergieAction(allergieId: arg.allergieId, traitementId: traitementId)),
    );
  }

  @override
  List<Object?> get props => [
        screenDisplayModel,
        displayFrom,
        profilType,
        linkTraitementDisplayModel,
        deleteTraitementLinkToAllergie,
      ];
}

sealed class AllergieDetailScreenDisplayModel extends Equatable {
  const AllergieDetailScreenDisplayModel();

  const factory AllergieDetailScreenDisplayModel.loading() = AllergieDisplayModelLoading;

  const factory AllergieDetailScreenDisplayModel.success(EnsAllergie allergie) = AllergieDisplayModelSuccess;

  const factory AllergieDetailScreenDisplayModel.error() = AllergieDisplayModelError;

  @override
  List<Object?> get props => [];
}

class AllergieDisplayModelLoading extends AllergieDetailScreenDisplayModel {
  const AllergieDisplayModelLoading();
}

class AllergieDisplayModelSuccess extends AllergieDetailScreenDisplayModel {
  final EnsAllergie allergie;

  const AllergieDisplayModelSuccess(this.allergie);

  @override
  List<Object?> get props => [allergie];
}

class AllergieDisplayModelError extends AllergieDetailScreenDisplayModel {
  const AllergieDisplayModelError();
}
