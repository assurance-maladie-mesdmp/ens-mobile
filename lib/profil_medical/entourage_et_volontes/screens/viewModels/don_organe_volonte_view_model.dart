/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class DonOrganeVolonteViewModel extends Equatable {
  final AllPurposesStatus status;
  final bool shouldDisableToggle;
  final bool consent;
  final ProfilType profilType;
  final void Function({bool force}) fetchEntourageEtVolontes;

  const DonOrganeVolonteViewModel._({
    required this.status,
    required this.profilType,
    required this.shouldDisableToggle,
    required this.consent,
    required this.fetchEntourageEtVolontes,
  });

  factory DonOrganeVolonteViewModel.from(Store<EnsState> store) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final entourageEtVolontesState = store.state.entourageEtVolontesState;

    return DonOrganeVolonteViewModel._(
      status: entourageEtVolontesState.entourageContactsStatus,
      profilType: profilType,
      shouldDisableToggle: entourageEtVolontesState.isUpdateConsentLoading,
      consent: entourageEtVolontesState.consent,
      fetchEntourageEtVolontes: ({force = false}) => store.dispatch(FetchEntourageEtVolontesAction(force: force)),
    );
  }

  @override
  List<Object?> get props => [status, shouldDisableToggle, consent, profilType];
}
