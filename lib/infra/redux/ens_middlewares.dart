/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/data/agenda_repository.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/data/aidants_aides_repository.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aide/data/aide_faq_repository.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/data/nous_contacter_repository.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/aide/redux/aide_faq_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/redux/analytics_middlewares.dart';
import 'package:fr_cnamts_ens/auth/domain/auth_interactor.dart';
import 'package:fr_cnamts_ens/auth/redux/inactivity_middleware.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/data/ajout_ad_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/data/ayants_droits_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/data/nouvelles_fonctionnalites_repository.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/data/recommander_app_repository.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/data/catalogue_services_repository.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/data/catalogue_services_consentements_repository.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/clipboard/domain/data/clipboard_wrapper.dart';
import 'package:fr_cnamts_ens/clipboard/redux/clipboard_middlewares.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/data/consentement_extraction_donnees_sante_repository.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/dechiffrement/data/dechiffrement_repository.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_interactor.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge_wrapper.dart';
import 'package:fr_cnamts_ens/files/data/file_storage.dart';
import 'package:fr_cnamts_ens/files/data/pdf_generator.dart';
import 'package:fr_cnamts_ens/files/domain/file_preprocessor.dart';
import 'package:fr_cnamts_ens/helpdesk/data/helpdesk_repository.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/home/data/ouvrant_droit_repository.dart';
import 'package:fr_cnamts_ens/home/redux/user_domain_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/redux/infra_middlewares.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/interruption_services/data/interruption_services_repository.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/link/data/links_repository.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/messagerie_repository.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/data/messages_pannes_repository.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/notification_center/data/notification_center_repository.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_middlewares.dart';
import 'package:fr_cnamts_ens/notifications/data/notification_repository.dart';
import 'package:fr_cnamts_ens/notifications/redux/firebase_messaging_wrapper.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_middlewares.dart';
import 'package:fr_cnamts_ens/onboarding/data/onboarding_repository.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/data/consentements_ps_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/data/matrice_habilitation_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/data/enrolled_devices_repository.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_repository.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/partager_profil_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/data/historique_activites_repository.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/data/preference_notification_repository.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/allergies_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/data/antecedents_familiaux_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/data/bilan_de_prevention_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/data/courbes_reference_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/data/directives_anticipees_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/data/entourage_contact_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/data/groupe_sanguin_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/data/handicaps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/hospitalisation_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/maladies_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/data/mesures_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/data/mon_histoire_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/data/search_communes_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/etablissements_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/professionnels_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/data/professional_activities_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/redux/professional_activities_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/data/search_ps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/redux/search_ps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/data/add_item_for_first_time_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/data/synthese_pml_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/data/unconcerned_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/data/vaccinations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/data/synthese_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/raccourcis/data/raccourcis_repository.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/search_es/data/search_es_repository.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/secure_storage/data/secure_storage_repository.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/traces/data/traces_repository.dart';
import 'package:fr_cnamts_ens/traces/redux/traces_redux.dart';
import 'package:fr_cnamts_ens/update/data/app_update_repository.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_middlewares.dart';
import 'package:fr_cnamts_ens/user/app_rating/data/app_rating_repository.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_middlewares.dart';
import 'package:fr_cnamts_ens/user/cgu/data/cgu_repository.dart';
import 'package:fr_cnamts_ens/user/cgu/redux/cgu_redux.dart';
import 'package:fr_cnamts_ens/user/data/offline_user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_repository.dart';
import 'package:fr_cnamts_ens/user/redux/user_middlewares.dart';
import 'package:redux/redux.dart';

