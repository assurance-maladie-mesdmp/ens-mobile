/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/add_ps_typedef.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class ActeurDeSanteSuggestionsViewModel extends Equatable {
  final List<ActeurDeSanteSuggestionDisplayModel> suggestionsDisplayModels;
  final bool hasMedecinTraitant;
  final bool isPsRoleFeatureEnable;
  final void Function(String) addEs;
  final AddPsFunction addPs;
  final ProfilType profilType;
  final String mainFirstName;

  const ActeurDeSanteSuggestionsViewModel._internal({
    required this.addEs,
    required this.addPs,
    required this.suggestionsDisplayModels,
    required this.hasMedecinTraitant,
    required this.isPsRoleFeatureEnable,
    required this.profilType,
    required this.mainFirstName,
  });

  factory ActeurDeSanteSuggestionsViewModel.from(
    Store<EnsState> store,
    bool hasMedecinTraitant,
    RemoteConfigWrapper remoteConfigWrapper,
  ) {
    final suggestionsDisplayModels =
        store.state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates.suggestions.toDisplayModels();
    final isPsRoleFeatureEnable = remoteConfigWrapper.isEnabled(Feature.psRoleSfrPc);
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;
    return ActeurDeSanteSuggestionsViewModel._internal(
      addEs: (String id) => store.dispatch(AddEsAction(id)),
      addPs: ({required String id, PsRoleDisplayModel? role}) {
        store.dispatch(AddPsAction(professionnelSanteId: id, role: role?.psRoleDomaine));
      },
      suggestionsDisplayModels: suggestionsDisplayModels,
      hasMedecinTraitant: hasMedecinTraitant,
      isPsRoleFeatureEnable: isPsRoleFeatureEnable,
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }

  @override
  List<Object?> get props => [
        suggestionsDisplayModels,
        hasMedecinTraitant,
        isPsRoleFeatureEnable,
        profilType,
        mainFirstName,
      ];
}
