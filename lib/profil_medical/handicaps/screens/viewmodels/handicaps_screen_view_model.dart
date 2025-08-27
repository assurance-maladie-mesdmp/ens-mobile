/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/handicaps_display_model_for_list.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class HandicapsScreenViewModel extends Equatable {
  final HandicapsListStatus listStatus;
  final List<HandicapsDisplayModelForList> displayModels;
  final String? unconcernedDate;
  final ProfilType profilType;
  final String mainFirstName;
  final Function() setUnconcerned;
  final Function() onReload;
  final bool isUnconcernedLoading;
  final Function(String handicapId) deleteHandicap;

  const HandicapsScreenViewModel._internal({
    required this.listStatus,
    required this.displayModels,
    required this.onReload,
    required this.setUnconcerned,
    this.unconcernedDate,
    required this.isUnconcernedLoading,
    required this.deleteHandicap,
    required this.profilType,
    required this.mainFirstName,
  });

  factory HandicapsScreenViewModel.from(Store<EnsState> store) {
    final handicapsState = store.state.handicapsState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    return HandicapsScreenViewModel._internal(
      listStatus: _displayHandicapsListStatus(handicapsState),
      isUnconcernedLoading: handicapsState.updateNonConcerneStatus.isLoading(),
      displayModels: _displayModels(handicapsState.handicapsListState),
      onReload: () => store.dispatch(const FetchHandicapsAction()),
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.HANDICAPS)),
      unconcernedDate: _formatNonConcerneDepuis(handicapsState.handicapsListState),
      deleteHandicap: (handicapId) => store.dispatch(DeleteHandicapAction(handicapId)),
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }

  static String? _formatNonConcerneDepuis(HandicapsListState state) {
    if (state.status.isSuccess() && state.nonConcerneDepuis != null) {
      return EnsDateUtils.formatddmmyyyy(state.nonConcerneDepuis!);
    } else {
      return null;
    }
  }

  static HandicapsListStatus _displayHandicapsListStatus(HandicapsState state) {
    if (state.handicapsListState.status.isError()) {
      return HandicapsListStatus.ERROR;
    } else if (state.handicapsListState.status.isSuccess()) {
      if (state.handicapsListState.nonConcerneDepuis != null) {
        return HandicapsListStatus.UNCONCERNED;
      } else {
        return state.handicapsListState.handicaps.isEmpty ? HandicapsListStatus.EMPTY : HandicapsListStatus.SUCCESS;
      }
    }
    return HandicapsListStatus.LOADING;
  }

  static List<HandicapsDisplayModelForList> _displayModels(HandicapsListState handicapsListState) {
    final List<HandicapsDisplayModelForList> displayModels = [];
    if (handicapsListState.status.isSuccess()) {
      final handicaps = handicapsListState.handicaps.values;
      for (final handicap in handicaps) {
        final handicapTypes = handicap.types.formatList();
        displayModels.add(HandicapsDisplayModelForList(id: handicap.id, name: handicap.name, types: handicapTypes));
      }
    }
    return displayModels;
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

enum HandicapsListStatus { LOADING, SUCCESS, EMPTY, ERROR, UNCONCERNED }

String _handicapToString(String type) => 'Handicap de type $type';

extension HandicapListFormat on List<HandicapTypeEnum> {
  List<String> formatList() => map((handicap) {
        switch (handicap) {
          case HandicapTypeEnum.SENSORY:
            return _handicapToString('sensoriel');
          case HandicapTypeEnum.PSYCHIC:
            return _handicapToString('psychique');
          case HandicapTypeEnum.ENGINE:
            return _handicapToString('moteur');
          case HandicapTypeEnum.POLY:
            return _handicapToString('polyhandicap');
          case HandicapTypeEnum.NEURO_DEVELOPMENTAL:
            return _handicapToString('troubles du neuro-développement (TND)');
          case HandicapTypeEnum.DISABLING_DISEASE:
            return _handicapToString('maladies invalidantes');
          case HandicapTypeEnum.OTHERS:
          case HandicapTypeEnum.UNKNOWN:
            return _handicapToString('autres');
        }
      }).toList();
}
