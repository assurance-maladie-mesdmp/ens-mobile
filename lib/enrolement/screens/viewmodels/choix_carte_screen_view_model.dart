/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class ChoixCarteVitaleScreenViewModel extends Equatable {
  final TypeCarteVitale typeCarteVitale;
  final void Function(TypeCarteVitale) onTypeCarteVitaleSelected;
  final void Function() resetScanCarteVitaleInfos;

  const ChoixCarteVitaleScreenViewModel._({
    required this.typeCarteVitale,
    required this.onTypeCarteVitaleSelected,
    required this.resetScanCarteVitaleInfos,
  });

  factory ChoixCarteVitaleScreenViewModel.from(Store<EnsInitialState> store) {
    return ChoixCarteVitaleScreenViewModel._(
      typeCarteVitale: store.state.enrolementState.typeCarteVitale,
      onTypeCarteVitaleSelected: (TypeCarteVitale typeCarteVitale) {
        store.dispatch(SelectTypeCarteVitaleAction(typeCarteVitale));
      },
      resetScanCarteVitaleInfos: () {
        store.dispatch(ResetScanCarteVitaleInformationAction());
      },
    );
  }

  @override
  List<Object?> get props => [typeCarteVitale];
}
