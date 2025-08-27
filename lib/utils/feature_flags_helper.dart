/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';

RemoteConfigWrapper? _remoteConfigWrapper() => EnsModuleContainer.commonInjector?.getRemoteConfigWrapper();

bool get isAgendaEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.agenda) ?? false;
}

bool get isCatalogueDeServiceSynchroEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.catalogueDeServiceSynchro) ?? false;
}

bool get isConsentementExtractionDonneesEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.consentementExtractionDonnees) ?? false;
}

bool get isRecommanderAppEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.recommanderApp) ?? false;
}

bool get isScanCarteVitaleEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.scanCarteVitale) ?? false;
}

bool get isFranceConnectPlusEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.franceConnectPlus) ?? false;
}

bool get isPsRoleSfrPcEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.psRoleSfrPc) ?? false;
}

bool get isAidantsAidesEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.aidantsAides) ?? false;
}

bool get isRefonteEntourageEtVolontesEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.entourageEtVolontes) ?? false;
}

bool get isSignalementEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.signalement) ?? false;
}

bool get isSuggestionsIdentifiantsEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.suggestionsIdentifiants) ?? false;
}

bool get isRefonteParametresEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.refonteParametres) ?? false;
}

bool get isPreventionPersonnaliseeEnabled {
  return _remoteConfigWrapper()?.isEnabled(Feature.preventionPersonnalisee) ?? false;
}
