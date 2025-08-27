/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'developpeur_outils_redux.dart';

class DeveloppeurOutilsState extends Equatable {
  final String deviceVersion;
  final String deviceModel;
  final String deviceManufacture;
  final bool shouldSkipPasswordlessForActivation;
  final bool shouldSkipPasswordlessForConnexion;
  final List<TagHistory> historiqueAnalytics;

  const DeveloppeurOutilsState({
    this.deviceVersion = '',
    this.deviceModel = '',
    this.deviceManufacture = '',
    this.shouldSkipPasswordlessForActivation = false,
    this.shouldSkipPasswordlessForConnexion = false,
    this.historiqueAnalytics = const [],
  });

  @override
  List<Object?> get props => [
        deviceVersion,
        deviceModel,
        deviceManufacture,
        shouldSkipPasswordlessForActivation,
        shouldSkipPasswordlessForConnexion,
        historiqueAnalytics,
      ];

  DeveloppeurOutilsState clone({
    String? deviceVersion,
    String? deviceModel,
    String? deviceManufacture,
    bool? shouldSkipPasswordlessForActivation,
    bool? shouldSkipPasswordlessForConnexion,
    List<TagHistory>? historiqueAnalytics,
  }) {
    return DeveloppeurOutilsState(
      deviceVersion: deviceVersion ?? this.deviceVersion,
      deviceModel: deviceModel ?? this.deviceModel,
      deviceManufacture: deviceManufacture ?? this.deviceManufacture,
      shouldSkipPasswordlessForActivation:
          shouldSkipPasswordlessForActivation ?? this.shouldSkipPasswordlessForActivation,
      shouldSkipPasswordlessForConnexion: shouldSkipPasswordlessForConnexion ?? this.shouldSkipPasswordlessForConnexion,
      historiqueAnalytics: historiqueAnalytics ?? this.historiqueAnalytics,
    );
  }
}
