/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/aide/redux/aide_faq_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/redux/files_states.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/home/redux/home_examen_recommandes_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_generic_state.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_states.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_states.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_states.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/partager_profil_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_states.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_category/incitation_pml_category_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/redux/professional_activities_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_states.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/redux/profils_rattaches_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_states.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/states/user_states.dart';

class EnsState extends EnsGenericState {
  final DocumentsState documentsState;
  final MaladiesState maladiesState;
  final TraitementsState traitementsState;
  final HospitalisationsState hospitalisationsState;
  final AllergiesState allergiesState;
  final VaccinationsState vaccinationsState;
  final HabitudesDeVieState habitudesDeVieState;
  final AntecedentsFamiliauxState antecedentsFamiliauxState;
  final UserState userState;
  final FileState documentToDisplayState;
  final MessagerieState messagerieState;
  final ConsentementsUrgenceState consentementsUrgenceState;
  final ConsentementsUrgenceEditState consentementsUrgenceEditState;
  final ConsentementsPsListState consentementsPsListState;
  final ProfessionnelsDeSanteState professionnelsDeSanteState;
  final SearchEsState searchEsState;
  final SynthesePdfState synthesePdfState;
  final ProfilsRattachesState profilsRattachesState;
  final MesuresState mesuresState;
  final CourbesReferenceState courbesReferenceState;
  final HistoriqueActivitesState historiqueActivitesState;
  final DirectivesAnticipeesState directivesAnticipeesState;
  final PreventionState preventionState;
  final MonActuState monActuState;
  final MonHistoireDeSanteState monHistoireDeSanteState;
  final EtablissementsDeSanteState etablissementsDeSanteState;
  final MessagePanneState homeConnecteeMessagePanneState;
  final CatalogueServicesState catalogueServicesState;
  final CatalogueServiceConsentementsState catalogueServiceConsentementsState;
  final HandicapsState handicapsState;
  final NouvellesFonctionnalitesState nouvellesFonctionnalitesState;
  final AppUpdateState appUpdateState;
  final NotificationCenterState notificationCenterState;
  final AgendaState agendaState;
  final EnrolledDevicesState enrolledDevicesState;
  final EntourageEtVolontesState entourageEtVolontesState;
  final bool displayMainAppBar;
  final ProfessionalActivitiesState professionalActivitiesState;
  final MatriceHabilitationState matriceHabilitationState;
  final IncitationPmlState incitationPmlState;
  final IncitationPmlCategoryState incitationPmlCategoryState;
  final HelpdeskState helpdeskState;
  final RecommandationsState recommandationsState;
  final QuestionnaireAgesClesState questionnaireAgesClesState;
  final BilanDePreventionState bilanDePreventionState;
  final AddItemForFirstTimeState addItemForFirstTimeState;
  final NotificationState notificationState;
  final PartagerProfilState partagerProfilState;
  final PartagerProfilFormState partagerProfilFormState;
  final AjoutAdState ajoutAdState;
  final AyantsDroitsPendingInvitationsState ayantsDroitsPendingInvitationsState;
  final PreferenceNotificationState preferenceNotificationState;
  final HomeExamenRecommandesState homeExamenRecommandesState;
  final NousContacterState nousContacterState;
  final AideFaqState faqState;
  final OnboardingState onboardingState;
  final RaccourcisState raccourcisState;
  final ConsentementExtractionDonneesSanteState consentementExtractionDonneesSanteState;
  final RecommanderAppState recommanderAppState;
  final AidantState aidantState;
  final AideState aideState;
  final InterruptionServicesState interruptionServicesState;
  final SearchCommunesState communesState;
  final GroupeSanguinState groupeSanguinState;

