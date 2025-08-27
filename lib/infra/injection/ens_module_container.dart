/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:ferry/ferry.dart' as ferry;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:fr_cnamts_ens/agenda/data/agenda_repository.dart';
import 'package:fr_cnamts_ens/aidants_aides/data/aidants_aides_repository.dart';
import 'package:fr_cnamts_ens/aide/data/aide_faq_repository.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/data/nous_contacter_repository.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/infra/analytics_history.dart';
import 'package:fr_cnamts_ens/analytics/infra/atinternet_analytics.dart';
import 'package:fr_cnamts_ens/auth/domain/auth_interactor.dart';
import 'package:fr_cnamts_ens/auth/infra/openid_wrapper.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/data/ajout_ad_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/data/ayants_droits_repository.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/data/nouvelles_fonctionnalites_repository.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/data/recommander_app_repository.dart';
import 'package:fr_cnamts_ens/catalogue_services/data/catalogue_services_repository.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/data/catalogue_services_consentements_repository.dart';
import 'package:fr_cnamts_ens/clipboard/domain/data/clipboard_wrapper.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/data/consentement_extraction_donnees_sante_repository.dart';
import 'package:fr_cnamts_ens/covid/data/offline_covid_certificate_repository.dart';
import 'package:fr_cnamts_ens/dechiffrement/data/dechiffrement_repository.dart';
import 'package:fr_cnamts_ens/developpeur_outils/data/developpeur_outils_repository.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_interactor.dart';
import 'package:fr_cnamts_ens/enrolement/data/enrolement_repository.dart';
import 'package:fr_cnamts_ens/files/data/file_share_helper.dart';
import 'package:fr_cnamts_ens/files/data/file_storage.dart';
import 'package:fr_cnamts_ens/files/data/pdf_generator.dart';
import 'package:fr_cnamts_ens/files/domain/file_preprocessor.dart';
import 'package:fr_cnamts_ens/files/domain/image_shrinker.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_agenda_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_aidants_aides_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_aide_faq_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_ajout_ad_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_allergies_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_antecedents_familiaux_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_app_rating_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_ayants_droits_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_bilan_de_prevention_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_catalogue_services_consentements_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_catalogue_services_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_cgu_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_consentement_extraction_donnees_sante_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_consentement_ps_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_consentements_urgence_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_courbes_reference_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_create_entourage_contact_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_dechiffrement_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_directives_anticipees_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_document_interactor.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_documents_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_enrolled_devices_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_etablissements_de_sante_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_groupe_sanguin_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_habitudes_vie_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_handicaps_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_helpdesk_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_historique_activites_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_incitation_recommandations_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_links_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_maladies_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_matrice_habilitation_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_messagerie_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_mesures_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_mon_histoire_de_sante_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_notification_center_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_notification_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_nous_contacter_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_onboarding_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_partager_profil_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_preference_notification_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_prevention_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_professional_activities_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_professionnels_de_sante_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_raccourcis_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_search_communes_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_search_es_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_search_ps_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_secure_storage_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_synthese_pml_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_synthese_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_traces_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_traitements_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_unconcerned_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_user_data_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_user_domain_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_user_repository.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_vaccinations_repository.dart';
import 'package:fr_cnamts_ens/helpdesk/data/helpdesk_repository.dart';
import 'package:fr_cnamts_ens/home/data/ouvrant_droit_repository.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/data/ens_authenticated_client.dart';
import 'package:fr_cnamts_ens/infra/data/graphql_client_factory.dart';
import 'package:fr_cnamts_ens/infra/data/http/intercepted_client.dart';
import 'package:fr_cnamts_ens/infra/data/http/interceptors/ens_authorization_interceptor.dart';
import 'package:fr_cnamts_ens/infra/data/http/interceptors/ens_session_interceptor.dart';
import 'package:fr_cnamts_ens/infra/data/http/interceptors/logging_interceptor.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/override_configuration_repository.dart';
import 'package:fr_cnamts_ens/infra/passwordless_blacklist.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/infra/urls_config.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_clipboard_wrapper.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_info_wrapper.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';
import 'package:fr_cnamts_ens/interruption_services/data/interruption_services_repository.dart';
import 'package:fr_cnamts_ens/link/data/links_repository.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/messagerie_repository.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_view_model_helper.dart';
import 'package:fr_cnamts_ens/messages_pannes/data/messages_pannes_repository.dart';
import 'package:fr_cnamts_ens/notification_center/data/notification_center_repository.dart';
import 'package:fr_cnamts_ens/notifications/data/notification_repository.dart';
import 'package:fr_cnamts_ens/onboarding/data/onboarding_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/data/consentements_ps_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/data/matrice_habilitation_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/data/enrolled_devices_repository.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_repository.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/data/historique_activites_repository.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/data/preference_notification_repository.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/infra/trust_commander_privacy.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/allergies_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/data/antecedents_familiaux_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/data/bilan_de_prevention_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/data/courbes_reference_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/data/directives_anticipees_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/documents_links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/data/entourage_contact_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/data/groupe_sanguin_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/data/handicaps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/hospitalisation_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/maladies_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/data/mesures_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/data/mon_histoire_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/data/search_communes_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/etablissements_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/professionnels_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/data/professional_activities_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/data/search_ps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/data/add_item_for_first_time_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/data/synthese_pml_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/data/unconcerned_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/data/vaccinations_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/data/synthese_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/raccourcis/data/raccourcis_repository.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository.dart';
import 'package:fr_cnamts_ens/search_es/data/search_es_repository.dart';
import 'package:fr_cnamts_ens/secure_storage/data/secure_storage_repository.dart';
import 'package:fr_cnamts_ens/traces/data/traces_repository.dart';
import 'package:fr_cnamts_ens/update/data/app_update_repository.dart';
import 'package:fr_cnamts_ens/update/domain/app_update_interactor.dart';
import 'package:fr_cnamts_ens/user/app_rating/data/app_rating_repository.dart';
import 'package:fr_cnamts_ens/user/cgu/data/cgu_repository.dart';
import 'package:fr_cnamts_ens/user/data/offline_user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_repository.dart';
import 'package:fr_cnamts_ens/utils/file_helper.dart';
import 'package:fr_cnamts_ens/utils/random_generator.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class InitialStoreDependant {
  void initForInitialStore(Store<EnsInitialState> store);
}

