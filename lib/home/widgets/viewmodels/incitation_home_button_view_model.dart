/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_welcome_screen.dart';
import 'package:redux/redux.dart';

class IncitationHomeButtonViewModel extends Equatable {
  final String label;
  final bool isProfilPrincipal;
  final String targetRouteNameScreen;

  const IncitationHomeButtonViewModel._({
    required this.label,
    required this.isProfilPrincipal,
    required this.targetRouteNameScreen,
  });

  factory IncitationHomeButtonViewModel.from(Store<EnsState> store, IncitationPmlStatus incitationPmlStatus) {
    final isProfilPrincipal = store.state.userState.isMainProfile;
    final targetRouteNameScreen = IncitationPmlSelectors.isWelcomePageShowed(store.state)
        ? IncitationPmlWelcomeScreen.routeName
        : IncitationPmlScreen.routeName;

    return IncitationHomeButtonViewModel._(
      label: _getLabel(incitationPmlStatus, isProfilPrincipal),
      isProfilPrincipal: isProfilPrincipal,
      targetRouteNameScreen: targetRouteNameScreen,
    );
  }

  @override
  List<Object?> get props => [label, isProfilPrincipal, targetRouteNameScreen];
}

String _getLabel(IncitationPmlStatus incitationPmlStatus, bool isProfilPrincipal) {
  switch (incitationPmlStatus) {
    case IncitationPmlStatus.INCITER_COMPLETER_PML:
      return isProfilPrincipal ? 'Compléter mon profil médical' : 'Compléter son profil médical';
    case IncitationPmlStatus.INCITER_ENREGISTRER_SYNTHESE_PML || IncitationPmlStatus.SYNTHESE_ENREGISTRER:
      return 'Voir et enregistrer la synthèse médicale';
    case IncitationPmlStatus.INCITER_RAFRAICHIR_SYNTHESE_PML:
      return 'Mettre à jour la synthèse';
  }
}