  const EnsState({
    required super.snackbarContainerState,
    required this.documentsState,
    required this.maladiesState,
    required this.traitementsState,
    required this.hospitalisationsState,
    required this.allergiesState,
    required this.vaccinationsState,
    required this.habitudesDeVieState,
    required this.antecedentsFamiliauxState,
    required this.userState,
    required this.documentToDisplayState,
    required this.messagerieState,
    required this.consentementsUrgenceState,
    required this.consentementsUrgenceEditState,
    required this.consentementsPsListState,
    required this.professionnelsDeSanteState,
    required this.searchEsState,
    required this.synthesePdfState,
    required this.profilsRattachesState,
    required this.mesuresState,
    required this.courbesReferenceState,
    required this.historiqueActivitesState,
    required this.directivesAnticipeesState,
    required this.preventionState,
    required this.monActuState,
    required this.monHistoireDeSanteState,
    required this.etablissementsDeSanteState,
    required this.homeConnecteeMessagePanneState,
    required this.catalogueServicesState,
    required this.catalogueServiceConsentementsState,
    required this.handicapsState,
    required this.appUpdateState,
    required this.nouvellesFonctionnalitesState,
    required this.notificationCenterState,
    required this.agendaState,
    required this.enrolledDevicesState,
    required this.entourageEtVolontesState,
    required this.displayMainAppBar,
    required this.professionalActivitiesState,
    required this.matriceHabilitationState,
    required this.incitationPmlState,
    required this.incitationPmlCategoryState,
    required this.helpdeskState,
    required this.recommandationsState,
    required this.questionnaireAgesClesState,
    required this.bilanDePreventionState,
    required this.addItemForFirstTimeState,
    required this.notificationState,
    required this.partagerProfilState,
    required this.partagerProfilFormState,
    required this.ajoutAdState,
    required this.ayantsDroitsPendingInvitationsState,
    required this.preferenceNotificationState,
    required this.homeExamenRecommandesState,
    required this.nousContacterState,
    required this.faqState,
    required this.onboardingState,
    required this.raccourcisState,
    required this.consentementExtractionDonneesSanteState,
    required this.recommanderAppState,
    required this.aidantState,
    required this.aideState,
    required this.interruptionServicesState,
    required this.communesState,
    required this.groupeSanguinState,
  });

  EnsState cloneForNewCurrentProfile(EnsProfil newCurrentEnsProfile) {
    return EnsState(
      documentsState: const DocumentsState(),
      maladiesState: const MaladiesState(),
      traitementsState: const TraitementsState(),
      hospitalisationsState: const HospitalisationsState(),
      allergiesState: const AllergiesState(),
      vaccinationsState: const VaccinationsState(),
      habitudesDeVieState: const HabitudesDeVieState(),
      antecedentsFamiliauxState: const AntecedentsFamiliauxState(),
      userState: UserState(
        currentEnsUser: userState.currentEnsUser,
        currentProfile: newCurrentEnsProfile,
        mainUserDataState: userState.mainUserDataState,
      ),
      documentToDisplayState: const FileState(),
      messagerieState: const MessagerieState(),
      consentementsPsListState: const ConsentementsPsListState(),
      consentementsUrgenceState: const ConsentementsUrgenceState(),
      consentementsUrgenceEditState: const ConsentementsUrgenceEditState(),
      professionnelsDeSanteState: const ProfessionnelsDeSanteState(),
      searchEsState: const SearchEsState(),
      synthesePdfState: const SynthesePdfState(),
      snackbarContainerState: SnackbarContainerState(
        snackbarState: const SnackbarState.empty(),
        containerCount: snackbarContainerState.containerCount,
      ),
      profilsRattachesState: profilsRattachesState,
      mesuresState: const MesuresState(),
      courbesReferenceState: const CourbesReferenceState(),
      historiqueActivitesState: const HistoriqueActivitesState(),
      directivesAnticipeesState: const DirectivesAnticipeesState(),
      preventionState: const PreventionState(),
      monActuState: const MonActuState(),
      monHistoireDeSanteState: const MonHistoireDeSanteState(),
      etablissementsDeSanteState: const EtablissementsDeSanteState(),
      homeConnecteeMessagePanneState: const MessagePanneState(),
      catalogueServicesState: const CatalogueServicesState(
        serviceDetail: CatalogueServiceDetailState(),
        listeState: CatalogueServicesListState(),
        updateAutorisationState: CatalogueServiceUpdateAutorisationState(),
      ),
      catalogueServiceConsentementsState: const CatalogueServiceConsentementsState(),
      handicapsState: const HandicapsState(),
      nouvellesFonctionnalitesState: const NouvellesFonctionnalitesState(),
      appUpdateState: const AppUpdateState(),
      notificationCenterState: notificationCenterState,
      agendaState: AgendaState(rappelDetailState: agendaState.rappelDetailState),
      enrolledDevicesState: const EnrolledDevicesState(),
      entourageEtVolontesState: const EntourageEtVolontesState(),
      displayMainAppBar: true,
      professionalActivitiesState: const ProfessionalActivitiesState(),
      matriceHabilitationState: const MatriceHabilitationState(),
      incitationPmlState: const IncitationPmlState(),
      incitationPmlCategoryState: const IncitationPmlCategoryState(),
      helpdeskState: const HelpdeskState(),
      recommandationsState: RecommandationsState(
        recommandationDifferee: recommandationsState.recommandationDifferee,
      ),
      questionnaireAgesClesState: const QuestionnaireAgesClesState(),
      bilanDePreventionState: const BilanDePreventionState(),
      addItemForFirstTimeState: const AddItemForFirstTimeState(),
      notificationState: const NotificationState(),
      partagerProfilState: const PartagerProfilState(),
      partagerProfilFormState: const PartagerProfilFormState(),
      ajoutAdState: ajoutAdState,
      ayantsDroitsPendingInvitationsState: ayantsDroitsPendingInvitationsState,
      preferenceNotificationState: preferenceNotificationState,
      homeExamenRecommandesState: const HomeExamenRecommandesState(),
      nousContacterState: const NousContacterState(),
      faqState: const AideFaqState(),
      onboardingState: const OnboardingState(),
      raccourcisState: const RaccourcisState(),
      consentementExtractionDonneesSanteState: const ConsentementExtractionDonneesSanteState(),
      recommanderAppState: recommanderAppState,
      aidantState: aidantState,
      aideState: aideState,
      interruptionServicesState: interruptionServicesState,
      communesState: communesState,
      groupeSanguinState: GroupeSanguinState(
        informationsGroupeSanguinCms: groupeSanguinState.informationsGroupeSanguinCms,
      ),
    );
  }

