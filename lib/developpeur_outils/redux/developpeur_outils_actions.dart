/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'developpeur_outils_redux.dart';

class ResetSecureStorage {}

class ResetSharedPreferences {}

class GetDeveloppeurMenuInformation {}

class LogAnalyticsAction {
  final EnsTag tag;

  LogAnalyticsAction({required this.tag});
}

class ClearHistoriqueAnalyticsAction {}

class _ProcessDeviceInformation {
  final String deviceVersion;
  final String deviceModel;
  final String deviceManufacture;

  const _ProcessDeviceInformation({
    required this.deviceVersion,
    required this.deviceModel,
    required this.deviceManufacture,
  });
}

class _ProcessShouldSkipPasswordless {
  final bool shouldSkipPasswordlessForActivation;
  final bool shouldSkipPasswordlessForConnexion;

  const _ProcessShouldSkipPasswordless({
    required this.shouldSkipPasswordlessForActivation,
    required this.shouldSkipPasswordlessForConnexion,
  });
}
