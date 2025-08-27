/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/informations_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class GroupeSanguinViewmodel extends Equatable {
  final ScreenStatusOnEmpty screenStatus;
  final bool isProfilPrincipal;
  final String mainFirstName;
  final List<InformationsGroupeSanguin> informationsGroupeSanguinList;
  final GroupeSanguinData? data;
  final void Function() fetchData;
  final void Function() delete;

  const GroupeSanguinViewmodel({
    required this.screenStatus,
    required this.isProfilPrincipal,
    required this.mainFirstName,
    required this.informationsGroupeSanguinList,
    required this.data,
    required this.fetchData,
    required this.delete,
  });

  factory GroupeSanguinViewmodel.from(Store<EnsState> store) {
    final groupeSanguinState = store.state.groupeSanguinState;

    return GroupeSanguinViewmodel(
      screenStatus: ScreenStatusOnEmpty.getFromAllPurposesStatus(
        dataStatus: groupeSanguinState.dataStatus,
        latestOperationStatus: groupeSanguinState.latestOperationStatus,
        dataNullOrEmpty: groupeSanguinState.groupeSanguinData == null,
      ),
      isProfilPrincipal: ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal,
      mainFirstName: store.state.userState.currentProfile.mainFirstName,
      data: groupeSanguinState.groupeSanguinData,
      informationsGroupeSanguinList: groupeSanguinState.informationsGroupeSanguinCms,
      fetchData: () {
        store.dispatch(FetchCmsInformationsGroupeSanguinAction());
        store.dispatch(const FetchGroupeSanguinAction());
      },
      delete: () {
        store.dispatch(const DeleteGroupeSanguinAction());
      },
    );
  }

  @override
  List<Object?> get props => [
        screenStatus,
        informationsGroupeSanguinList,
        isProfilPrincipal,
        mainFirstName,
        data,
      ];
}