  EnsState reset() {
    return const EnsState(
      documentsState: DocumentsState(),
      maladiesState: MaladiesState(),
      traitementsState: TraitementsState(),
      hospitalisationsState: HospitalisationsState(),
      allergiesState: AllergiesState(),
      vaccinationsState: VaccinationsState(),
      habitudesDeVieState: HabitudesDeVieState(),
      antecedentsFamiliauxState: AntecedentsFamiliauxState(),
      userState: UserState(),
      documentToDisplayState: FileState(),
      messagerieState: MessagerieState(),
      consentementsPsListState: ConsentementsPsListState(),
      consentementsUrgenceState: ConsentementsUrgenceState(),
      consentementsUrgenceEditState: ConsentementsUrgenceEditState(),
      professionnelsDeSanteState: ProfessionnelsDeSanteState(),
      searchEsState: SearchEsState(),
      synthesePdfState: SynthesePdfState(),
      snackbarContainerState: SnackbarContainerState(
        snackbarState: SnackbarState.empty(),
        containerCount: 0,
      ),
      profilsRattachesState: ProfilsRattachesState(),
      mesuresState: MesuresState(),
      courbesReferenceState: CourbesReferenceState(),
      historiqueActivitesState: HistoriqueActivitesState(),
      directivesAnticipeesState: DirectivesAnticipeesState(),
      preventionState: PreventionState(),
      monActuState: MonActuState(),
      monHistoireDeSanteState: MonHistoireDeSanteState(),
      etablissementsDeSanteState: EtablissementsDeSanteState(),
      homeConnecteeMessagePanneState: MessagePanneState(),
      catalogueServicesState: CatalogueServicesState(),
      catalogueServiceConsentementsState: CatalogueServiceConsentementsState(),
      handicapsState: HandicapsState(),
      appUpdateState: AppUpdateState(),
      nouvellesFonctionnalitesState: NouvellesFonctionnalitesState(),
      notificationCenterState: NotificationCenterState(),
      agendaState: AgendaState(),
      enrolledDevicesState: EnrolledDevicesState(),
      entourageEtVolontesState: EntourageEtVolontesState(),
      displayMainAppBar: true,
      professionalActivitiesState: ProfessionalActivitiesState(),
      matriceHabilitationState: MatriceHabilitationState(),
      incitationPmlState: IncitationPmlState(),
      incitationPmlCategoryState: IncitationPmlCategoryState(),
      helpdeskState: HelpdeskState(),
      recommandationsState: RecommandationsState(),
      questionnaireAgesClesState: QuestionnaireAgesClesState(),
      bilanDePreventionState: BilanDePreventionState(),
      addItemForFirstTimeState: AddItemForFirstTimeState(),
      notificationState: NotificationState(),
      partagerProfilState: PartagerProfilState(),
      partagerProfilFormState: PartagerProfilFormState(),
      ajoutAdState: AjoutAdState(),
      ayantsDroitsPendingInvitationsState: AyantsDroitsPendingInvitationsState(),
      preferenceNotificationState: PreferenceNotificationState(),
      homeExamenRecommandesState: HomeExamenRecommandesState(),
      nousContacterState: NousContacterState(),
      faqState: AideFaqState(),
      onboardingState: OnboardingState(),
      raccourcisState: RaccourcisState(),
      consentementExtractionDonneesSanteState: ConsentementExtractionDonneesSanteState(),
      recommanderAppState: RecommanderAppState(),
      aidantState: AidantState(),
      aideState: AideState(),
      interruptionServicesState: InterruptionServicesState(),
      communesState: SearchCommunesState(),
      groupeSanguinState: GroupeSanguinState(),
    );
  }

