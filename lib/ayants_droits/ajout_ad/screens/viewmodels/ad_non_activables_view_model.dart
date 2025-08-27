/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class AdNonActivablesViewModel extends Equatable {
  final List<AdNonActivableDisplayModel> adsAvailables;
  final String email;

  @override
  List<Object?> get props => [adsAvailables, email];

  const AdNonActivablesViewModel._({
    required this.adsAvailables,
    required this.email,
  });

  factory AdNonActivablesViewModel.from(Store<EnsState> store) {
    final ajoutAdState = store.state.ajoutAdState;
    final mainUserDataState = store.state.userState.mainUserDataState;
    final email = mainUserDataState.isSuccessWithData ? mainUserDataState.userData!.mail : '';

    return AdNonActivablesViewModel._(
      adsAvailables: ajoutAdState.nonActivableAds
          .map(
            (ad) => AdNonActivableDisplayModel(
              name: '${ad.firstName.capitalize()} ${ad.lastName.capitalize()}',
              statusLabel: toAjoutAdStatusString(ad.status),
              statusIcon: toAjoutAdIconAsset(ad.status),
            ),
          )
          .toList(),
      email: email ?? '',
    );
  }
}

class AdNonActivableDisplayModel extends Equatable {
  final String name;
  final String statusLabel;
  final String statusIcon;

  @override
  List<Object?> get props => [name, statusLabel, statusIcon];

  const AdNonActivableDisplayModel({
    required this.name,
    required this.statusLabel,
    required this.statusIcon,
  });
}
