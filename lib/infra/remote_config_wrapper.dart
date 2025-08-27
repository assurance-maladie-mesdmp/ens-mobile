/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';

class RemoteConfigWrapper {
  static const KEY_MIN_VERSION = 'MIN_VERSION';
  static const KEY_URLS = 'URLS';
  static const KEY_PASSWORDLESS_BLACKLIST = 'PASSWORDLESS_BLACKLIST';
  static const KEY_INACTIVITY_TIMEOUT = 'INACTIVITY_TIMEOUT';
  static const KEY_NEW_FEATURES_BOTTOM_SHEET = 'NEW_FEATURES_BOTTOM_SHEET';
  static const KEY_FF_CATALOGUE_SERVICES_SYNCHRO_ENABLED = 'ff_catalogue_services_synchro_enabled';
  static const KEY_FF_AGENDA_ENABLED = 'ff_agenda_enabled';
  static const KEY_FF_CONSENTEMENT_EXTRACTION_DONNEES = 'ff_consentement_extraction';
  static const KEY_FF_RECOMMANDER_APP = 'ff_recommander_app';
  static const KEY_FF_SCAN_CARTE_VITALE = 'ff_scan_carte_vitale';
  static const KEY_FF_FRANCE_CONNECT_PLUS = 'ff_france_connect_plus';
  static const KEY_FF_AIDANTS_AIDES = 'ff_aidants_aides';
  static const KEY_FF_PS_ROLE_SFR_PC = 'ff_ps_role_sfr_pc';
  static const KEY_FF_INC_RECO_ENFANT = 'ff_inc_reco_enfant';
  static const KEY_FF_ENTOURAGE_ET_VOLONTES = 'ff_entourage_et_volontes';
  static const KEY_FF_SIGNALEMENT = 'ff_signalement';
  static const KEY_FF_SUGGESTIONS_IDENTIFIANTS = 'ff_suggestions_identifiants';
  static const KEY_FF_REFONTE_PARAMETRES = 'ff_parametres';
  static const KEY_FF_PREVENTION_PERSONNALISEE = 'ff_prevention_personnalisee';

  final int _maxAgeInMinutes;

  FirebaseRemoteConfig get _remoteConfig => FirebaseRemoteConfig.instance;

  RemoteConfigWrapper(this._maxAgeInMinutes);

