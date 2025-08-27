/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class AllergiesScreenViewModel extends Equatable {
  final AllergiesListStatus listStatus;
  final List<AllergiesScreenItemDisplayModel> displayModels;
  final String? unconcernedDate;
  final bool isUnconcernedLoading;
  final ProfilType profilType;
  final String mainFirstName;
  final void Function() loadAllergies;
  final void Function(String allergieId) deleteAllergie;
  final void Function() setUnconcerned;
  final void Function() exportRubriqueAllergies;

  const AllergiesScreenViewModel._internal({
    required this.listStatus,
    required this.displayModels,
    required this.unconcernedDate,
    required this.isUnconcernedLoading,
    required this.loadAllergies,
    required this.deleteAllergie,
    required this.setUnconcerned,
    required this.exportRubriqueAllergies,
    required this.profilType,
    required this.mainFirstName,
  });

  factory AllergiesScreenViewModel(Store<EnsState> store) {
    final allergiesState = store.state.allergiesState;
    final allergiesListState = allergiesState.allergiesListState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    var listStatus = AllergiesListStatus.LOADING;
    final List<AllergiesScreenItemDisplayModel> displayModels = [];
    String? unconcernedDate;

    if (allergiesListState.status.isSuccess()) {
      final nonConcerneDepuis = allergiesListState.nonConcerneDepuis;
      if (nonConcerneDepuis != null) {
        listStatus = AllergiesListStatus.UNCONCERNED;
        unconcernedDate = EnsDateUtils.formatddmmyyyy(nonConcerneDepuis);
      } else {
        if (allergiesListState.allergies.isEmpty) {
          listStatus = AllergiesListStatus.EMPTY;
        } else {
          listStatus = AllergiesListStatus.SUCCESS;
          displayModels.add(AllergiesScreenHeaderDisplayModel());
          displayModels.addAll(
            allergiesListState.allergies.map((allergie) => AllergieItemDisplayModel(allergie)),
          );
        }
      }
    } else if (allergiesListState.status.isError()) {
      listStatus = AllergiesListStatus.ERROR;
    }

    return AllergiesScreenViewModel._internal(
      listStatus: listStatus,
      displayModels: displayModels,
      unconcernedDate: unconcernedDate,
      isUnconcernedLoading: allergiesState.updateNonConcerneStatus.isLoading(),
      loadAllergies: () => store.dispatch(const FetchAllergiesAction(force: true)),
      deleteAllergie: (allergieId) => store.dispatch(DeleteAllergieAction(allergieId)),
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.ALLERGIES)),
      exportRubriqueAllergies: () => store.dispatch(ExportSyntheseRubriquePmlAction(EnsPmlSection.ALLERGIES)),
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }

  @override
  List<Object?> get props => [
        listStatus,
        displayModels,
        unconcernedDate,
        isUnconcernedLoading,
        profilType,
        mainFirstName,
      ];
}

enum AllergiesListStatus { LOADING, ERROR, SUCCESS, EMPTY, UNCONCERNED }

abstract class AllergiesScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class AllergiesScreenHeaderDisplayModel extends AllergiesScreenItemDisplayModel {}

class AllergieItemDisplayModel extends AllergiesScreenItemDisplayModel {
  final EnsAllergie allergie;

  AllergieItemDisplayModel(this.allergie);

  @override
  List<Object?> get props => [allergie];
}
