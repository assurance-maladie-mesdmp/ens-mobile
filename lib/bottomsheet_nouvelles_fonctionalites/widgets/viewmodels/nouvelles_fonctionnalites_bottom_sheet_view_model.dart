/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/domain/nouvelle_fonctionnalite.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class NouvellesFonctionnalitesBottomSheetViewModel extends Equatable {
  final List<NouvelleFonctionnalite>? newFeatures;

  const NouvellesFonctionnalitesBottomSheetViewModel._internal({
    required this.newFeatures,
  });

  factory NouvellesFonctionnalitesBottomSheetViewModel(Store<EnsState> store) {
    return NouvellesFonctionnalitesBottomSheetViewModel._internal(
      newFeatures: store.state.nouvellesFonctionnalitesState.nouvellesFonctionnalites,
    );
  }

  bool get hasNewFeatures => newFeatures != null && newFeatures!.isNotEmpty;

  @override
  List<Object?> get props => [newFeatures];
}