  EnsState clone({
    DocumentsState? documentsState,
    MaladiesState? maladiesState,
    TraitementsState? traitementsState,
    HospitalisationsState? hospitalisationsState,
    AllergiesState? allergiesState,
    VaccinationsState? vaccinationsState,
    HabitudesDeVieState? habitudesDeVieState,
    AntecedentsFamiliauxState? antecedentsFamiliauxState,
    UserState? userState,
    FileState? documentToDisplayState,
    MessagerieState? messagerieState,
    ConsentementsUrgenceState? consentementsUrgenceState,
    ConsentementsPsListState? consentementsPsListState,
    ProfessionnelsDeSanteState? professionnelsDeSanteState,
    SearchEsState? searchEsState,
    ConsentementsUrgenceEditState? consentementsUrgenceEditState,
    SynthesePdfState? synthesePdfState,
    SnackbarContainerState? snackbarContainerState,
    ProfilsRattachesState? profilsRattachesState,
    MesuresState? mesuresState,
    CourbesReferenceState? courbesReferenceState,
    HistoriqueActivitesState? historiqueActivitesState,
    DirectivesAnticipeesState? directivesAnticipeesState,
    PreventionState? preventionState,
    MonActuState? monActuState,
    MonHistoireDeSanteState? monHistoireDeSanteState,
    EtablissementsDeSanteState? etablissementsDeSanteState,
    MessagePanneState? homeConnecteeMessagePanneState,
    CatalogueServicesState? catalogueServicesState,
    CatalogueServiceConsentementsState? catalogueServiceConsentementsState,
    HandicapsState? handicapsState,
    AppUpdateState? appUpdateState,
    NouvellesFonctionnalitesState? nouvellesFonctionnalitesState,
    NotificationCenterState? notificationCenterState,
    AgendaState? agendaState,
    EnrolledDevicesState? enrolledDevicesState,
    EntourageEtVolontesState? entourageEtVolontesState,
    bool? displayMainAppBar,
    ProfessionalActivitiesState? professionalActivitiesState,
    MatriceHabilitationState? matriceHabilitationState,
    IncitationPmlState? incitationPmlState,
    IncitationPmlCategoryState? incitationPmlCategoryState,
    HelpdeskState? helpdeskState,
    RecommandationsState? recommandationsState,
    QuestionnaireAgesClesState? questionnaireAgesClesState,
    BilanDePreventionState? bilanDePreventionState,
    AddItemForFirstTimeState? addItemForFirstTimeState,
    NotificationState? notificationState,
    PartagerProfilState? partagerProfilState,
    PartagerProfilFormState? partagerProfilFormState,
    AjoutAdState? ajoutAdState,
    AyantsDroitsPendingInvitationsState? ayantsDroitsPendingInvitationsState,
    PreferenceNotificationState? preferenceNotificationState,
    HomeExamenRecommandesState? homeExamenRecommandesState,
    NousContacterState? nousContacterState,
    AideFaqState? faqState,
    OnboardingState? onboardingState,
    RaccourcisState? raccourcisState,
    ConsentementExtractionDonneesSanteState? consentementExtractionDonneesSanteState,
    RecommanderAppState? recommanderAppState,
    AidantState? aidantState,
    AideState? aideState,
    InterruptionServicesState? interruptionServicesState,
    SearchCommunesState? communesState,
    GroupeSanguinState? groupeSanguinState,
  }) {
    return EnsState(
      documentsState: documentsState ?? this.documentsState,
      maladiesState: maladiesState ?? this.maladiesState,
      traitementsState: traitementsState ?? this.traitementsState,
      hospitalisationsState: hospitalisationsState ?? this.hospitalisationsState,
      allergiesState: allergiesState ?? this.allergiesState,
      vaccinationsState: vaccinationsState ?? this.vaccinationsState,
      habitudesDeVieState: habitudesDeVieState ?? this.habitudesDeVieState,
      antecedentsFamiliauxState: antecedentsFamiliauxState ?? this.antecedentsFamiliauxState,
      userState: userState ?? this.userState,
      documentToDisplayState: documentToDisplayState ?? this.documentToDisplayState,
      messagerieState: messagerieState ?? this.messagerieState,
      consentementsUrgenceState: consentementsUrgenceState ?? this.consentementsUrgenceState,
      consentementsPsListState: consentementsPsListState ?? this.consentementsPsListState,
      professionnelsDeSanteState: professionnelsDeSanteState ?? this.professionnelsDeSanteState,
      searchEsState: searchEsState ?? this.searchEsState,
      consentementsUrgenceEditState: consentementsUrgenceEditState ?? this.consentementsUrgenceEditState,
      synthesePdfState: synthesePdfState ?? this.synthesePdfState,
      snackbarContainerState: snackbarContainerState ?? this.snackbarContainerState,
      profilsRattachesState: profilsRattachesState ?? this.profilsRattachesState,
      mesuresState: mesuresState ?? this.mesuresState,
      courbesReferenceState: courbesReferenceState ?? this.courbesReferenceState,
      historiqueActivitesState: historiqueActivitesState ?? this.historiqueActivitesState,
      directivesAnticipeesState: directivesAnticipeesState ?? this.directivesAnticipeesState,
      preventionState: preventionState ?? this.preventionState,
      monActuState: monActuState ?? this.monActuState,
      monHistoireDeSanteState: monHistoireDeSanteState ?? this.monHistoireDeSanteState,
      etablissementsDeSanteState: etablissementsDeSanteState ?? this.etablissementsDeSanteState,
      homeConnecteeMessagePanneState: homeConnecteeMessagePanneState ?? this.homeConnecteeMessagePanneState,
      catalogueServicesState: catalogueServicesState ?? this.catalogueServicesState,
      catalogueServiceConsentementsState: catalogueServiceConsentementsState ?? this.catalogueServiceConsentementsState,
      handicapsState: handicapsState ?? this.handicapsState,
      appUpdateState: appUpdateState ?? this.appUpdateState,
      nouvellesFonctionnalitesState: nouvellesFonctionnalitesState ?? this.nouvellesFonctionnalitesState,
      notificationCenterState: notificationCenterState ?? this.notificationCenterState,
      agendaState: agendaState ?? this.agendaState,
      enrolledDevicesState: enrolledDevicesState ?? this.enrolledDevicesState,
      entourageEtVolontesState: entourageEtVolontesState ?? this.entourageEtVolontesState,
      displayMainAppBar: displayMainAppBar ?? this.displayMainAppBar,
      professionalActivitiesState: professionalActivitiesState ?? this.professionalActivitiesState,
      matriceHabilitationState: matriceHabilitationState ?? this.matriceHabilitationState,
      incitationPmlState: incitationPmlState ?? this.incitationPmlState,
      incitationPmlCategoryState: incitationPmlCategoryState ?? this.incitationPmlCategoryState,
      helpdeskState: helpdeskState ?? this.helpdeskState,
      recommandationsState: recommandationsState ?? this.recommandationsState,
      questionnaireAgesClesState: questionnaireAgesClesState ?? this.questionnaireAgesClesState,
      bilanDePreventionState: bilanDePreventionState ?? this.bilanDePreventionState,
      addItemForFirstTimeState: addItemForFirstTimeState ?? this.addItemForFirstTimeState,
      notificationState: notificationState ?? this.notificationState,
      partagerProfilState: partagerProfilState ?? this.partagerProfilState,
      partagerProfilFormState: partagerProfilFormState ?? this.partagerProfilFormState,
      ajoutAdState: ajoutAdState ?? this.ajoutAdState,
      ayantsDroitsPendingInvitationsState:
          ayantsDroitsPendingInvitationsState ?? this.ayantsDroitsPendingInvitationsState,
      preferenceNotificationState: preferenceNotificationState ?? this.preferenceNotificationState,
      homeExamenRecommandesState: homeExamenRecommandesState ?? this.homeExamenRecommandesState,
      nousContacterState: nousContacterState ?? this.nousContacterState,
      faqState: faqState ?? this.faqState,
      onboardingState: onboardingState ?? this.onboardingState,
      raccourcisState: raccourcisState ?? this.raccourcisState,
      consentementExtractionDonneesSanteState:
          consentementExtractionDonneesSanteState ?? this.consentementExtractionDonneesSanteState,
      recommanderAppState: recommanderAppState ?? this.recommanderAppState,
      aidantState: aidantState ?? this.aidantState,
      aideState: aideState ?? this.aideState,
      interruptionServicesState: interruptionServicesState ?? this.interruptionServicesState,
      communesState: communesState ?? this.communesState,
      groupeSanguinState: groupeSanguinState ?? this.groupeSanguinState,
    );
  }

