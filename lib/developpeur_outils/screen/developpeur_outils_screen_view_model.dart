/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class DeveloppeurOutilsScreenViewModel extends Equatable {
  final void Function() clearSecureStorage;
  final void Function() clearSharedPreferences;
  final DeviceInformationDisplayModel deviceInformationDisplayModel;

  const DeveloppeurOutilsScreenViewModel._({
    required this.clearSecureStorage,
    required this.clearSharedPreferences,
    required this.deviceInformationDisplayModel,
  });

  factory DeveloppeurOutilsScreenViewModel(Store<EnsInitialState> store) {
    final developpeurOutilsState = store.state.developpeurOutilsState;

    return DeveloppeurOutilsScreenViewModel._(
      clearSecureStorage: () => store.dispatch(ResetSecureStorage()),
      clearSharedPreferences: () => store.dispatch(ResetSharedPreferences()),
      deviceInformationDisplayModel: DeviceInformationDisplayModel(
        deviceVersion: developpeurOutilsState.deviceVersion,
        deviceModel: developpeurOutilsState.deviceModel,
        deviceManufacture: developpeurOutilsState.deviceManufacture,
        passwordlessForActivation: developpeurOutilsState.shouldSkipPasswordlessForActivation ? 'Non' : 'Oui',
        passwordlessForConnexion: developpeurOutilsState.shouldSkipPasswordlessForConnexion ? 'Non' : 'Oui',
      ),
    );
  }

  @override
  List<Object?> get props => [deviceInformationDisplayModel];
}

class DeviceInformationDisplayModel extends Equatable {
  final String deviceVersion;
  final String deviceModel;
  final String deviceManufacture;
  final String passwordlessForActivation;
  final String passwordlessForConnexion;

  const DeviceInformationDisplayModel({
    required this.deviceVersion,
    required this.deviceModel,
    required this.deviceManufacture,
    required this.passwordlessForActivation,
    required this.passwordlessForConnexion,
  });

  @override
  List<Object?> get props => [
        deviceVersion,
        deviceModel,
        deviceManufacture,
        passwordlessForActivation,
        passwordlessForConnexion,
      ];
}
