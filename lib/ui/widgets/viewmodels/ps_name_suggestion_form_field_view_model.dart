/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:redux/redux.dart';

class PsNameSuggestionFormFieldViewModel extends Equatable {
  final List<ProfessionnelDeSante> ps;
  final ProfessionnelDeSante? selectedPs;

  const PsNameSuggestionFormFieldViewModel._internal(this.ps, this.selectedPs);

  factory PsNameSuggestionFormFieldViewModel.from(Store<EnsState> store) {
    List<ProfessionnelDeSante> ps = [];
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    final selectedPs = store.state.professionnelsDeSanteState.addPsState.currentPsSelected;

    if (psListState.status.isSuccess()) {
      ps = psListState.professionnelsDeSante;
    }

    return PsNameSuggestionFormFieldViewModel._internal(ps, selectedPs);
  }

  @override
  List<Object?> get props => [ps, selectedPs];
}
