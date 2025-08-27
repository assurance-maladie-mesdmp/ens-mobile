/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:redux/redux.dart';

class IncitationPmlViewModel extends Equatable {
  final bool isProfilPrincipal;
  final String? firstName;
  final AllPurposesStatus status;
  final bool shouldDisplayEndButton;
  final bool mustCompletePerimetreCranien;
  final bool mustCompleteEntourageEtVolontes;
  final void Function() fetchRecommandations;
  final void Function() fetchData;

  const IncitationPmlViewModel._({
    required this.isProfilPrincipal,
    required this.firstName,
    required this.mustCompletePerimetreCranien,
    required this.mustCompleteEntourageEtVolontes,
    required this.status,
    required this.shouldDisplayEndButton,
    required this.fetchRecommandations,
    required this.fetchData,
  });

  factory IncitationPmlViewModel.from(Store<EnsState> store) {
    final isAdult = ProfilsUtils.getCurrentProfilType(store.state).isAdult;
    return IncitationPmlViewModel._(
      isProfilPrincipal: store.state.userState.isMainProfile,
      firstName: UserSelectors.getFirstName(store.state),
      mustCompletePerimetreCranien: UserSelectors.isCurrentProfileUnderFiveYears(store.state),
      mustCompleteEntourageEtVolontes: ProfilsUtils.getCurrentProfilType(store.state).isAdult,
      status: IncitationPmlSelectors.getPmlRubriqueLinkToIncitationStatus(store.state),
      shouldDisplayEndButton: IncitationPmlSelectors.isIncitationCompleted(store.state),
      fetchRecommandations: () {
        if (IncitationPmlSelectors.pmlStatusChanged(store.state)) {
          store.dispatch(const FetchRecommandationsAction(force: true));
        }
      },
      fetchData: () {
        store.dispatch(const FetchLastMesuresAction());
        store.dispatch(const FetchMaladiesAction());
        store.dispatch(const FetchTraitementsAction());
        store.dispatch(const FetchAllergiesAction());
        if (isRefonteEntourageEtVolontesEnabled && isAdult) {
          store.dispatch(FetchEntourageEtVolontesAction());
        }
      },
    );
  }

  @override
  List<Object?> get props => [
        isProfilPrincipal,
        firstName,
        status,
        shouldDisplayEndButton,
        mustCompletePerimetreCranien,
        mustCompleteEntourageEtVolontes,
      ];
}
