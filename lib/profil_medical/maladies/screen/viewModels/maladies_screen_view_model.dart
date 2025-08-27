/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class MaladiesScreenViewModel extends Equatable {
  final MaladiesListStatus listStatus;
  final List<MaladiesScreenItemDisplayModel> displayModels;
  final String? unconcernedDate;
  final ProfilType profilType;
  final String mainFirstName;
  final bool isUnconcernedLoading;
  final void Function({bool force}) loadMaladies;
  final void Function(String maladieId) deleteMaladie;
  final void Function() setUnconcerned;

  const MaladiesScreenViewModel.internal({
    required this.listStatus,
    required this.displayModels,
    required this.unconcernedDate,
    required this.profilType,
    required this.mainFirstName,
    required this.isUnconcernedLoading,
    required this.loadMaladies,
    required this.deleteMaladie,
    required this.setUnconcerned,
  });

  factory MaladiesScreenViewModel.from(Store<EnsState> store) {
    final maladiesListState = store.state.maladiesState.maladiesListState;
    final maladiesEditStatus = store.state.maladiesState.maladieEditStatus;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    var listStatus = MaladiesListStatus.LOADING;
    String? unconcernedDate;
    final List<MaladiesScreenItemDisplayModel> displayModels = [];

    if (maladiesListState.status.isSuccess() && maladiesListState.nonConcerneDepuis == null) {
      listStatus = maladiesListState.maladies.isEmpty ? MaladiesListStatus.EMPTY : MaladiesListStatus.SUCCESS;
      displayModels.add(MaladiesScreenHeaderDisplayModel());
      displayModels.addAll(
        maladiesListState.maladies.keys.map(
          (maladieId) => MaladiesItemDisplayModel(MaladiesSelectors.getLoadedMaladieById(store.state, maladieId)),
        ),
      );
    } else if (maladiesListState.nonConcerneDepuis != null) {
      listStatus = MaladiesListStatus.UNCONCERNED;
      unconcernedDate = EnsDateUtils.formatddmmyyyy(maladiesListState.nonConcerneDepuis!);
    } else if (maladiesListState.status.isError()) {
      listStatus = MaladiesListStatus.ERROR;
    }

    return MaladiesScreenViewModel.internal(
      listStatus: listStatus,
      displayModels: displayModels,
      unconcernedDate: unconcernedDate,
      isUnconcernedLoading: maladiesEditStatus.isLoading(),
      loadMaladies: ({force = false}) => store.dispatch(FetchMaladiesAction(force: force)),
      deleteMaladie: (maladieId) => store.dispatch(DeleteMaladieAction(maladieId)),
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.MALADIES)),
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

enum MaladiesListStatus { LOADING, ERROR, SUCCESS, EMPTY, UNCONCERNED }

abstract class MaladiesScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class MaladiesScreenHeaderDisplayModel extends MaladiesScreenItemDisplayModel {}

class MaladiesItemDisplayModel extends MaladiesScreenItemDisplayModel {
  final EnsMaladie maladie;

  MaladiesItemDisplayModel(this.maladie);

  @override
  List<Object?> get props => [maladie];
}
