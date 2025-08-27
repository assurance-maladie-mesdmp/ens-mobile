/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class AntecedentsFamiliauxScreenViewModel extends Equatable {
  final AntecedentsFamiliauxListStatus listStatus;
  final List<AntecedentsFamiliauxScreenItemDisplayModel> displayModels;
  final String? unconcernedDate;
  final bool isUnconcernedLoading;
  final ProfilType profilType;
  final String mainFirstName;
  final void Function({bool force}) fetchAntecedentsFamiliaux;
  final void Function(String antecedentFailialId) deleteAntecedentFamilial;
  final void Function() setUnconcerned;

  const AntecedentsFamiliauxScreenViewModel._internal({
    required this.listStatus,
    required this.displayModels,
    required this.unconcernedDate,
    required this.isUnconcernedLoading,
    required this.fetchAntecedentsFamiliaux,
    required this.deleteAntecedentFamilial,
    required this.setUnconcerned,
    required this.profilType,
    required this.mainFirstName,
  });

  factory AntecedentsFamiliauxScreenViewModel.from(Store<EnsState> store) {
    final antecedentsFamiliauxState = store.state.antecedentsFamiliauxState;
    final antecedentsFamiliauxListState = antecedentsFamiliauxState.antecedentsFamiliauxListState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    var listStatus = AntecedentsFamiliauxListStatus.LOADING;
    String? unconcernedDate;
    final List<AntecedentsFamiliauxScreenItemDisplayModel> displayModels = [];

    if (antecedentsFamiliauxListState.status.isSuccess()) {
      final nonConcerneDepuis = antecedentsFamiliauxListState.nonConcerneDepuis;
      if (nonConcerneDepuis != null) {
        listStatus = AntecedentsFamiliauxListStatus.UNCONCERNED;
        unconcernedDate = EnsDateUtils.formatddmmyyyy(nonConcerneDepuis);
      } else {
        listStatus = antecedentsFamiliauxListState.antecedentsFamiliaux.isEmpty
            ? AntecedentsFamiliauxListStatus.EMPTY
            : AntecedentsFamiliauxListStatus.SUCCESS;
        displayModels.add(AntecedentsFamiliauxScreenHeaderDisplayModel());
        displayModels.addAll(
          antecedentsFamiliauxListState.antecedentsFamiliaux.map(
            (antecedentFamilial) => AntecedentsFamiliauxItemDisplayModel(antecedentFamilial),
          ),
        );
      }
    } else if (antecedentsFamiliauxListState.status.isError()) {
      listStatus = AntecedentsFamiliauxListStatus.ERROR;
    }

    return AntecedentsFamiliauxScreenViewModel._internal(
      listStatus: listStatus,
      displayModels: displayModels,
      unconcernedDate: unconcernedDate,
      isUnconcernedLoading: antecedentsFamiliauxState.updateNonConcerneStatus.isLoading(),
      fetchAntecedentsFamiliaux: ({bool force = false}) =>
          store.dispatch(FetchAntecedentsFamiliauxAction(force: force)),
      deleteAntecedentFamilial: (antecedentFamilialId) {
        store.dispatch(DeleteAntecedentFamilialAction(antecedentFamilialId));
      },
      setUnconcerned: () => store.dispatch(SetUnconcernedAction(SectionUnconcerned.ANTECEDENTS)),
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

enum AntecedentsFamiliauxListStatus { LOADING, SUCCESS, EMPTY, UNCONCERNED, ERROR }

abstract class AntecedentsFamiliauxScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class AntecedentsFamiliauxScreenHeaderDisplayModel extends AntecedentsFamiliauxScreenItemDisplayModel {}

class AntecedentsFamiliauxItemDisplayModel extends AntecedentsFamiliauxScreenItemDisplayModel {
  final EnsAntecedentFamilial antecedentFamilial;

  AntecedentsFamiliauxItemDisplayModel(this.antecedentFamilial);

  @override
  List<Object?> get props => [antecedentFamilial];
}
