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
import 'package:fr_cnamts_ens/bottom_navigation_tabs/redux/main_app_bar_reducers.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/home/redux/home_examen_recommandes_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_reducers.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_reducers.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_reducers.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/partager_profil_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_reducers.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_reducers.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_category/incitation_pml_category_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_reducers.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/redux/professional_activities_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/redux/search_ps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_reducers.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_reducers.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_reducers.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_reducers.dart';
import 'package:fr_cnamts_ens/user/cgu/redux/cgu_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_reducers.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class EnsPatientRelatedReducer<Action extends EnsPatientRelatedAction> extends TypedReducer<EnsState, Action> {
  EnsPatientRelatedReducer(super.reducer);

  @override
  EnsState call(EnsState state, dynamic action) {
    if (action is Action && UserSelectors.getPatientId(state) == action.patientId) {
      return super.reducer(state, action);
    }
    return state;
  }
}

final ensReducer = combineReducers<EnsState>([
  ...DocumentsReducers.create(),
  ...MaladiesReducers.create(),
  ...TraitementsReducers.create(),
  ...HospitalisationsReducers.create(),
  ...UserReducers.create(),
  ...CguReducers.create(),
  ...AllergiesReducers.create(),
  ...AntecedentsFamiliauxReducers.create(),
  ...VaccinationsReducers.create(),
  ...HabitudesDeVieReducers.create(),
  ...MessagerieReducers.create(),
  ...ConsentementsUrgenceReducers.create(),
  ...ConsentementsPsReducers.create(),
  ...ProfessionnelsDeSanteReducers.create(),
  ...SynthesePdfReducers.create(),
  ...SnackbarReducers.create(),
  ...AyantsDroitsReducers.create(),
  ...MesuresReducers.create(),
  ...CourbesReferenceReducers.create(),
  ...HistoriqueActivitesReducers.create(),
  ...DirectivesAnticipeesReducers.create(),
  ...PreventionReducers.create(),
  ...SearchPsReducers.create(),
  ...SearchEsReducers.create(),
  ...AppRatingReducers.create(),
  ...UnconcernedReducers.create(),
  ...MonHistoireDeSanteReducers.create(),
  ...EtablissementsDeSanteReducers.create(),
  ...MessagesPannesReducers.create(),
  ...CatalogueServicesReducers.create(),
  ...CatalogueServicesConsentementsReducers.create(),
  ...HandicapsReducers.create(),
  ...NouvellesFonctionnalitesReducers.create(),
  ...AppUpdateReducers.create(),
  ...NotificationCenterReducers.create(),
  ...RendezVousReducers.create(),
  ...RappelsReducers.create(),
  ...ExamensReducers.create(),
  ...EnrolledDevicesReducers.create(),
  ...EntourageEtVolonteReducers.create(),
  ...MainAppBarReducers.create(),
  ...ProfessionalActivitiesReducers.create(),
  ...MatriceHabilitationReducers.create(),
  ...IncitationPmlReducers.create(),
  ...AddCategoryIncitationPmlReducers.create(),
  ...HelpdeskReducers.create(),
  ...RecommandationsReducers.create(),
  ...QuestionnaireAgesClesReducers.create(),
  ...BilanDePreventionReducers.create(),
  ...AddItemForFirstTimeReducers.create(),
  ...NotificationReducers.create(),
  ...PartagerProfilReducers.create(),
  ...PartagerProfilFormReducers.create(),
  ...AjoutAdReducers.create(),
  ...PreferenceNotificationReducers.create(),
  ...HomeExamenRecommandesReducers.create(),
  ...NousContacterReducers.create(),
  ...AideFaqReducers.create(),
  ...OnboardingReducers.create(),
  ...RaccourcisReducers.create(),
  ...ConsentementExtractionDonneesSanteReducers.create(),
  ...RecommanderAppReducers.create(),
  ...AidantReducers.create(),
  ...AideReducers.create(),
  ...InterruptionServicesReducer.create(),
  ...SearchCommunesReducers.create(),
  ...GroupeSanguinReducers.create(),
]);
