/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:redux/redux.dart';

class OptionsAffichageScreenViewModel extends Equatable {
  final TypeOfChart defaultTypeOfChart;
  final void Function(TypeOfChart) updatePreferredTypeOfChart;

  const OptionsAffichageScreenViewModel._({required this.defaultTypeOfChart, required this.updatePreferredTypeOfChart});

  factory OptionsAffichageScreenViewModel(Store<EnsState> store, EnsMesureType mesureType) {
    return OptionsAffichageScreenViewModel._(
      defaultTypeOfChart: store.state.courbesReferenceState.preferredTypeOfChart[mesureType] ?? TypeOfChart.DYNAMIQUE,
      updatePreferredTypeOfChart: (TypeOfChart selectedTypeOfChart) {
        store.dispatch(UpdatePreferredTypeOfChartAction(typeOfChart: selectedTypeOfChart, mesureType: mesureType));
      },
    );
  }

  @override
  List<Object?> get props => [defaultTypeOfChart];
}