List<Middleware<EnsState>> createEnsMiddlewares({
  required RemoteConfigWrapper remoteConfigWrapper,
  required UserRepository userRepository,
  required IDocumentsRepository documentsRepository,
  required AuthInteractor authInteractor,
  required IMaladiesRepository maladiesRepository,
  required IMaladiesInteractor maladiesInteractor,
  required ITraitementsRepository traitementsRepository,
  required IHospitalisationsRepository hospitalisationsRepository,
  required IAllergiesRepository allergiesRepository,
  required IVaccinationsRepository vaccinationsRepository,
  required IHabitudesDeVieRepository habitudesVieRepository,
  required IAntecedentsFamiliauxRepository antecedentFamiliauxRepository,
  required IUserDataRepository userDataRepository,
  required IDocumentInteractor documentsInteractor,
  required IHospitalisationInteractor hospitalisationInteractor,
  required FilePreprocessor filePreprocessor,
  required PdfGenerator pdfGenerator,
  required IMessagerieRepository messagerieRepository,
  required FileStorage fileStorage,
  required IConsentementsPsRepository consentementsPsRepository,
  required IConsentementsUrgenceRepository consentementsUrgenceRepository,
  required ISynthesePmlRepository synthesePmlRepository,
  required IAyantsDroitsRepository ayantsDroitsRepository,
  required ClipboardWrapper clipboardWrapper,
  required IMesuresRepository mesuresRepository,
  required ICourbesReferenceRepository courbesReferenceRepository,
  required ICguRepository cguRepository,
  required IEnsAnalytics analytics,
  required IEnsPrivacy privacy,
  required IHistoriqueActivitesRepository historiqueActivitesRepository,
  required IDirectivesAnticipeesRepository directivesAnticipeesRepository,
  required IPreventionRepository preventionRepository,
  required IMatriceHabilitationRepository matriceHabilitationRepository,
  required ISearchPsRepository searchPsRepository,
  required ISearchEsRepository searchEsRepository,
  required IAppRatingRepository appRatingRepository,
  required IUnconcernedRepository unconcernedRepository,
  required IProfessionnelsDeSanteRepository psRepository,
  required IMonHistoireDeSanteRepository monHistoireDeSanteRepository,
  required IEtablissementDeSanteRepository healthcareEntitiesRepository,
  required IMessagesPannesRepository messagesPannesRepository,
  required ICatalogueServicesRepository catalogueServicesRepository,
  required ICatalogueServicesConsentementsRepository catalogueServicesConsentementsRepository,
  required INotificationRepository notificationsRepository,
  required IHandicapsRepository handicapsRepository,
  required INouvellesFonctionnalitesRepository nouvellesFonctionnalitesRepository,
  required IAppUpdateRepository appUpdateRepository,
  required INotificationCenterRepository notificationCenterRepository,
  required IAgendaRepository agendaRepository,
  required IEnrolledDevicesRepository enrolledDevicesRepository,
  required IEntourageContactRepository createEntourageContactRepository,
  required ILinksRepository linksRepository,
  required ILinksInMemoryInteractor linksInMemoryInteractor,
  required IProfessionalActivitiesRepository professionalActivitiesRepository,
  required ISecureStorageRepository secureStorageRepository,
  required ITracesRepository tracesRepository,
  required IHelpdeskRepository helpdeskRepository,
  required IRecommandationsRepository recommandationsRepository,
  required IQuestionnaireAgesClesRepository questionnaireAgesClesRepository,
  required IBilanDePreventionRepository bilanDePreventionRepository,
  required ISyntheseQuestionnaireAgesClesRepository syntheseQuestionnaireAgesClesRepository,
  required IAddItemForFirstTimeRepository addVaccinationForFirstTimeRepository,
  required IOuvrantDroitRepository ouvrantDroitRepository,
  required IDechiffrementRepository dechiffrementRepository,
  required IPartagerProfilRepository partagerProfilRepository,
  required IAjoutAdRepository ajoutAdRepository,
  required IOfflineUserDataRepository offlineUserDataRepository,
  required IPreferenceNotificationRepository preferenceNotificationRepository,
  required INousContacterRepository nousContacterRepository,
  required bool isGuestMode,
  required IAideFaqRepository aideFaqRepository,
  required IOnboardingRepository onboardingRepository,
  required IRaccourcisRepository raccourcisRepository,
  required IConsentementExtractionDonneesSanteRepository consentementExtractionDonneesSanteRepository,
  required IRecommanderAppRepository recommanderAppRepository,
  required IAidantsAidesRepository aidantsAidesRepository,
  required IInterruptionServiceRepository interruptionServiceRepository,
  required ISearchCommunesRepository searchCommunesRepository,
  required IAnalyticsHook analyticsHook,
  required IGroupeSanguinRepository groupeSanguinRepository,
  required LogoutWrapper logoutWrapper,
  required IAllergiesInteractor allergiesInteractor,
}) =>
    [
      ...InfraMiddlewares.create(),
      ...DocumentsMiddleware.create(
        documentsRepository,
        documentsInteractor,
        filePreprocessor,
        pdfGenerator,
        ScannerBridgeWrapper(),
        secureStorageRepository,
        fileStorage,
      ),
      ...MaladiesMiddlewares.create(
        maladiesRepository,
        maladiesInteractor,
        linksInMemoryInteractor,
      ),
      ...TraitementsMiddlewares.create(traitementsRepository),
      ...HospitalisationsMiddlewares.create(
        hospitalisationsRepository,
        hospitalisationInteractor,
        linksInMemoryInteractor,
      ),
      ...UserMiddlewares.create(
        userDataRepository,
        offlineUserDataRepository,
        userRepository,
        remoteConfigWrapper,
        isGuestMode,
      ),
      ...AllergiesMiddlewares.create(
        allergiesRepository,
        linksInMemoryInteractor,
        allergiesInteractor,
      ),
      ...VaccinationsMiddlewares.create(vaccinationsRepository),
      ...HabitudesDeVieMiddlewares.create(habitudesVieRepository),
      ...AntecedentsFamiliauxMiddlewares.create(antecedentFamiliauxRepository),
      ...EntourageEtVolonteMiddleware.create(createEntourageContactRepository),
      ...MessagerieMiddlewares.create(
        messagerieRepository,
        fileStorage,
      ),
      ...ConsentementsPsMiddlewares.create(consentementsPsRepository),
      ...ConsentementsUrgenceMiddlewares.create(consentementsUrgenceRepository),
      ...SynthesePdfMiddlewares.create(
        syntheseQuestionnaireAgesClesRepository,
        synthesePmlRepository,
        fileStorage,
        documentsRepository,
      ),
      ...AyantsDroitsMiddlewares.create(ayantsDroitsRepository),
      ...ClipboardMiddlewares.create(clipboardWrapper),
      ...MesuresMiddlewares.create(mesuresRepository),
      ...CourbesReferenceMiddlewares.create(courbesReferenceRepository),
      ...AnalyticsMiddlewares.create(analytics, privacy, analyticsHook),
      ...PrivacyMiddlewares.create(privacy),
      ...CguMiddlewares.create(cguRepository),
      ...HistoriqueActivitesMiddlewares.create(historiqueActivitesRepository),
      ...DirectivesAnticipeesMiddlewares.create(directivesAnticipeesRepository),
      ...PreventionMiddlewares.create(preventionRepository),
      ...SearchPsMiddlewares.create(searchPsRepository),
      ...SearchEsMiddlewares.create(searchEsRepository),
      ...AppRatingMiddlewares.create(appRatingRepository),
      ...UnconcernedMiddlewares.create(unconcernedRepository),
      ...ProfessionnelsDeSanteMiddlewares.create(psRepository, secureStorageRepository),
      ...MonHistoireDeSanteMiddlewares.create(monHistoireDeSanteRepository, secureStorageRepository),
      ...EtablissementsDeSanteMiddlewares.create(healthcareEntitiesRepository),
      ...MessagesPannesMiddlewares.create(messagesPannesRepository),
      ...NotificationMiddlewares.create(
        notificationsRepository,
        dechiffrementRepository,
        FirebaseMessagingWrapper(),
      ),
      ...CatalogueServicesMiddlewares.create(catalogueServicesRepository, remoteConfigWrapper),
      ...CatalogueServicesConsentementsMiddlewares.create(catalogueServicesConsentementsRepository),
      ...HandicapsMiddlewares.create(handicapsRepository),
      ...AppUpdateMiddlewares.create(appUpdateRepository),
      ...NouvellesFonctionnalitesMiddlewares.create(nouvellesFonctionnalitesRepository),
      ...NotificationCenterMiddlewares.create(notificationCenterRepository),
      ...AgendaMiddleware.create(agendaRepository),
      ...RendezVousMiddlewares.create(agendaRepository),
      ...RappelMiddlewares.create(agendaRepository),
      ...EnrolledDevicedMiddlewares.create(enrolledDevicesRepository),
      ...ProfessionalActivitiesMiddlewares.create(professionalActivitiesRepository),
      ...MatriceHabilitationMiddlewares.create(matriceHabilitationRepository),
      ...IncitationPmlMiddlewares.create(secureStorageRepository),
      ...TracesMiddlewares.create(tracesRepository),
      ...HelpdeskMiddleware.create(helpdeskRepository, filePreprocessor),
      ...UserDomainMiddlewares.create(
        ouvrantDroitRepository,
        consentementExtractionDonneesSanteRepository,
        remoteConfigWrapper,
      ),
      ...RecommandationsMiddlewares.create(recommandationsRepository),
      ...QuestionnaireAgesClesMiddlewares.create(questionnaireAgesClesRepository),
      ...BilanDePreventionMiddlewares.create(bilanDePreventionRepository),
      ...AddItemForFirstTimeMiddlewares.create(addVaccinationForFirstTimeRepository),
      ...InactivityMiddleware.create(remoteConfigWrapper, logoutWrapper),
      ...PartagerProfilMiddlewares.create(partagerProfilRepository),
      ...PartagerProfilFormMiddlewares.create(partagerProfilRepository),
      ...AjoutAdMiddlewares.create(ajoutAdRepository),
      ...PreferenceNotificationMiddlewares.create(preferenceNotificationRepository),
      ...NousContacterMiddlewares.create(nousContacterRepository),
      ...AideFaqMiddlewares.create(aideFaqRepository),
      ...OnboardingMiddleware.create(onboardingRepository, secureStorageRepository),
      ...RaccourcisMiddlewares.create(raccourcisRepository),
      ...ConsentementExtractionDonneesSanteMiddlewares.create(consentementExtractionDonneesSanteRepository),
      ...RecommanderAppMiddlewares.create(recommanderAppRepository),
      ...ExamensMiddlewares.create(agendaRepository),
      ...AidantMiddlewares.create(aidantsAidesRepository),
      ...AideMiddlewares.create(aidantsAidesRepository),
      ...InterruptionServicesMiddleware.create(interruptionServiceRepository),
      ...SearchCommunesMiddlewares.create(searchCommunesRepository),
      ...GroupeSanguinMiddlewares.create(groupeSanguinRepository),
    ];
