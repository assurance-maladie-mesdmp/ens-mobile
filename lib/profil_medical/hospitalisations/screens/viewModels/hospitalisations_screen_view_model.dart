/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class HospitalisationsScreenViewModel extends Equatable {
  final HospitalisationsListStatus listStatus;
  final List<HospitalisationsScreenItemDisplayModel> displayModels;
  final String? unconcernedDate;
  final bool isUnconcernedLoading;
  final ProfilType profilType;
  final String mainFirstName;
  final void Function({bool force}) loadHospitalisations;
  final void Function(String hospitalisationId) deleteHospitalisation;
  final void Function() setUnconcerned;

  const HospitalisationsScreenViewModel._internal({
    required this.listStatus,
    required this.displayModels,
    required this.unconcernedDate,
    required this.isUnconcernedLoading,
    required this.loadHospitalisations,
    required this.deleteHospitalisation,
    required this.setUnconcerned,
    required this.profilType,
    required this.mainFirstName,
  });

  factory HospitalisationsScreenViewModel.from(Store<EnsState> store) {
    final hospitalisationsState = store.state.hospitalisationsState;
    final hospitalisationsListState = hospitalisationsState.hospitalisationsListState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    var listStatus = HospitalisationsListStatus.LOADING;
    String? unconcernedDate;
    final List<HospitalisationsScreenItemDisplayModel> displayModels = [];

    if (hospitalisationsListState.status.isSuccess()) {
      final nonConcerneDepuis = hospitalisationsListState.nonConcerneDepuis;
      if (nonConcerneDepuis != null) {
        listStatus = HospitalisationsListStatus.UNCONCERNED;
        unconcernedDate = EnsDateUtils.formatddmmyyyy(nonConcerneDepuis);
      } else {
        listStatus = hospitalisationsListState.hospitalisations.isEmpty
            ? HospitalisationsListStatus.EMPTY
            : HospitalisationsListStatus.SUCCESS;
        displayModels.add(HospitalisationsScreenHeaderDisplayModel());
        displayModels.addAll(
          hospitalisationsListState.hospitalisations
              .map((hospitalisation) => HospitalisationsItemDisplayModel(hospitalisation)),
        );
      }
    } else if (hospitalisationsListState.status.isError()) {
      listStatus = HospitalisationsListStatus.ERROR;
    }

    return HospitalisationsScreenViewModel._internal(
      listStatus: listStatus,
      displayModels: displayModels,
      unconcernedDate: unconcernedDate,
      isUnconcernedLoading: hospitalisationsState.updateNonConcerneStatus.isLoading(),
      loadHospitalisations: ({force = false}) => store.dispatch(FetchHospitalisationsAction(force: force)),
      deleteHospitalisation: (hospitalisationId) => store.dispatch(DeleteHospitalisationAction(hospitalisationId)),
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.HOSPITALISATIONS)),
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

enum HospitalisationsListStatus { LOADING, ERROR, SUCCESS, UNCONCERNED, EMPTY }

abstract class HospitalisationsScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class HospitalisationsScreenHeaderDisplayModel extends HospitalisationsScreenItemDisplayModel {}

class HospitalisationsItemDisplayModel extends HospitalisationsScreenItemDisplayModel {
  final EnsHospitalisation hospitalisation;

  HospitalisationsItemDisplayModel(this.hospitalisation);

  @override
  List<Object?> get props => [hospitalisation];
}