  Future<void> init() async {
    await _remoteConfig.setDefaults(
      {
        KEY_MIN_VERSION: '',
        KEY_FF_CATALOGUE_SERVICES_SYNCHRO_ENABLED: false,
        KEY_FF_AGENDA_ENABLED: false,
        KEY_PASSWORDLESS_BLACKLIST: '{"blacklistedDevicesOrVersions": []}',
        KEY_FF_CONSENTEMENT_EXTRACTION_DONNEES: false,
        KEY_FF_RECOMMANDER_APP: false,
        KEY_FF_SCAN_CARTE_VITALE: false,
        KEY_FF_FRANCE_CONNECT_PLUS: false,
        KEY_FF_AIDANTS_AIDES: false,
        KEY_FF_PS_ROLE_SFR_PC: false,
        KEY_FF_INC_RECO_ENFANT: false,
        KEY_FF_ENTOURAGE_ET_VOLONTES: false,
        KEY_FF_SIGNALEMENT: false,
        KEY_FF_SUGGESTIONS_IDENTIFIANTS: false,
        KEY_FF_REFONTE_PARAMETRES: false,
        KEY_FF_PREVENTION_PERSONNALISEE: false,
      },
    );
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: Duration(
          minutes: _maxAgeInMinutes,
        ),
      ),
    );
    try {
      await _remoteConfig.fetchAndActivate();
    } catch (_) {}
  }

  String getMinimumVersionName() => _remoteConfig.getString(KEY_MIN_VERSION);

  Map<String, String> getUrls() {
    final decodedJson = jsonDecode(_remoteConfig.getString(KEY_URLS)) as Map<String, dynamic>;
    final Map<String, String> urls = {};

    decodedJson.forEach((key, value) {
      if (value is String) {
        urls[key] = value;
      }
    });
    return urls;
  }

  bool isEnabled(Feature feature) {
    switch (feature) {
      case Feature.catalogueDeServiceSynchro:
        return _remoteConfig.getBool(KEY_FF_CATALOGUE_SERVICES_SYNCHRO_ENABLED);
      case Feature.agenda:
        return _remoteConfig.getBool(KEY_FF_AGENDA_ENABLED);
      case Feature.consentementExtractionDonnees:
        return _remoteConfig.getBool(KEY_FF_CONSENTEMENT_EXTRACTION_DONNEES);
      case Feature.recommanderApp:
        return _remoteConfig.getBool(KEY_FF_RECOMMANDER_APP);
      case Feature.scanCarteVitale:
        return _remoteConfig.getBool(KEY_FF_SCAN_CARTE_VITALE);
      case Feature.franceConnectPlus:
        return _remoteConfig.getBool(KEY_FF_FRANCE_CONNECT_PLUS);
      case Feature.aidantsAides:
        return _remoteConfig.getBool(KEY_FF_AIDANTS_AIDES);
      case Feature.psRoleSfrPc:
        return _remoteConfig.getBool(KEY_FF_PS_ROLE_SFR_PC);
      case Feature.incRecoEnfant:
        return _remoteConfig.getBool(KEY_FF_INC_RECO_ENFANT);
      case Feature.entourageEtVolontes:
        return _remoteConfig.getBool(KEY_FF_ENTOURAGE_ET_VOLONTES);
      case Feature.signalement:
        return _remoteConfig.getBool(KEY_FF_SIGNALEMENT);
      case Feature.suggestionsIdentifiants:
        return _remoteConfig.getBool(KEY_FF_SUGGESTIONS_IDENTIFIANTS);
      case Feature.refonteParametres:
        return _remoteConfig.getBool(KEY_FF_REFONTE_PARAMETRES);
      case Feature.preventionPersonnalisee:
        return _remoteConfig.getBool(KEY_FF_PREVENTION_PERSONNALISEE);
    }
  }

  List<dynamic>? getNewFeatures() {
    final decodedJson = jsonDecode(_remoteConfig.getString(KEY_NEW_FEATURES_BOTTOM_SHEET)) as Map<String, dynamic>;
    final newFeatures = decodedJson['features'];
    if (newFeatures is List<dynamic>) {
      return newFeatures;
    }
    return null;
  }

  List<String>? getBlacklistedOSVersions() {
    final versionsWithoutPasswordless =
        jsonDecode(_remoteConfig.getString(KEY_PASSWORDLESS_BLACKLIST)) as Map<String, dynamic>;
    final blacklistedOSVersions = versionsWithoutPasswordless['blacklistedOSVersions'];
    if (blacklistedOSVersions is List) {
      return blacklistedOSVersions.map((element) => element is String ? element : null).nonNulls.toList();
    }
    return null;
  }

  List<String>? getBlacklistedModels() {
    final versionsWithoutPasswordless =
        jsonDecode(_remoteConfig.getString(KEY_PASSWORDLESS_BLACKLIST)) as Map<String, dynamic>;
    final blacklistedModels = versionsWithoutPasswordless['blacklistedModels'];
    if (blacklistedModels is List) {
      return blacklistedModels.map((element) => element is String ? element : null).nonNulls.toList();
    }
    return null;
  }

  List<String>? getBlacklistedManufacturers() {
    final versionsWithoutPasswordless =
        jsonDecode(_remoteConfig.getString(KEY_PASSWORDLESS_BLACKLIST)) as Map<String, dynamic>;
    final blacklistedManufacturers = versionsWithoutPasswordless['blacklistedManufacturers'];
    if (blacklistedManufacturers is List) {
      return blacklistedManufacturers.map((element) => element is String ? element : null).nonNulls.toList();
    }
    return null;
  }

  List<String>? getBlacklisted(String listName) {
    final versionsWithoutPasswordless =
        jsonDecode(_remoteConfig.getString(KEY_PASSWORDLESS_BLACKLIST)) as Map<String, dynamic>;
    final blacklistedList = versionsWithoutPasswordless[listName];
    if (blacklistedList is List) {
      return blacklistedList.map((blackListed) => blackListed is String ? blackListed : null).nonNulls.toList();
    }
    return null;
  }

  int getInactivityTimeout() {
    final fromRemoteConfig = _remoteConfig.getInt(KEY_INACTIVITY_TIMEOUT);
    return fromRemoteConfig > 0 ? fromRemoteConfig : 120;
  }
}

enum Feature {
  catalogueDeServiceSynchro,
  agenda,
  consentementExtractionDonnees,
  recommanderApp,
  scanCarteVitale,
  franceConnectPlus,
  aidantsAides,
  psRoleSfrPc,
  incRecoEnfant,
  entourageEtVolontes,
  signalement,
  suggestionsIdentifiants,
  refonteParametres,
  preventionPersonnalisee;

  bool isEnabled() {
    return EnsModuleContainer.commonInjector?.getRemoteConfigWrapper().isEnabled(this) ?? false;
  }
}