abstract interface class EnsStoreDependant {
  void initForEnsStore(Store<EnsState> store);
}

class CommonInjector {
  final Injector _injector;

  CommonInjector(this._injector);

  Map<String, String>? getProxy() => _injector.get<Map<String, String>?>(key: 'proxy');

  http.BaseClient getBaseClient() => _injector.get<http.BaseClient>(key: 'base');

  http.BaseClient getCmsClient() => _injector.get<http.BaseClient>(key: 'cms');

  JsonDataSource getJsonHttpDataSource() => _injector.get<JsonDataSource>();

  FileHelper getFileHelper() => _injector.get<FileHelper>();

  ReceiveSharingHelper getReceiveSharingHelper() => _injector.get<ReceiveSharingHelper>();

  PackageInfo getPackageInfo() => _injector.get<PackageInfo>();

  AppConfig getAppConfig() => _injector.get<AppConfig>();

  UrlsConfig getUrlsConfig() => _injector.get<UrlsConfig>();

  RemoteConfigWrapper getRemoteConfigWrapper() => _injector.get<RemoteConfigWrapper>();

  PasswordlessBlacklist getPasswordlessBlacklist() => _injector.get<PasswordlessBlacklist>();

  DeviceInfoWrapper getDeviceInfoWrapper() => _injector.get<DeviceInfoWrapper>();

  SharedPreferences getSharedPreferences() => _injector.get<SharedPreferences>();

  UserRepository getUserRepository() => _injector.get<UserRepository>();

  OverrideConfigurationRepository getOverrideConfigurationRepository() =>
      _injector.get<OverrideConfigurationRepository>();

  OpenidWrapper getOpenidWrapper() => _injector.get<OpenidWrapper>();

  AuthInteractor getAuthInteractor() => _injector.get<AuthInteractor>();

  AppUpdateInteractor getUpdateInteractor() => _injector.get<AppUpdateInteractor>();

  IEnsAnalytics getEnsAnalytics() => _injector.get<IEnsAnalytics>();

  IEnsPrivacy getEnsPrivacy() => _injector.get<IEnsPrivacy>();

  ClipboardWrapper getClipboardWrapper() => _injector.get<ClipboardWrapper>();

  IOfflineCovidCertificateRepository getOfflineCovidCertificateRepository() =>
      _injector.get<OfflineCovidCertificateRepository>();

  IMessagesPannesRepository getMessagesPannesRepository() => _injector.get<IMessagesPannesRepository>();

  IInterruptionServiceRepository getInterruptionServiceRepository() => _injector.get<IInterruptionServiceRepository>();

  IOfflineUserDataRepository getOfflineUserDataRepository() => _injector.get<IOfflineUserDataRepository>();

  IDeveloppeurOutilsRepository getDeveloppeurOutilsRepository() => _injector.get<IDeveloppeurOutilsRepository>();

  GlobalKey<NavigatorState> getNavigatorKey() => _injector.get<GlobalKey<NavigatorState>>();

  IEnrolementRepository getEnrolementRepository() => _injector.get<IEnrolementRepository>();

  List<InitialStoreDependant> getInitialStoreDependants() => _injector.get<List<InitialStoreDependant>>();

  IAnalyticsHook getAnalyticsHook() => _injector.get<IAnalyticsHook>();

  IRandomGenerator getRandomGenerator() => _injector.get<IRandomGenerator>();

  LogoutWrapper getLogoutWrapper() => _injector.get<LogoutWrapper>();
}

class AppInjector extends CommonInjector {
  final Injector _appInjector;

  AppInjector(this._appInjector, Injector commonInjector) : super(commonInjector);

  bool isGuestMode() => _appInjector.name == 'guest';

  IDocumentsRepository getDocumentsRepository() => _appInjector.get<IDocumentsRepository>();

  IMaladiesRepository getMaladiesRepository() => _appInjector.get<IMaladiesRepository>();

  IAntecedentsFamiliauxRepository getAntecedentsFamiliauxRepository() =>
      _appInjector.get<IAntecedentsFamiliauxRepository>();

  IHandicapsRepository getHandicapsRepository() => _appInjector.get<IHandicapsRepository>();

  INouvellesFonctionnalitesRepository getNouvellesFonctionnalitesRepository() =>
      _injector.get<INouvellesFonctionnalitesRepository>();

  ITraitementsRepository getTraitementsRepository() => _appInjector.get<ITraitementsRepository>();

  IUserDataRepository getUserDataRepository() => _appInjector.get<IUserDataRepository>();

  IHospitalisationsRepository getHospitalisationsRepository() => _appInjector.get<IHospitalisationsRepository>();

  IAllergiesRepository getAllergiesRepository() => _appInjector.get<IAllergiesRepository>();

  IVaccinationsRepository getVaccinationsRepository() => _appInjector.get<IVaccinationsRepository>();

  IHabitudesDeVieRepository getHabitudesVieRepository() => _appInjector.get<IHabitudesDeVieRepository>();

  ISynthesePmlRepository getSynthesePmlRepository() => _appInjector.get<ISynthesePmlRepository>();

  FileStorage getFileStorage() => _appInjector.get<FileStorage>();

  IDocumentInteractor getDocumentInteractor() => _appInjector.get<IDocumentInteractor>();

  IDocumentsLinksInteractor getDocumentsLinksInteractor() => _appInjector.get<IDocumentsLinksInteractor>();

  IHospitalisationInteractor getHospitalisationInteractor() => _appInjector.get<IHospitalisationInteractor>();

  IMaladiesInteractor getMaladiesInteractor() => _appInjector.get<IMaladiesInteractor>();

  FilePreprocessor getFilePreprocessor() => _appInjector.get<FilePreprocessor>();

  PdfGenerator getPdfGenerator() => _appInjector.get<PdfGenerator>();

  IMessagerieRepository getMessagerieRepository() => _appInjector.get<IMessagerieRepository>();

  IConsentementsUrgenceRepository getConsentementsUrgenceRepository() =>
      _appInjector.get<IConsentementsUrgenceRepository>();