  @override
  List<Object?> get props => [
        ...super.props,
        documentsState,
        maladiesState,
        traitementsState,
        hospitalisationsState,
        allergiesState,
        vaccinationsState,
        habitudesDeVieState,
        antecedentsFamiliauxState,
        userState,
        documentToDisplayState,
        messagerieState,
        consentementsUrgenceState,
        consentementsPsListState,
        consentementsUrgenceEditState,
        professionnelsDeSanteState,
        searchEsState,
        synthesePdfState,
        snackbarContainerState,
        profilsRattachesState,
        mesuresState,
        courbesReferenceState,
        historiqueActivitesState,
        directivesAnticipeesState,
        preventionState,
        monHistoireDeSanteState,
        etablissementsDeSanteState,
        homeConnecteeMessagePanneState,
        catalogueServicesState,
        catalogueServiceConsentementsState,
        handicapsState,
        appUpdateState,
        nouvellesFonctionnalitesState,
        notificationCenterState,
        agendaState,
        enrolledDevicesState,
        displayMainAppBar,
        professionalActivitiesState,
        matriceHabilitationState,
        incitationPmlState,
        incitationPmlCategoryState,
        helpdeskState,
        monActuState,
        recommandationsState,
        questionnaireAgesClesState,
        bilanDePreventionState,
        addItemForFirstTimeState,
        notificationState,
        entourageEtVolontesState,
        partagerProfilState,
        partagerProfilFormState,
        ajoutAdState,
        ayantsDroitsPendingInvitationsState,
        preferenceNotificationState,
        homeExamenRecommandesState,
        nousContacterState,
        faqState,
        onboardingState,
        raccourcisState,
        consentementExtractionDonneesSanteState,
        recommanderAppState,
        aidantState,
        aideState,
        interruptionServicesState,
        communesState,
        groupeSanguinState,
      ];
}
