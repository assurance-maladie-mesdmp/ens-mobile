/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/redux/search_ps_redux.dart';
import 'package:redux/redux.dart';

class AddPsViewModel extends Equatable {
  final AddPsScreenStatus status;
  final ProfessionnelDeSante? psSelected;
  final void Function({
    required String psId,
    bool shouldAddPsAsMedecinTraitant,
    PsProfessionLinkToRole? professionLinkToRole,
  }) addPs;
  final void Function(String id) selectPs;

  const AddPsViewModel._internal({
    required this.status,
    required this.psSelected,
    required this.addPs,
    required this.selectPs,
  });

  @override
  List<Object?> get props => [status, psSelected];

  factory AddPsViewModel.fromStore(Store<EnsState> store) {
    final addPsState = store.state.professionnelsDeSanteState.addPsState;
    final psSelected = addPsState.currentPsSelected;

    var status = AddPsScreenStatus.LOADING;

    if (addPsState.status.isSuccess()) {
      status = AddPsScreenStatus.SUCCESS;
    } else if (addPsState.status.isSelected() && psSelected != null) {
      status = AddPsScreenStatus.SELECTED;
    }
    return AddPsViewModel._internal(
      status: status,
      psSelected: psSelected,
      addPs: ({
        required String psId,
        bool shouldAddPsAsMedecinTraitant = false,
        PsProfessionLinkToRole? professionLinkToRole,
      }) {
        final role = shouldAddPsAsMedecinTraitant
            ? PsRoleDomaine.MEDECIN_TRAITANT
            : professionLinkToRole?.getPsDomainRoleLinkToProfession;

        store.dispatch(AddPsAction(professionnelSanteId: psId, role: role));
      },
      selectPs: (psId) => store.dispatch(SelectPsAction(psId)),
    );
  }
}

enum AddPsScreenStatus { LOADING, SUCCESS, SELECTED }