  MessagerieViewModelHelper getMessagerieViewModelHelper() => _appInjector.get<MessagerieViewModelHelper>();

  IConsentementsPsRepository getConsentementsPsRepository() => _appInjector.get<IConsentementsPsRepository>();

  IAyantsDroitsRepository getAyantsDroitsRepository() => _appInjector.get<IAyantsDroitsRepository>();

  IMesuresRepository getMesuresRepository() => _appInjector.get<IMesuresRepository>();

  ICourbesReferenceRepository getCourbesReferenceRepository() => _appInjector.get<ICourbesReferenceRepository>();

  ICguRepository getCguRepository() => _appInjector.get<ICguRepository>();

  IHistoriqueActivitesRepository getHistoriqueActivitesRepository() =>
      _appInjector.get<IHistoriqueActivitesRepository>();

  IDirectivesAnticipeesRepository getDirectivesAnticipeesRepository() =>
      _appInjector.get<IDirectivesAnticipeesRepository>();

  IPreventionRepository getPreventionRepository() => _appInjector.get<IPreventionRepository>();

  IMatriceHabilitationRepository getMatriceHabilitationRepository() =>
      _appInjector.get<IMatriceHabilitationRepository>();

  ISearchCommunesRepository getSearchCityRepository() => _appInjector.get<ISearchCommunesRepository>();

  ISearchPsRepository getRecherchePsRepository() => _appInjector.get<ISearchPsRepository>();

  ISearchEsRepository getSearchEsRepository() => _appInjector.get<ISearchEsRepository>();

  IProfessionalActivitiesRepository getProfessionalActivitiesRepository() =>
      _appInjector.get<IProfessionalActivitiesRepository>();

  IAppRatingRepository getAppRatingRepository() => _appInjector.get<IAppRatingRepository>();

  IUnconcernedRepository getUnconcernedRepository() => _appInjector.get<IUnconcernedRepository>();

  IProfessionnelsDeSanteRepository getProfessionnelsDeSanteRepository() =>
      _appInjector.get<IProfessionnelsDeSanteRepository>();

  IMonHistoireDeSanteRepository getMonHistoireDeSanteRepository() => _appInjector.get<IMonHistoireDeSanteRepository>();

  IEtablissementDeSanteRepository getHealthcareEntitiesRepository() =>
      _appInjector.get<IEtablissementDeSanteRepository>();

  INotificationCenterRepository getNotificationCenterRepository() => _appInjector.get<INotificationCenterRepository>();

  ICatalogueServicesRepository getCatalogueServicesRepository() => _appInjector.get<ICatalogueServicesRepository>();

  ICatalogueServicesConsentementsRepository getCatalogueServicesConsentementsRepository() =>
      _appInjector.get<ICatalogueServicesConsentementsRepository>();

  INotificationRepository getNotificationRepository() => _appInjector.get<INotificationRepository>();

  IAppUpdateRepository getAppUpdateRepository() => _appInjector.get<IAppUpdateRepository>();

  IEntourageContactRepository getCreateEntourageContactRepository() => _appInjector.get<IEntourageContactRepository>();

  IAgendaRepository getAgendaRepository() => _appInjector.get<IAgendaRepository>();

  IEnrolledDevicesRepository getEnrolledDevicesRepository() => _appInjector.get<IEnrolledDevicesRepository>();

  ILinksRepository getLinksRepository() => _appInjector.get<ILinksRepository>();

  ILinksInMemoryInteractor getLinksInMemoryRepository() => _appInjector.get<ILinksInMemoryInteractor>();

  ITracesRepository getTracesRepository() => _appInjector.get<ITracesRepository>();

  ISecureStorageRepository getSecureStorageRepository() => _appInjector.get<ISecureStorageRepository>();

  IHelpdeskRepository getHelpdeskRepository() => _appInjector.get<IHelpdeskRepository>();

  IOuvrantDroitRepository getOuvrantDroitRepository() => _appInjector.get<IOuvrantDroitRepository>();

  IRecommandationsRepository getRecommandationsRepository() => _appInjector.get<IRecommandationsRepository>();

  IQuestionnaireAgesClesRepository getAgesClesRepository() => _appInjector.get<IQuestionnaireAgesClesRepository>();

  IBilanDePreventionRepository getBilanDePreventionRepository() => _appInjector.get<IBilanDePreventionRepository>();

  IAideFaqRepository getAideFaqRepository() => _appInjector.get<IAideFaqRepository>();

  ISyntheseQuestionnaireAgesClesRepository getSyntheseQuestionnaireAgesClesRepository() =>
      _appInjector.get<ISyntheseQuestionnaireAgesClesRepository>();

  IPreferenceNotificationRepository getPreferenceNotificationRepository() =>
      _appInjector.get<IPreferenceNotificationRepository>();

  IAddItemForFirstTimeRepository getAddVaccinationFirstTimeRepository() =>
      _injector.get<IAddItemForFirstTimeRepository>();

  IDechiffrementRepository getDechiffrementRepository() => _appInjector.get<IDechiffrementRepository>();

  IPartagerProfilRepository getPartagerProfilRepository() => _appInjector.get<IPartagerProfilRepository>();

  IAjoutAdRepository getAjoutAdRepository() => _appInjector.get<IAjoutAdRepository>();

  INousContacterRepository getNousContacterRepository() => _appInjector.get<INousContacterRepository>();

  IOnboardingRepository getOnboardingRepository() => _appInjector.get<IOnboardingRepository>();

  IRaccourcisRepository getRaccourcisRepository() => _appInjector.get<IRaccourcisRepository>();

  IConsentementExtractionDonneesSanteRepository getConsentementExtractionDonneesSanteRepository() =>
      _appInjector.get<IConsentementExtractionDonneesSanteRepository>();

  IRecommanderAppRepository getRecommanderAppRepository() => _appInjector.get<IRecommanderAppRepository>();

  IAidantsAidesRepository getAidantsAidesRepository() => _appInjector.get<IAidantsAidesRepository>();

  IGroupeSanguinRepository getGroupeSanguinRepository() => _appInjector.get<IGroupeSanguinRepository>();

