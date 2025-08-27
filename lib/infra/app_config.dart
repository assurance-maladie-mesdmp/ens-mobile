/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:ens_plugin/trust_commander/trust_commander_bridge.dart';

class AppConfig {
  final AppConfigName configName;
  final OpenidConfig openidConfig;
  final String bffBaseUrl;
  final String bffEnrolementUrl;
  final String customUriScheme;
  final String overrideBffBaseUrl;
  final String overrideBffEnrolementUrl;
  final String franceConnectPlusBaseUrl;
  final String overrideBffToken;
  final int remoteConfigMaxAgeInMinutes;
  final AtInternetTrackerConfig atInternetTrackerConfig;
  final TrustCommanderServiceConfig trustCommanderServiceConfig;
  final bool enableNirGeneration;

  AppConfig({
    required this.configName,
    required this.bffBaseUrl,
    required this.bffEnrolementUrl,
    required this.openidConfig,
    required this.customUriScheme,
    required this.overrideBffBaseUrl,
    required this.overrideBffEnrolementUrl,
    required this.franceConnectPlusBaseUrl,
    required this.overrideBffToken,
    required this.remoteConfigMaxAgeInMinutes,
    required this.atInternetTrackerConfig,
    required this.trustCommanderServiceConfig,
    this.enableNirGeneration = false,
  });

/*@override
  String toString() {
    return '''
    AppConfig{configName: $configName, bffBaseUrl: $bffBaseUrl, openidConfig: $openidConfig, customUriScheme: $customUriScheme, 
    overrideBffBaseUrl: $overrideBffBaseUrl, overrideBffToken: $overrideBffToken, websiteUrl: $websiteUrl, 
    parametersUrl: $parametersUrl, maladiesUrl: $maladiesUrl, accessibilityInfosUrl: $accessibilityInfosUrl, 
    cguUrl: $cguUrl, privacyInfosUrl: $privacyInfosUrl, accountActivationUrl: $accountActivationUrl, helpUrl : $helpUrl,
    historiqueSoinsUrl: $historiqueSoinsUrl, historiqueActiviteUrl: $historiqueActiviteUrl,
    remoteConfigMaxAgeInMinutes: $remoteConfigMaxAgeInMinutes, cmsUrl: $cmsUrl, atInternetTrackerConfig: $atInternetTrackerConfig}''';
  }*/
}

enum AppConfigName {
  DEVELOPER,
  INT,
  INT_NEXT,
  LOCAL,
  PPROD,
  PPROD1,
  PPROD2,
  PROD,
  REC,
  RECBB,
  SECURITE,
}

class OpenidConfig {
  final String authorizationEndpoint;
  final String tokenEndpoint;
  final String endSessionEndpoint;
  final List<String> scopes;
  final String clientId;
  final String redirectUrl;

  OpenidConfig({
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    required this.endSessionEndpoint,
    required this.scopes,
    required this.clientId,
    required this.redirectUrl,
  });

  @override
  String toString() {
    return 'OpenidConfig{authorizationEndpoint: $authorizationEndpoint, tokenEndpoint: $tokenEndpoint, endSessionEndpoint: $endSessionEndpoint, scopes: $scopes, clientId: $clientId, redirectUrl: $redirectUrl}';
  }
}
