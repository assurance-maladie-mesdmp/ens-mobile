/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class CatalogueServicesEnSavoirPlusScreenViewModel extends Equatable {
  final ProfilType profilType;

  const CatalogueServicesEnSavoirPlusScreenViewModel({
    required this.profilType,
  });

  factory CatalogueServicesEnSavoirPlusScreenViewModel.from(Store<EnsState> store) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    return CatalogueServicesEnSavoirPlusScreenViewModel(
      profilType: profilType,
    );
  }

  @override
  List<Object?> get props => [profilType];
}