  List<EnsStoreDependant> getEnsStoreDependants() => _appInjector.get<List<EnsStoreDependant>>();

  IAllergiesInteractor getAllergiesInteractor() => _appInjector.get<IAllergiesInteractor>();
}

class GuestAppInjector extends AppInjector {
  GuestAppInjector(super.appInjector, super.commonInjector);
}

class EnrolementAppInjector extends CommonInjector {
  EnrolementAppInjector(super.commonInjector);
}

class EnsModuleContainer {
  static CommonInjector? _commonInjector;
  static AppInjector? _authenticatedInjector;
  static AppInjector? _guestInjector;
  static late AppInjector _currentInjector;

  static CommonInjector? get commonInjector => _commonInjector;

  static AppInjector get currentInjector => _currentInjector;

  @Deprecated('should not be used in production code')
  // ignore: use_setters_to_change_properties
  static void setCommonInjectorForTest(Injector injector) {
    _commonInjector = CommonInjector(injector);
    _currentInjector = AppInjector(injector, injector);
  }

  static CommonInjector getCommonInjector(
    AppConfig appConfig,
    UrlsConfig urlsConfig,
    SharedPreferences prefs,
    PackageInfo packageInfo,
    AtInternetTracker tracker,
    TrustCommanderPrivacy trustCommanderPrivacy,
    Map<String, String>? proxy,
  ) {
    if (_commonInjector == null) {
      final injector = Injector('common');

      final List<InitialStoreDependant> initialStoreDependants = [];

      injector.map<Map<String, String>?>((injector) => proxy, key: 'proxy');

      injector.map<IRandomGenerator>((injector) => RandomGenerator());

      injector.map<http.BaseClient>(
        (injector) {
          final proxy = injector.get<Map<String, String>?>(key: 'proxy');
          final httpClient = HttpClient()
            ..findProxy = ((uri) => proxy != null ? 'PROXY ${proxy['host']}:${proxy['port']}' : 'DIRECT')
            ..connectionTimeout = const Duration(seconds: 20);
          return IOClient(httpClient);
        },
        key: 'base',
      );

      injector.map<http.BaseClient>(
        (injector) {
          return InterceptedClient(
            interceptors: [
              LoggingInterceptor(),
            ],
            client: injector.get<http.BaseClient>(key: 'base'),
          );
        },
        isSingleton: true,
        key: 'cms',
      );

      injector.map<http.BaseClient>(
        (injector) {
          return InterceptedClient(
            interceptors: [
              EnsAuthorizationInterceptor(
                openidWrapper: injector.get<OpenidWrapper>(),
                packageInfo: injector.get<PackageInfo>(),
                logoutWrapper: injector.get<LogoutWrapper>(),
                isEnrolement: true,
              ),
              EnsSessionInterceptor(),
              LoggingInterceptor(),
            ],
            client: injector.get<http.BaseClient>(key: 'base'),
          );
        },
        isSingleton: true,
        key: 'enrolement',
      );

      injector.map<ferry.Client>(
        (injector) {
          final factory = GraphQlClientFactory(
            injector.get<AppConfig>(),
            injector.get<OverrideConfigurationRepository>(),
            injector.get<http.BaseClient>(key: 'enrolement'),
          );
          return factory.getFerryClient(isEnrolement: true);
        },
        isSingleton: true,
      );

      injector.map<Crashlytics>(
        (result) => CrashlyticsWithFirebase(FirebaseCrashlytics.instance),
      );

      injector.map<JsonDataSource>(
        (injector) => JsonDataSource(client: injector.get<http.BaseClient>(key: 'cms')),
      );

      injector.map<PackageInfo>((result) => packageInfo, isSingleton: true);

      injector.map<FileHelper>((result) => FileHelper(), isSingleton: true);

      injector.map<ReceiveSharingHelper>(
        (result) => ReceiveSharingHelper(),
        isSingleton: true,
      );

      injector.map<RemoteConfigWrapper>(
        (commonInjector) => RemoteConfigWrapper(appConfig.remoteConfigMaxAgeInMinutes),
        isSingleton: true,
      );

      injector.map<DeviceInfoWrapper>(
        (commonInjector) => DeviceInfoWrapperImpl(),
        isSingleton: true,
      );

      injector.map<PasswordlessBlacklist>(
        (commonInjector) => PasswordlessBlacklist(
          remoteConfig: injector.get<RemoteConfigWrapper>(),
          deviceInfo: injector.get<DeviceInfoWrapper>(),
        ),
        isSingleton: true,
      );

      injector.map<AppUpdateInteractor>(
        (injector) => AppUpdateInteractor(
          injector.get<RemoteConfigWrapper>(),
          injector.get<PackageInfo>(),
        ),
      );

      injector.map<AppConfig>((result) => appConfig, isSingleton: true);

      injector.map<UrlsConfig>((result) => urlsConfig, isSingleton: true);

      injector.map<SharedPreferences>(
        (commonInjector) => prefs,
        isSingleton: true,
      );

      injector.map<UserRepository>(
        (commonInjector) => UserRepository(),
        isSingleton: true,
      );

      injector.map<GuestUserRepository>(
        (commonInjector) => GuestUserRepository(),
        isSingleton: true,
      );

      injector.map<OverrideConfigurationRepository>(
        (injector) => OverrideConfigurationRepository(
          appConfig,
          injector.get<SharedPreferences>(),
        ),
        isSingleton: true,
      );

      injector.map<INouvellesFonctionnalitesRepository>(
        (injector) => NouvellesFonctionnalitesRepository(
          crashlytics: injector.get<Crashlytics>(),
          sharedPreferences: injector.get<SharedPreferences>(),
          cmsUrl: injector.get<UrlsConfig>().cmsUrl,
          jsonDataSource: injector.get<JsonDataSource>(),
          packageInfo: injector.get<PackageInfo>(),
        ),
        isSingleton: true,
      );

      injector.map<ITracesRepository>(
        (injector) => TracesRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      injector.map<FlutterAppAuth>((injector) => const FlutterAppAuth());

      injector.map<FlutterSecureStorage>(
        (injector) => const FlutterSecureStorage(),
      );

      injector.map<OpenidWrapper>(
        (commonInjector) => appConfig.configName != AppConfigName.LOCAL
            ? OpenidWrapperImpl(
                commonInjector.get<AppConfig>().openidConfig,
                commonInjector.get<FlutterAppAuth>(),
                commonInjector.get<FlutterSecureStorage>(),
              )
            : OpenidWrapperLocalImpl(
                commonInjector.get<OverrideConfigurationRepository>(),
              ),
        isSingleton: true,
      );

      injector.map<AuthInteractor>(
        (commonInjector) => AuthInteractor(
          commonInjector.get<OpenidWrapper>(),
          commonInjector.get<UserRepository>(),
          commonInjector.get<GuestUserRepository>(),
        ),
      );

      injector.map<IMessagesPannesRepository>(
        (commonInjector) => MessagesPannesRepository(
          commonInjector.get<JsonDataSource>(),
          commonInjector.get<UrlsConfig>(),
        ),
      );

      injector.map<IInterruptionServiceRepository>(
        (commonInjector) => InterruptionServiceRepository(
          commonInjector.get<JsonDataSource>(),
          commonInjector.get<UrlsConfig>(),
        ),
      );

      injector.map<IAddItemForFirstTimeRepository>(
        (injector) => AddItemForFirstTimeRepository(
          injector.get<SharedPreferences>(),
        ),
        isSingleton: true,
      );

      injector.map<DeviceSecureStorageWrapper>(
        (commonInjector) => DeviceSecureStorageImpl(commonInjector.get<FlutterSecureStorage>()),
      );

      injector.map<IOfflineUserDataRepository>(
        (commonInjector) => OfflineUserDataRepository(
          commonInjector.get<DeviceSecureStorageWrapper>(),
        ),
      );

      injector.map<IDeveloppeurOutilsRepository>(
        (commonInjector) => DeveloppeurOutilsRepository(
          commonInjector.get<DeviceSecureStorageWrapper>(),
          commonInjector.get<SharedPreferences>(),
        ),
      );

      final analyticsHistory = AnalyticsHistory();
      injector.map<IAnalyticsHook>(
        (injector) => analyticsHistory,
        isSingleton: true,
      );
      initialStoreDependants.add(analyticsHistory);

      injector.map<IEnsAnalytics>(
        (injector) => AtInternetAnalytics(tracker),
      );

      injector.map<IEnsPrivacy>((injector) => trustCommanderPrivacy);

      injector.map<ClipboardWrapper>((commonInjector) => DeviceClipboardWrapper());

      injector.map<OfflineCovidCertificateRepository>(
        (commonInjector) => OfflineCovidCertificateRepository(
          commonInjector.get<DeviceSecureStorageWrapper>(),
        ),
      );

      injector.map<GlobalKey<NavigatorState>>(
        (commonInjector) => GlobalKey<NavigatorState>(),
        isSingleton: true,
      );

      injector.map<IEnrolementRepository>(
        (injector) => EnrolementRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      final logoutHelper = LogoutWrapper();
      initialStoreDependants.add(logoutHelper);

      injector.map<LogoutWrapper>(
        (injector) => logoutHelper,
        isSingleton: true,
      );

      injector.map<List<InitialStoreDependant>>(
        (injector) => initialStoreDependants,
        isSingleton: true,
      );

      final result = CommonInjector(injector);
      _commonInjector = result;
    }
    return _commonInjector!;
  }

  static void initForAuthenticatedMode(CommonInjector commonInjector) {
    if (_authenticatedInjector == null) {
      final injector = Injector('authenticated');

      final List<EnsStoreDependant> ensStoreDependants = [commonInjector.getLogoutWrapper()];

      injector.map<http.BaseClient>(
        (injector) {
          return InterceptedClient(
            interceptors: [
              EnsAuthorizationInterceptor(
                openidWrapper: commonInjector.getOpenidWrapper(),
                packageInfo: commonInjector.getPackageInfo(),
                logoutWrapper: commonInjector.getLogoutWrapper(),
              ),
              EnsSessionInterceptor(),
              LoggingInterceptor(),
            ],
            client: commonInjector.getBaseClient(),
          );
        },
        isSingleton: true,
        key: 'graphql',
      );

      injector.map<ferry.Client>(
        (result) {
          final factory = GraphQlClientFactory(
            commonInjector.getAppConfig(),
            commonInjector.getOverrideConfigurationRepository(),
            injector.get<http.BaseClient>(key: 'graphql'),
          );
          return factory.getFerryClient();
        },
        isSingleton: true,
      );

      injector.map<IAppUpdateRepository>(
        (result) => Platform.isAndroid
            ? AppUpdateRepositoryForAndroid(false)
            : AppUpdateRepositoryForIOS(commonInjector.getUpdateInteractor()),
      );

      injector.map<IDocumentsRepository>(
        (result) => DocumentsRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IHandicapsRepository>(
        (result) => HandicapsRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<FileStorage>(
        (result) => FileStorage(
          result.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      injector.map<FileShareHelper>(
        (result) => FileShareHelper(result.get<Crashlytics>()),
        isSingleton: true,
      );

      injector.map<IDocumentInteractor>(
        (result) => DocumentInteractor(
          result.get<IDocumentsRepository>(),
          result.get<FileStorage>(),
          result.get<FileShareHelper>(),
        ),
      );

      injector.map<IHospitalisationInteractor>(
        (result) => HospitalisationInteractor(
          result.get<IHospitalisationsRepository>(),
          result.get<IDocumentsLinksInteractor>(),
        ),
      );

      injector.map<IAllergiesInteractor>(
        (injector) => AllergiesInteractor(
          injector.get<ITraitementsRepository>(),
          injector.get<ILinksInMemoryInteractor>(),
          injector.get<IAllergiesRepository>(),
        ),
      );

      injector.map<IMaladiesInteractor>(
        (result) => MaladiesInteractor(
          result.get<IMaladiesRepository>(),
          result.get<IDocumentsLinksInteractor>(),
          result.get<ITraitementsRepository>(),
        ),
      );

      injector.map<IDocumentsLinksInteractor>(
        (result) => DocumentsLinksInteractor(result.get<IDocumentInteractor>()),
      );

      injector.map<ImageShrinker>((result) => ImageShrinker());

      injector.map<FilePreprocessor>(
        (result) => FilePreprocessor(
          result.get<ImageShrinker>(),
          commonInjector.getFileHelper(),
        ),
      );

      injector.map<PdfGenerator>(
        (injector) => PdfGenerator(),
        isSingleton: true,
      );

      injector.map<IMaladiesRepository>(
        (result) => MaladiesRepository(
          result.get<ferry.Client>(),
          result.get<ILinksInMemoryInteractor>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IAllergiesRepository>(
        (result) => AllergiesRepository(
          result.get<ferry.Client>(),
          result.get<ILinksInMemoryInteractor>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IEntourageContactRepository>(
        (result) => EntourageContactRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IAntecedentsFamiliauxRepository>(
        (result) => AntecedentsFamiliauxRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IVaccinationsRepository>(
        (result) {
          final cmsUrl = commonInjector.getUrlsConfig().cmsUrl;
          return VaccinationsRepository(
            commonInjector.getJsonHttpDataSource(),
            cmsUrl,
            result.get<ferry.Client>(),
            result.get<Crashlytics>(),
          );
        },
      );

      injector.map<IHabitudesDeVieRepository>(
        (result) => HabitudesDeVieRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<FlutterSecureStorage>((result) => const FlutterSecureStorage());

      injector.map<DeviceSecureStorageWrapper>(
        (result) => DeviceSecureStorageImpl(result.get<FlutterSecureStorage>()),
      );

      injector.map<IUserDataRepository>(
        (result) => UserDataRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
          jsonDataSource: commonInjector.getJsonHttpDataSource(),
          cmsUrl: commonInjector.getUrlsConfig().cmsUrl,
        ),
      );

      injector.map<IHospitalisationsRepository>(
        (result) => HospitalisationsRepository(
          result.get<ferry.Client>(),
          result.get<ILinksInMemoryInteractor>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ITraitementsRepository>(
        (result) => TraitementsRepository(
          result.get<ferry.Client>(),
          result.get<ILinksInMemoryInteractor>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ISynthesePmlRepository>(
        (result) => SynthesePmlRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IMessagerieRepository>(
        (result) => MessagerieRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IConsentementsUrgenceRepository>(
        (result) => ConsentementsUrgenceRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ITracesRepository>(
        (result) => TracesRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IHelpdeskRepository>(
        (result) => HelpdeskRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IOuvrantDroitRepository>(
        (result) => OuvrantDroitRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IRecommandationsRepository>(
        (result) => RecommandationsRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IConsentementsPsRepository>(
        (result) => ConsentementsPsRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<MessagerieViewModelHelper>(
        (result) => MessagerieViewModelHelper(
          MessagerieDateTimeFormatter(const LocaleHelper()),
        ),
      );

      injector.map<Crashlytics>(
        (result) => CrashlyticsWithFirebase(FirebaseCrashlytics.instance),
      );

      injector.map<IAyantsDroitsRepository>(
        (result) => AyantsDroitsRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IMesuresRepository>(
        (result) => MesuresRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
          const LocaleHelper(),
        ),
      );

      injector.map<ICourbesReferenceRepository>(
        (result) => CourbesReferenceRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ICguRepository>(
        (injector) => CguRepository(
          ferryClient: injector.get<ferry.Client>(),
          crashlytics: injector.get<Crashlytics>(),
        ),
      );

      injector.map<IHistoriqueActivitesRepository>(
        (injector) => HistoriqueActivitesRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
          const LocaleHelper(),
        ),
      );

      injector.map<IDirectivesAnticipeesRepository>(
        (injector) => DirectivesAnticipeesRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<IPreventionRepository>(
        (injector) => PreventionCMSRepository(
          commonInjector.getJsonHttpDataSource(),
          commonInjector.getUrlsConfig().cmsUrl,
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<IAideFaqRepository>(
        (injector) => AideFaqRepository(
          commonInjector.getJsonHttpDataSource(),
          commonInjector.getUrlsConfig().cmsUrl,
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<IMatriceHabilitationRepository>(
        (injector) => MatriceHabilitationRepository(
          dataSource: commonInjector.getJsonHttpDataSource(),
          cmsUrl: commonInjector.getUrlsConfig().cmsUrl,
          crashlytics: injector.get<Crashlytics>(),
        ),
      );

      injector.map<IMessagesPannesRepository>(
        (injector) => MessagesPannesRepository(
          commonInjector.getJsonHttpDataSource(),
          commonInjector.getUrlsConfig(),
        ),
      );

      injector.map<IInterruptionServiceRepository>(
        (injector) => InterruptionServiceRepository(
          commonInjector.getJsonHttpDataSource(),
          commonInjector.getUrlsConfig(),
        ),
      );

      injector.map<ISearchCommunesRepository>(
        (injector) => SearchCommunesRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<ISearchPsRepository>(
        (injector) => SearchPsRepository(injector.get<ferry.Client>()),
      );

      injector.map<ISearchEsRepository>(
        (injector) => SearchEsRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<IProfessionalActivitiesRepository>(
        (injector) => ProfessionalActivitiesRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<IAppRatingRepository>(
        (injector) => AppRatingRepository(
          commonInjector._injector.get<SharedPreferences>(),
        ),
      );

      injector.map<IUnconcernedRepository>(
        (result) => UnconcernedRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IProfessionnelsDeSanteRepository>(
        (result) => ProfessionnelsDeSanteRepository(
          injector.get<ferry.Client>(),
          result.get<Crashlytics>(),
          result.get<DeviceSecureStorageWrapper>(),
        ),
      );

      injector.map<IMonHistoireDeSanteRepository>(
        (result) => MonHistoireDeSanteRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IEtablissementDeSanteRepository>(
        (result) => EtablissementDeSanteRepository(
          injector.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<INotificationCenterRepository>(
        (result) => NotificationCenterRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ICatalogueServicesRepository>(
        (result) => CatalogueServicesRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ICatalogueServicesConsentementsRepository>(
        (result) => CatalogueServicesConsentementsRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<INotificationRepository>(
        (result) => NotificationRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IAgendaRepository>(
        (result) => AgendaRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
          result.get<IPreventionRepository>(),
          const LocaleHelper(),
        ),
      );

      injector.map<IEnrolledDevicesRepository>(
        (result) => EnrolledDevicesRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ILinksRepository>(
        (result) => LinksRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<ILinksInMemoryInteractor>(
        (result) => LinksInMemoryInteractor(
          result.get<ILinksRepository>(),
          commonInjector.getRandomGenerator(),
        ),
        isSingleton: true,
      );

      injector.map<ISecureStorageRepository>(
        (result) => SecureStorageRepository(
          crashlytics: result.get<Crashlytics>(),
          secureStorage: result.get<DeviceSecureStorageWrapper>(),
        ),
      );

      injector.map<IQuestionnaireAgesClesRepository>(
        (result) => QuestionnaireAgesClesRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IBilanDePreventionRepository>(
        (result) => BilanDePreventionRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IPreferenceNotificationRepository>(
        (result) => PreferenceNotificationRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IPartagerProfilRepository>(
        (result) => PartagerProfilRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IAjoutAdRepository>(
        (result) => AjoutAdRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<ISyntheseQuestionnaireAgesClesRepository>(
        (result) => SyntheseQuestionnaireAgesClesRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<IDechiffrementRepository>(
        (result) => DechiffrementRepository(
          result.get<ferry.Client>(),
          result.get<Crashlytics>(),
        ),
      );

      injector.map<INousContacterRepository>(
        (result) => NousContacterRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IOnboardingRepository>(
        (result) => OnboardingRepository(
          ferryClient: result.get<ferry.Client>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IRecommanderAppRepository>(
        (result) => RecommanderAppRepository(
          commonInjector.getSharedPreferences(),
        ),
      );

      injector.map<IRaccourcisRepository>(
        (result) => RaccourcisRepository(
          secureStorage: result.get<DeviceSecureStorageWrapper>(),
          crashlytics: result.get<Crashlytics>(),
        ),
      );

      injector.map<IConsentementExtractionDonneesSanteRepository>(
        (injector) => ConsentementExtractionDonneesSanteRepository(
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      injector.map<IAidantsAidesRepository>(
        (injector) => AidantsAidesRepository(
          ferryClient: injector.get<ferry.Client>(),
          crashlytics: injector.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      injector.map<IGroupeSanguinRepository>(
        (injector) => GroupeSanguinRepository(
          commonInjector.getJsonHttpDataSource(),
          commonInjector.getUrlsConfig(),
          injector.get<ferry.Client>(),
          injector.get<Crashlytics>(),
        ),
      );

      injector.map<List<EnsStoreDependant>>((injector) => ensStoreDependants);

      _authenticatedInjector = AppInjector(injector, commonInjector._injector);
    }
    _currentInjector = _authenticatedInjector!;
  }

  static void initForGuestMode(CommonInjector commonInjector) {
    if (_guestInjector == null) {
      final injector = Injector('guest');

      final List<EnsStoreDependant> ensStoreDependants = [commonInjector.getLogoutWrapper()];

      injector.map<EnsAuthenticatedClient>(
        (result) => EnsAuthenticatedClient(
          commonInjector.getOpenidWrapper(),
          commonInjector.getPackageInfo(),
        ),
        isSingleton: true,
      );

      injector.map<IRandomGenerator>((injector) => RandomGenerator());

      injector.map<IAppUpdateRepository>(
        (result) => Platform.isAndroid ? AppUpdateRepositoryForAndroid(false) : AppUpdateRepositoryForIOS(null),
      );

      injector.map<IDocumentsRepository>((result) => GuestDocumentsRepository());

      injector.map<ISynthesePmlRepository>(
        (result) => GuestSynthesePmlRepository(),
      );

      injector.map<Crashlytics>(
        (result) => CrashlyticsWithFirebase(FirebaseCrashlytics.instance),
      );

      injector.map<FileStorage>(
        (result) => FileStorage(
          result.get<Crashlytics>(),
        ),
        isSingleton: true,
      );

      injector.map<IHandicapsRepository>((result) => GuestHandicapsRepository());

      injector.map<IDocumentInteractor>(
        (result) => GuestDocumentInteractor(result.get<IDocumentsRepository>()),
      );

      injector.map<ISecureStorageRepository>(
        (result) => GuestSecureStorageRepository(),
      );

      injector.map<IOuvrantDroitRepository>(
        (result) => GuestUserDomainRepository(),
      );

      injector.map<ImageShrinker>((result) => ImageShrinker());

      injector.map<FilePreprocessor>(
        (result) => FilePreprocessor(
          result.get<ImageShrinker>(),
          commonInjector.getFileHelper(),
        ),
      );

      injector.map<PdfGenerator>((result) => PdfGenerator());

      injector.map<IMaladiesRepository>((result) => GuestMaladiesRepository());

      injector.map<IAllergiesRepository>((result) => GuestAllergiesRepository());

      injector.map<IAllergiesInteractor>(
        (injector) => AllergiesInteractor(
          injector.get<ITraitementsRepository>(),
          injector.get<ILinksInMemoryInteractor>(),
          injector.get<IAllergiesRepository>(),
        ),
      );

      injector.map<IEntourageContactRepository>(
        (result) => GuestCreateEntourageContactRepository(),
      );

      injector.map<IAntecedentsFamiliauxRepository>(
        (result) => GuestAntecedentsFamiliauxRepository(),
      );

      injector.map<IVaccinationsRepository>(
        (result) => GuestVaccinationsRepository(),
      );

      injector.map<IHabitudesDeVieRepository>(
        (result) => GuestHabitudesDeVieRepository(),
      );

      injector.map<IUserDataRepository>((result) => GuestUserDataRepository());

      injector.map<IHospitalisationsRepository>(
        (result) => GuestHospitalisationsRepository(),
      );

      injector.map<IHospitalisationInteractor>(
        (result) => HospitalisationInteractor(
          result.get<IHospitalisationsRepository>(),
          result.get<IDocumentsLinksInteractor>(),
        ),
      );

      injector.map<IDocumentsLinksInteractor>(
        (result) => DocumentsLinksInteractor(result.get<IDocumentInteractor>()),
      );

      injector.map<ITraitementsRepository>(
        (result) => GuestTraitementsRepository(),
      );

      injector.map<IMessagerieRepository>(
        (result) => GuestMessagerieRepository(),
      );

      injector.map<IConsentementsUrgenceRepository>(
        (result) => GuestConsentementsUrgenceRepository(),
      );

      injector.map<IConsentementsPsRepository>(
        (result) => GuestConsentementPsRepository(),
      );

      injector.map<IAyantsDroitsRepository>(
        (result) => GuestAyantsDroitsRepository(),
      );

      injector.map<IMesuresRepository>((result) => GuestMesuresRepository());

      injector.map<ICguRepository>((injector) => GuestCguRepository());

      injector.map<IHistoriqueActivitesRepository>(
        (injector) => GuestHistoriqueActivitesRepository(),
      );

      injector.map<MessagerieViewModelHelper>(
        (result) => MessagerieViewModelHelper(
          MessagerieDateTimeFormatter(const LocaleHelper()),
        ),
      );

      injector.map<IDirectivesAnticipeesRepository>(
        (injector) => GuestDirectivesAnticipeesRepository(),
      );

      injector.map<IPreventionRepository>(
        (injector) => GuestPreventionRepository(),
      );

      injector.map<IAideFaqRepository>((injector) {
        return GuestAideFaqRepository(
          JsonDataSource(client: currentInjector.getBaseClient()),
          currentInjector.getUrlsConfig().cmsUrl,
        );
      });

      injector.map(<IDetailDroitAccesRepository>(injector) => null);

      injector.map<ISearchCommunesRepository>(
        (injector) => GuestSearchCommunesRepository(),
      );

      injector.map<ISearchPsRepository>((injector) => GuestSearchPsRepository());

      injector.map<ISearchEsRepository>((injector) => GuestSearchEsRepository());

      injector.map<IProfessionalActivitiesRepository>(
        (injector) => GuestIProfessionalActivitiesRepository(),
      );

      injector.map<IAppRatingRepository>((injector) => GuestAppRatingRepository());

      injector.map<IUnconcernedRepository>(
        (result) => GuestUnconcernedRepository(),
      );

      injector.map<IProfessionnelsDeSanteRepository>(
        (result) => GuestProfessionnelsDeSanteRepository(),
      );

      injector.map<IMaladiesInteractor>(
        (result) => MaladiesInteractor(
          result.get<IMaladiesRepository>(),
          result.get<IDocumentsLinksInteractor>(),
          result.get<ITraitementsRepository>(),
        ),
      );

      injector.map<IMonHistoireDeSanteRepository>(
        (result) => GuestMonHistoireDeSanteRepository(),
      );

      injector.map<IRecommandationsRepository>(
        (result) => GuestRecommandationsRepository(),
      );

      injector.map<IEtablissementDeSanteRepository>(
        (result) => GuestEtablissementsDeSanteRepository(),
      );

      injector.map<ICatalogueServicesRepository>(
        (result) => GuestCatalogueServicesRepository(),
      );

      injector.map<ICatalogueServicesConsentementsRepository>(
        (result) => GuestCatalogueServicesConsentementsRepository(),
      );

      injector.map<IAgendaRepository>((result) => GuestAgendaRepository());

      injector.map<INotificationRepository>(
        (result) => GuestNotificationRepository(),
      );

      injector.map<INotificationCenterRepository>(
        (result) => GuestNotificationCenterRepository(
          commonInjector.getOpenidWrapper(),
        ),
      );

      injector.map<IEnrolledDevicesRepository>(
        (result) => GuestEnrolledDevicesRepository(),
      );

      injector.map<ICourbesReferenceRepository>(
        (result) => GuestCourbesReferenceRepository(),
      );

      injector.map<ILinksRepository>((injector) => GuestLinksRepository());

      injector.map<ILinksInMemoryInteractor>(
        (result) => LinksInMemoryInteractor(
          result.get<ILinksRepository>(),
          commonInjector.getRandomGenerator(),
        ),
        isSingleton: true,
      );

      injector.map<ITracesRepository>((injector) => GuestTracesRepository());

      injector.map<IMatriceHabilitationRepository>(
        (injector) => GuestMatriceHabilitationRepository(),
      );

      injector.map<IHelpdeskRepository>((injector) => GuestHelpdeskRepository());

      injector.map<IQuestionnaireAgesClesRepository>(
        (injector) => GuestAgesClesRepository(),
      );

      injector.map<IBilanDePreventionRepository>(
        (injector) => GuestBilanDePreventionRepository(),
      );

      injector.map<IPreferenceNotificationRepository>(
        (injector) => GuestPreferenceNotificationRepository(),
      );

      injector.map<IPartagerProfilRepository>(
        (injector) => GuestPartagerProfilRepository(),
      );

      injector.map<IAjoutAdRepository>((injector) => GuestAjoutAdRepository());

      injector.map<ISyntheseQuestionnaireAgesClesRepository>(
        (result) => GuestSyntheseQuestionnaireAgesClesRepository(),
      );

      injector.map<IDechiffrementRepository>(
        (result) => GuestDechiffrementRepository(),
      );

      injector.map<INousContacterRepository>(
        (result) => GuestNousContacterRepository(),
      );

      injector.map<IOnboardingRepository>(
        (result) => GuestOnboardingRepository(),
      );

      injector.map<IRaccourcisRepository>(
        (result) => GuestRaccourcisRepository(),
      );

      injector.map<IRecommanderAppRepository>(
        (result) => RecommanderAppRepository(
          commonInjector.getSharedPreferences(),
        ),
      );

      injector.map<IConsentementExtractionDonneesSanteRepository>(
        (result) => GuestConsentementExtractionDonneesSanteRepository(),
      );

      injector.map<IAidantsAidesRepository>(
        (result) => GuestAidantsAidesRepository(),
      );

      injector.map<IGroupeSanguinRepository>(
        (result) => GuestGroupeSanguinRepository(),
      );

      injector.map<List<EnsStoreDependant>>((injector) => ensStoreDependants);

      _guestInjector = GuestAppInjector(injector, commonInjector._injector);
    }
    _currentInjector = _guestInjector!;
  }
}
