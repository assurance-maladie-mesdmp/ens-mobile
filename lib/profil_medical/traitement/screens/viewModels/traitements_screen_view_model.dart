/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class TraitementsScreenViewModel extends Equatable {
  final TraitementsListStatus listStatus;
  final List<TraitementsScreenItemDisplayModel> displayModels;
  final String? unconcernedDate;
  final bool isAddTraitementForFirstTime;
  final ProfilType profilType;
  final String mainFirstName;
  final void Function() onAddTraitementFirstTime;
  final void Function(String id) deleteTraitement;
  final void Function({bool forceReload}) loadTraitements;
  final void Function() setUnconcerned;
  final bool isUnconcernedLoading;

  const TraitementsScreenViewModel._internal(
    this.listStatus,
    this.displayModels,
    this.unconcernedDate, {
    required this.isAddTraitementForFirstTime,
    required this.onAddTraitementFirstTime,
    required this.deleteTraitement,
    required this.loadTraitements,
    required this.setUnconcerned,
    required this.isUnconcernedLoading,
    required this.profilType,
    required this.mainFirstName,
  });

  @override
  List<Object?> get props => [
        listStatus,
        displayModels,
        unconcernedDate,
        isAddTraitementForFirstTime,
        isUnconcernedLoading,
        profilType,
        mainFirstName,
      ];

  factory TraitementsScreenViewModel.from(Store<EnsState> store) {
    final traitementsListState = store.state.traitementsState.traitementsListState;
    final maladies = store.state.maladiesState.maladiesListState.maladies;
    final allergies = store.state.allergiesState.allergiesListState.allergies;
    final addTraitementForFirstTime = store.state.addItemForFirstTimeState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    var listStatus = TraitementsListStatus.LOADING;
    final List<TraitementsScreenItemDisplayModel> displayModels = [];
    String? unconcernedDate;

    if (traitementsListState.status.isSuccess()) {
      if (traitementsListState.nonConcerneDepuis != null) {
        listStatus = TraitementsListStatus.UNCONCERNED;
        unconcernedDate = EnsDateUtils.formatddmmyyyy(traitementsListState.nonConcerneDepuis!);
      } else if (traitementsListState.traitements.isEmpty) {
        listStatus = TraitementsListStatus.EMPTY;
      } else {
        listStatus = TraitementsListStatus.SUCCESS;
        displayModels.add(TraitementsScreenHeaderDisplayModel());

        displayModels.addAll(
          traitementsListState.traitements.map(
            (traitement) {
              final maladieListName =
                  traitement.linkedMaladieIds.map((linkMaladieId) => maladies[linkMaladieId]?.name).nonNulls.toList();
              final allergieListName = traitement.linkedAllergieIds
                  .map(
                    (linkAllergieId) => allergies.firstWhereOrNull((allergie) => allergie.id == linkAllergieId)?.name,
                  )
                  .nonNulls
                  .toList();
              return TraitementsItemDisplayModel(
                id: traitement.id,
                name: traitement.name,
                dateInfo: EnsProfilMedicalDateUtils.formatTimeInterval(
                  traitement.startDate,
                  traitement.endDate,
                ),
                dosage: traitement.dosage,
                linkedMaladieNames: maladieListName,
                linkedAllergieNames: allergieListName,
              );
            },
          ),
        );
      }
    } else if (traitementsListState.status.isError()) {
      listStatus = TraitementsListStatus.ERROR;
    }
    return TraitementsScreenViewModel._internal(
      listStatus,
      displayModels,
      unconcernedDate,
      isAddTraitementForFirstTime: addTraitementForFirstTime.firstTimeItemAdded.contains(EnsPmlSection.TRAITEMENTS),
      onAddTraitementFirstTime: () => store.dispatch(AddedItemForFirstTimeAction(EnsPmlSection.TRAITEMENTS)),
      deleteTraitement: (id) => store.dispatch(DeleteTraitementAction(traitementId: id)),
      loadTraitements: ({forceReload = false}) => store.dispatch(FetchTraitementsAction(force: forceReload)),
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.TRAITEMENTS)),
      isUnconcernedLoading: store.state.traitementsState.updateNonConcerneStatus.isLoading(),
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }
}

enum TraitementsListStatus { LOADING, ERROR, SUCCESS, EMPTY, UNCONCERNED }

abstract class TraitementsScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class TraitementsScreenHeaderDisplayModel extends TraitementsScreenItemDisplayModel {}

class TraitementsItemDisplayModel extends TraitementsScreenItemDisplayModel {
  final String id;
  final String name;
  final String dateInfo;
  final String? dosage;
  final List<String> linkedMaladieNames;
  final List<String> linkedAllergieNames;

  TraitementsItemDisplayModel({
    required this.id,
    required this.name,
    required this.dateInfo,
    this.dosage,
    this.linkedMaladieNames = const [],
    this.linkedAllergieNames = const [],
  });

  @override
  List<Object?> get props => [id, name, dateInfo, dosage, linkedMaladieNames, linkedAllergieNames];
}
