/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rappel_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_notes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examen_recommande_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_avant_18_ans_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappel_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappels_list_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rendez_vous_details_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aide_invitation_confirmation_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/attestation_pdf_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_info_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/liste_aides_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/recherche_aidant_form_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/resultat_recherche_aidant_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/revocation_acces_aidant_confirmation_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/revocation_acces_aide_confirmation_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_ticket_details_screen.dart';
import 'package:fr_cnamts_ens/aide/redux/aide_faq_redux.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_confirmation_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_non_activables_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/widgets/ayant_droits_invitation_confirmation_screen.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_detail_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_signaler_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_parametres_screen.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_screen.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/historique_analytics_screen.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_attachment_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_meta_data_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_detail_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_selection_items_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/images/multi_image_pdf_preview_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/selection_filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_confidentialite_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/files/redux/files_states.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/document_signalement_screen.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen.dart';
import 'package:fr_cnamts_ens/home/redux/home_examen_recommandes_redux.dart';
import 'package:fr_cnamts_ens/home/screens/home_screen.dart';
import 'package:fr_cnamts_ens/home/screens/ins_screen.dart';
import 'package:fr_cnamts_ens/home/screens/mon_espace_en_bref_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_reducer.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/screens/override_configuration_screen.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_container.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_screen.dart';
import 'package:fr_cnamts_ens/magical_page/magical_elements_list.dart';
import 'package:fr_cnamts_ens/magical_page/magical_page.dart';
import 'package:fr_cnamts_ens/messagerie/attachment_display/screens/attachment_display_screen.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_screen.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/conversation_reply_screen.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/select_destinataire_screen.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_states.dart';
import 'package:fr_cnamts_ens/notification_center/screens/notifications_center_screen.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_states.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_welcome_screen.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/screens/acces_ps_a_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/detail_droits_access_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/matrice_habilitation_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_states.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/consentements_urgence_screen.dart';
import 'package:fr_cnamts_ens/parameters/email/screens/change_email_screen.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/screens/enrolled_devices_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/partager_profil_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/acces_profil_proche_aide_information_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/cloture_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/gestion_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_form_confirmation_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_form_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/parameters/historique_et_donnees/screen/historique_et_donnees_screen.dart';
import 'package:fr_cnamts_ens/parameters/otp/screens/validate_otp_screen.dart';
import 'package:fr_cnamts_ens/parameters/password/screens/change_password_screen.dart';
import 'package:fr_cnamts_ens/parameters/phone/screens/change_phone_screen.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/screen/preference_notifications_screen.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_update_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/services_synchronises_screen.dart';
import 'package:fr_cnamts_ens/parameters/telecharger_mes_donnees/screen/telecharger_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/prevention/screens/bibliotheque_articles_de_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/old_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_detail_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_personnalisee_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/edit_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/antecedents_familiaux_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/edit_antecedent_familial_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/screen/bilan_de_prevention_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/screens/options_affichage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_remplir_formulaire_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/don_organes_volonte_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/edit_entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/groupe_sanguin_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/habitudes_de_vie_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/habitudes_de_vie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicap_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicaps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_states.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/edit_hospitalisation_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/hospitalisation_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/hospitalisations_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_category/incitation_pml_category_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_completed_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_welcome_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/associer_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/customize_mesures_list_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/last_mesures_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_information_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/redux/professional_activities_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/acteur_de_sante_suggestions_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_documents_list_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_signaler_acces_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/ps_confidentiality_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/redux/add_item_for_first_time_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/scanner_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_states.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_allergie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/carte_vaccinations_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/carte_vaccinations_zoom_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccination_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/redux/profils_rattaches_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_rattaches_invitations_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_welcome_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/start_new_version_questionnaire_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/screens/synthese_questionnaire_ages_cles_screen.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:fr_cnamts_ens/raccourcis/screens/gerer_raccourcis_screen.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/scanner/screens/scanner_carte_vitale_delegation_screen.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_screen.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_container.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_material_app.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_material_page_route.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_states.dart';
import 'package:fr_cnamts_ens/user/cgu/screen/accept_cgu_screen.dart';
import 'package:fr_cnamts_ens/user/redux/states/user_states.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:redux/redux.dart';

class EnsApp extends StatefulWidget {
  const EnsApp({super.key});

  @override
  State<EnsApp> createState() => _EnsAppState();
}

// Must be state full for hot reload don't reset the store
// ignore: unnecessary_statefull_widget
class _EnsAppState extends State<EnsApp> {
  final Store<EnsState> _store;

  _EnsAppState._internal(this._store);

  factory _EnsAppState() {
    final injector = EnsModuleContainer.currentInjector;
    final store = Store<EnsState>(
      ensReducer,
      initialState: const EnsState(
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
      ),
      middleware: createEnsMiddlewares(
        remoteConfigWrapper: injector.getRemoteConfigWrapper(),
        userRepository: injector.getUserRepository(),
        documentsRepository: injector.getDocumentsRepository(),
        authInteractor: injector.getAuthInteractor(),
        maladiesRepository: injector.getMaladiesRepository(),
        traitementsRepository: injector.getTraitementsRepository(),
        hospitalisationsRepository: injector.getHospitalisationsRepository(),
        allergiesRepository: injector.getAllergiesRepository(),
        vaccinationsRepository: injector.getVaccinationsRepository(),
        habitudesVieRepository: injector.getHabitudesVieRepository(),
        antecedentFamiliauxRepository: injector.getAntecedentsFamiliauxRepository(),
        userDataRepository: injector.getUserDataRepository(),
        documentsInteractor: injector.getDocumentInteractor(),
        filePreprocessor: injector.getFilePreprocessor(),
        pdfGenerator: injector.getPdfGenerator(),
        messagerieRepository: injector.getMessagerieRepository(),
        fileStorage: injector.getFileStorage(),
        consentementsPsRepository: injector.getConsentementsPsRepository(),
        consentementsUrgenceRepository: injector.getConsentementsUrgenceRepository(),
        synthesePmlRepository: injector.getSynthesePmlRepository(),
        ayantsDroitsRepository: injector.getAyantsDroitsRepository(),
        clipboardWrapper: injector.getClipboardWrapper(),
        mesuresRepository: injector.getMesuresRepository(),
        courbesReferenceRepository: injector.getCourbesReferenceRepository(),
        analytics: injector.getEnsAnalytics(),
        privacy: injector.getEnsPrivacy(),
        cguRepository: injector.getCguRepository(),
        historiqueActivitesRepository: injector.getHistoriqueActivitesRepository(),
        hospitalisationInteractor: injector.getHospitalisationInteractor(),
        directivesAnticipeesRepository: injector.getDirectivesAnticipeesRepository(),
        preventionRepository: injector.getPreventionRepository(),
        matriceHabilitationRepository: injector.getMatriceHabilitationRepository(),
        searchPsRepository: injector.getRecherchePsRepository(),
        searchEsRepository: injector.getSearchEsRepository(),
        professionalActivitiesRepository: injector.getProfessionalActivitiesRepository(),
        appRatingRepository: injector.getAppRatingRepository(),
        unconcernedRepository: injector.getUnconcernedRepository(),
        maladiesInteractor: injector.getMaladiesInteractor(),
        psRepository: injector.getProfessionnelsDeSanteRepository(),
        monHistoireDeSanteRepository: injector.getMonHistoireDeSanteRepository(),
        healthcareEntitiesRepository: injector.getHealthcareEntitiesRepository(),
        messagesPannesRepository: injector.getMessagesPannesRepository(),
        catalogueServicesRepository: injector.getCatalogueServicesRepository(),
        notificationsRepository: injector.getNotificationRepository(),
        handicapsRepository: injector.getHandicapsRepository(),
        nouvellesFonctionnalitesRepository: injector.getNouvellesFonctionnalitesRepository(),
        appUpdateRepository: injector.getAppUpdateRepository(),
        notificationCenterRepository: injector.getNotificationCenterRepository(),
        agendaRepository: injector.getAgendaRepository(),
        enrolledDevicesRepository: injector.getEnrolledDevicesRepository(),
        catalogueServicesConsentementsRepository: injector.getCatalogueServicesConsentementsRepository(),
        createEntourageContactRepository: injector.getCreateEntourageContactRepository(),
        linksRepository: injector.getLinksRepository(),
        linksInMemoryInteractor: injector.getLinksInMemoryRepository(),
        secureStorageRepository: injector.getSecureStorageRepository(),
        tracesRepository: injector.getTracesRepository(),
        helpdeskRepository: injector.getHelpdeskRepository(),
        recommandationsRepository: injector.getRecommandationsRepository(),
        questionnaireAgesClesRepository: injector.getAgesClesRepository(),
        bilanDePreventionRepository: injector.getBilanDePreventionRepository(),
        syntheseQuestionnaireAgesClesRepository: injector.getSyntheseQuestionnaireAgesClesRepository(),
        addVaccinationForFirstTimeRepository: injector.getAddVaccinationFirstTimeRepository(),
        ouvrantDroitRepository: injector.getOuvrantDroitRepository(),
        dechiffrementRepository: injector.getDechiffrementRepository(),
        partagerProfilRepository: injector.getPartagerProfilRepository(),
        ajoutAdRepository: injector.getAjoutAdRepository(),
        offlineUserDataRepository: injector.getOfflineUserDataRepository(),
        preferenceNotificationRepository: injector.getPreferenceNotificationRepository(),
        nousContacterRepository: injector.getNousContacterRepository(),
        isGuestMode: injector.isGuestMode(),
        aideFaqRepository: injector.getAideFaqRepository(),
        onboardingRepository: injector.getOnboardingRepository(),
        raccourcisRepository: injector.getRaccourcisRepository(),
        consentementExtractionDonneesSanteRepository: injector.getConsentementExtractionDonneesSanteRepository(),
        recommanderAppRepository: injector.getRecommanderAppRepository(),
        aidantsAidesRepository: injector.getAidantsAidesRepository(),
        interruptionServiceRepository: injector.getInterruptionServiceRepository(),
        searchCommunesRepository: injector.getSearchCityRepository(),
        analyticsHook: injector.getAnalyticsHook(),
        groupeSanguinRepository: injector.getGroupeSanguinRepository(),
        logoutWrapper: injector.getLogoutWrapper(),
        allergiesInteractor: injector.getAllergiesInteractor(),
      ),
    );

    injector.getEnsStoreDependants().forEach((storeDependant) {
      storeDependant.initForEnsStore(store);
    });
    return _EnsAppState._internal(store);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.white),
    );
    return StoreProvider<EnsState>(
      store: _store,
      child: StoreBuilder<EnsState>(
        onInit: (store) {
          store.dispatch(InitEnsUserAction());
        },
        rebuildOnChange: false,
        builder: (_, __) => EnsMaterialApp(
          navigatorKey: EnsModuleContainer.currentInjector.getNavigatorKey(),
          // home equivaut à routeName = '/' si on n'utilise pas initialRoute => utile pour le snackbar_container.dart
          // on utilise home pour les deeplink sur ios et android
          home: const BottomNavigationTabsScreen(),
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case HomeScreen.deeplinkRouteName:
                (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)
                    ?.onTap(0);
              case BottomNavigationTabsScreen.routeName:
                return MaterialPageRoute(
                  builder: (_) => const BottomNavigationTabsScreen(),
                  settings: settings,
                );
              case OnboardingWelcomeScreen.routeName:
                return ensMaterialPageRoute(child: const OnboardingWelcomeScreen(), settings: settings);
              case OnboardingConfidentialiteDocumentsScreen.routeName:
                return ensMaterialPageRoute(
                  child: const OnboardingConfidentialiteDocumentsScreen(),
                  settings: settings,
                );
              case AgendaScreen.routeName:
                return ensMaterialPageRoute(child: const AgendaScreen(), settings: settings);
              case ExamenRecommandeDetailScreen.routeName:
                return ensMaterialPageRoute(child: const ExamenRecommandeDetailScreen(), settings: settings);
              case RendezVousDetailsScreen.routeName:
                return ensMaterialPageRoute(child: RendezVousDetailsScreen(), settings: settings);
              case ExamensRecommandesScreen.routeName:
                return ensMaterialPageRoute(child: const ExamensRecommandesScreen(), settings: settings);
              case ExamensRecommandesAvant18AnsScreen.routeName:
                return ensMaterialPageRoute(child: const ExamensRecommandesAvant18AnsScreen(), settings: settings);
              case RappelDetailScreen.routeName:
                return ensMaterialPageRoute(child: RappelDetailScreen(), settings: settings);
              case RappelsListScreen.routeName:
                return ensMaterialPageRoute(child: const RappelsListScreen(), settings: settings);
              case OverrideConfigurationScreen.routeName:
                return ensMaterialPageRoute(child: const OverrideConfigurationScreen(), settings: settings);
              case MagicalPageScreen.routeName:
                return ensMaterialPageRoute(child: MagicalPageScreen(), settings: settings);
              case MagicalElementsListScreen.routeName:
                return ensMaterialPageRoute(child: MagicalElementsListScreen(), settings: settings);
              case CreateDocumentFromAttachmentScreen.routeName:
                return ensMaterialPageRoute(child: const CreateDocumentFromAttachmentScreen(), settings: settings);
              case CreateDocumentFromFileScreen.routeName:
                return ensMaterialPageRoute(child: CreateDocumentFromFileScreen(), settings: settings);
              case UpdateDocumentScreen.routeName:
                return ensMaterialPageRoute(child: const UpdateDocumentScreen(), settings: settings);
              case ProfilsRattachesInvitationsScreen.routeName:
                return ensMaterialPageRoute(child: const ProfilsRattachesInvitationsScreen(), settings: settings);
              case DossierDetailScreen.routeName:
                return ensMaterialPageRoute(child: const DossierDetailScreen(), settings: settings);
              case DossierSelectionItemsScreen.routeName:
                return ensMaterialPageRoute(child: DossierSelectionItemsScreen(), settings: settings);
              case MaladiesScreen.routeName:
                return ensMaterialPageRoute(child: MaladiesScreen(), settings: settings);
              case MaladieDetailsScreen.routeName:
                return ensMaterialPageRoute(child: const MaladieDetailsScreen(), settings: settings);
              case EditMaladieScreen.routeName:
                return ensMaterialPageRoute(child: EditMaladieScreen(), settings: settings);
              case TraitementsScreen.routeName:
                return ensMaterialPageRoute(child: const TraitementsScreen(), settings: settings);
              case TraitementDetailScreen.routeName:
                return ensMaterialPageRoute(child: const TraitementDetailScreen(), settings: settings);
              case TraitementMaladieScreen.routeName:
                return ensMaterialPageRoute(child: const TraitementMaladieScreen(), settings: settings);
              case TraitementAllergieScreen.routeName:
                return ensMaterialPageRoute(child: const TraitementAllergieScreen(), settings: settings);
              case EditTraitementScreen.routeName:
                return ensMaterialPageRoute(child: EditTraitementScreen(), settings: settings);
              case HospitalisationsScreen.routeName:
                return ensMaterialPageRoute(child: HospitalisationsScreen(), settings: settings);
              case EditHospitalisationScreen.routeName:
                return ensMaterialPageRoute(child: EditHospitalisationScreen(), settings: settings);
              case HospitalisationDetailsScreen.routeName:
                return ensMaterialPageRoute(child: const HospitalisationDetailsScreen(), settings: settings);
              case ChangeEmailScreen.routeName:
                return ensMaterialPageRoute(child: ChangeEmailScreen(), settings: settings);
              case AjoutAdNonActivableScreen.routeName:
                return ensMaterialPageRoute(child: const AjoutAdNonActivableScreen(), settings: settings);
              case ChangePasswordScreen.routeName:
                return ensMaterialPageRoute(child: ChangePasswordScreen(), settings: settings);
              case ChangePhoneScreen.routeName:
                return ensMaterialPageRoute(child: ChangePhoneScreen(), settings: settings);
              case ValidateOtpScreen.routeName:
                return ensMaterialPageRoute(child: const ValidateOtpScreen(), settings: settings);
              case AntecedentsFamiliauxScreen.routeName:
                return ensMaterialPageRoute(child: AntecedentsFamiliauxScreen(), settings: settings);
              case EditAntecedentFamilialScreen.routeName:
                return ensMaterialPageRoute(child: const EditAntecedentFamilialScreen(), settings: settings);
              case AllergiesScreen.routeName:
                return ensMaterialPageRoute(child: AllergiesScreen(), settings: settings);
              case EditAllergieScreen.routeName:
                return ensMaterialPageRoute(child: const EditAllergieScreen(), settings: settings);
              case AllergieDetailScreen.routeName:
                return ensMaterialPageRoute(child: const AllergieDetailScreen(), settings: settings);
              case EditEntourageScreen.routeName:
                return ensMaterialPageRoute(child: EditEntourageScreen(), settings: settings);
              case EntourageEnSavoirPlusScreen.routeName:
                return ensMaterialPageRoute(child: EntourageEnSavoirPlusScreen(), settings: settings);
              case VaccinationsScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.VACCINATION,
                      from: InterruptionServiceScreenName.VACCINATION,
                    ),
                    child: VaccinationsScreen(),
                  ),
                  settings: settings,
                );
              case EditVaccinationScreen.routeName:
                return ensMaterialPageRoute(child: const EditVaccinationScreen(), settings: settings);
              case DocumentPreviewScreen.routeName:
                return ensMaterialPageRoute(child: DocumentPreviewScreen(), settings: settings);
              case VaccinationDetailScreen.routeName:
                return ensMaterialPageRoute(child: VaccinationDetailScreen(), settings: settings);
              case HabitudesDeVieScreen.routeName:
                return ensMaterialPageRoute(child: HabitudesDeVieScreen(), settings: settings);
              case HabitudesDeVieDetailsScreen.routeName:
                return ensMaterialPageRoute(child: HabitudesDeVieDetailsScreen(), settings: settings);
              case ParametersScreen.routeName:
                return ensMaterialPageRoute(child: ParametersScreen(), settings: settings);
              case ConversationContentScreen.routeName:
                return ensMaterialPageRoute(child: ConversationContentScreen(), settings: settings);
              case ConversationReplyScreen.routeName:
                return ensMaterialPageRoute(child: const ConversationReplyScreen(), settings: settings);
              case NewConversationScreen.routeName:
                return ensMaterialPageRoute(child: NewConversationScreen(), settings: settings);
              case SelectDestinataireScreen.routeName:
                return PageRouteBuilder(
                  pageBuilder: (_, __, ___) => SnackbarContainer(child: SelectDestinataireScreen()),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                  settings: settings,
                );
              case DocumentMetadataScreen.routeName:
                return ensMaterialPageRoute(child: DocumentMetadataScreen(), settings: settings);
              case AttachmentDisplayScreen.routeName:
                return ensMaterialPageRoute(child: AttachmentDisplayScreen(), settings: settings);
              case ConsentementsUrgenceScreen.routeName:
                return ensMaterialPageRoute(child: const ConsentementsUrgenceScreen(), settings: settings);
              case ConsentementsPsScreen.routeName:
                return ensMaterialPageRoute(child: const ConsentementsPsScreen(), settings: settings);
              case ConsentementsPsEnSavoirPlusScreen.routeName:
                return ensMaterialPageRoute(child: const ConsentementsPsEnSavoirPlusScreen(), settings: settings);
              case DetailDroitsAccesScreen.routeName:
                return ensMaterialPageRoute(child: DetailDroitsAccesScreen(), settings: settings);
              case EntourageScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.DOCUMENTS,
                      from: InterruptionServiceScreenName.ENTOURAGE,
                    ),
                    child: EntourageScreen(),
                  ),
                  settings: settings,
                );
              case SynthesePmlScreen.routeName:
                return ensMaterialPageRoute(child: SynthesePmlScreen(), settings: settings);
              case LastMesuresScreen.routeName:
                return ensMaterialPageRoute(child: LastMesuresScreen(), settings: settings);
              case MesureHistoryScreen.routeName:
                return ensMaterialPageRoute(child: MesureHistoryScreen(), settings: settings);
              case AcceptCguScreen.routeName:
                return ensMaterialPageRoute(child: AcceptCguScreen(), settings: settings);
              case ChooseEnsDocumentsScreen.routeName:
                return ensMaterialPageRoute(child: const ChooseEnsDocumentsScreen(), settings: settings);
              case MonHistoireDeSanteScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.EPISODE_DE_SANTE,
                      from: InterruptionServiceScreenName.MHS,
                    ),
                    child: MonHistoireDeSanteScreen(),
                  ),
                  settings: settings,
                );
              case MonHistoireDeSanteDetailScreen.routeName:
                return ensMaterialPageRoute(child: MonHistoireDeSanteDetailScreen(), settings: settings);
              case HistoriqueActivitesScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.DOCUMENTS,
                      from: InterruptionServiceScreenName.HISTORIQUE_ACTIVITE,
                    ),
                    child: HistoriqueActivitesScreen(),
                  ),
                  settings: settings,
                );
              case DirectivesAnticipeesScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.DOCUMENTS,
                      from: InterruptionServiceScreenName.DIRECTIVES_ANTICIPEES,
                    ),
                    child: DirectivesAnticipeesScreen(),
                  ),
                  settings: settings,
                );
              case DirectivesAnticipeesRemplirFormulaireScreen.routeName:
                return ensMaterialPageRoute(
                  child: DirectivesAnticipeesRemplirFormulaireScreen(),
                  settings: settings,
                );
              case AccesPsAMesDonneesScreen.routeName:
                return ensMaterialPageRoute(
                  child: const AccesPsAMesDonneesScreen(),
                  settings: settings,
                );
              case ConfidentialiteDocumentsScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.DOCUMENTS,
                      from: InterruptionServiceScreenName.CONFIDENTIALITE_DES_INFOS,
                    ),
                    child: ConfidentialiteDocumentsScreen(),
                  ),
                  settings: settings,
                );
              case PreventionDetailScreen.routeName:
                return ensMaterialPageRoute(child: PreventionDetailScreen(), settings: settings);
              case MultiImagesPdfPreviewScreen.routeName:
                return ensMaterialPageRoute(
                  child: MultiImagesPdfPreviewScreen(),
                  settings: settings,
                  fullscreenDialog: true,
                );
              case RecherchePsScreen.routeName:
                return ensMaterialPageRoute(child: RecherchePsScreen(), settings: settings);
              case ActeurDeSanteSuggestionsScreen.routeName:
                return ensMaterialPageRoute(child: const ActeurDeSanteSuggestionsScreen(), settings: settings);
              case CarteVaccinationsDetailScreen.routeName:
                return ensMaterialPageRoute(child: CarteVaccinationsDetailScreen(), settings: settings);
              case CarteVaccinationsZoomScreen.routeName:
                return ensMaterialPageRoute(child: CarteVaccinationsZoomScreen(), settings: settings);
              case ProfessionnelsDeSanteScreen.routeName:
                return ensMaterialPageRoute(child: ProfessionnelsDeSanteScreen(), settings: settings);
              case ProfessionnelDeSanteDetailScreen.routeName:
                return ensMaterialPageRoute(child: ProfessionnelDeSanteDetailScreen(), settings: settings);
              case PsConfidentialityEnSavoirPlusScreen.routeName:
                return ensMaterialPageRoute(child: PsConfidentialityEnSavoirPlusScreen(), settings: settings);
              case ProfessionnelDeSanteDocumentsListScreen.routeName:
                return ensMaterialPageRoute(child: ProfessionnelDeSanteDocumentsListScreen(), settings: settings);
              case ProfessionnelDeSanteSignalerAccesScreen.routeName:
                return ensMaterialPageRoute(child: ProfessionnelDeSanteSignalerAccesScreen(), settings: settings);
              case OldPreventionScreen.routeName:
                return ensMaterialPageRoute(child: const OldPreventionScreen(), settings: settings);
              case BibliothequeArticlesDePreventionScreen.routeName:
                return ensMaterialPageRoute(child: const BibliothequeArticlesDePreventionScreen(), settings: settings);
              case PreventionPersonnaliseeScreen.routeName:
                return ensMaterialPageRoute(child: const PreventionPersonnaliseeScreen(), settings: settings);
              case EtablissementDeSanteDetailScreen.routeName:
                return ensMaterialPageRoute(child: const EtablissementDeSanteDetailScreen(), settings: settings);
              case FilterResultScreen.routeName:
                final argument = (settings.arguments! as List)[0] as FilterResultScreenArgument;
                if (argument.shouldAnimateNewScreen) {
                  return ensMaterialPageRoute(child: FilterResultScreen(), settings: settings);
                } else {
                  return PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SnackbarContainer(child: FilterResultScreen()),
                    settings: settings,
                    transitionDuration: const Duration(milliseconds: 1000),
                    reverseTransitionDuration: const Duration(milliseconds: 100),
                  );
                }
              case SelectionFilterResultScreen.routeName:
                return MaterialPageRoute(builder: (_) => SelectionFilterResultScreen(), settings: settings);
              case CatalogueServicesScreen.routeName:
                return ensMaterialPageRoute(child: CatalogueServicesScreen(), settings: settings);
              case CatalogueServicesDetailScreen.routeName:
                return ensMaterialPageRoute(child: CatalogueServicesDetailScreen(), settings: settings);
              case CatalogueServicesSignalerScreen.routeName:
                return ensMaterialPageRoute(child: CatalogueServicesSignalerScreen(), settings: settings);
              case HandicapsScreen.routeName:
                return ensMaterialPageRoute(child: const HandicapsScreen(), settings: settings);
              case EditHandicapScreen.routeName:
                return ensMaterialPageRoute(child: EditHandicapScreen(), settings: settings);
              case ClotureProfilScreen.routeName:
                return ensMaterialPageRoute(child: const ClotureProfilScreen(), settings: settings);
              case PreferenceNotificationsScreen.routeName:
                return ensMaterialPageRoute(child: const PreferenceNotificationsScreen(), settings: settings);
              case PartagerProfilScreen.routeName:
                return ensMaterialPageRoute(child: const PartagerProfilScreen(), settings: settings);
              case PartagerProfilFormScreen.routeName:
                return ensMaterialPageRoute(child: PartagerProfilFormScreen(), settings: settings);
              case PartagerProfilFormConfirmationScreen.routeName:
                return ensMaterialPageRoute(child: PartagerProfilFormConfirmationScreen(), settings: settings);
              case HistoriqueEtDonneesScreen.routeName:
                return ensMaterialPageRoute(child: HistoriqueEtDonneesScreen(), settings: settings);
              case TelechargerDonneesScreen.routeName:
                return ensMaterialPageRoute(child: const TelechargerDonneesScreen(), settings: settings);
              case HandicapDetailsScreen.routeName:
                return ensMaterialPageRoute(child: HandicapDetailsScreen(), settings: settings);
              case CatalogueServicesEnSavoirPlusScreen.routeName:
                return ensMaterialPageRoute(child: const CatalogueServicesEnSavoirPlusScreen(), settings: settings);
              case NotificationsCenterScreen.routeName:
                return ensMaterialPageRoute(child: NotificationsCenterScreen(), settings: settings);
              case CustomizeMesuresListScreen.routeName:
                return ensMaterialPageRoute(child: const CustomizeMesuresListScreen(), settings: settings);
              case ServicesSynchronisesScreen.routeName:
              case ServicesSynchronisesScreen.deeplinkRouteName:
                return ensMaterialPageRoute(child: const ServicesSynchronisesScreen(), settings: settings);
              case EditRendezVousScreen.routeName:
                return ensMaterialPageRoute(child: const EditRendezVousScreen(), settings: settings);
              case EditRendezVousNotesScreen.routeName:
                return ensMaterialPageRoute(child: EditRendezVousNotesScreen(), settings: settings);
              case EditRappelScreen.routeName:
                return ensMaterialPageRoute(child: EditRappelScreen(), settings: settings);
              case MonEspaceEnBrefScreen.routeName:
                return ensMaterialPageRoute(child: const MonEspaceEnBrefScreen(), settings: settings);
              case EnrolledDevicesScreen.routeName:
                return ensMaterialPageRoute(child: EnrolledDevicesScreen(), settings: settings);
              case ServiceSynchroniseConsentementsScreen.routeName:
                return ensMaterialPageRoute(child: const ServiceSynchroniseConsentementsScreen(), settings: settings);
              case OptionsAffichageScreen.routeName:
                return ensMaterialPageRoute(child: const OptionsAffichageScreen(), settings: settings);
              case DonOrganesVolonteScreen.routeName:
                return ensMaterialPageRoute(child: DonOrganesVolonteScreen(), settings: settings);
              case MesureInformationScreen.routeName:
                return ensMaterialPageRoute(child: const MesureInformationScreen(), settings: settings);
              case UpdateConfidentialiteDocumentScreen.routeName:
                return ensMaterialPageRoute(child: const UpdateConfidentialiteDocumentScreen(), settings: settings);
              case InsScreen.routeName:
                return ensMaterialPageRoute(child: const InsScreen(), settings: settings);
              case MatriceHabilitationScreen.routeName:
                return ensMaterialPageRoute(child: const MatriceHabilitationScreen(), settings: settings);
              case IncitationPmlScreen.routeName:
                return ensMaterialPageRoute(child: const IncitationPmlScreen(), settings: settings);
              case IncitationPmlCompletedScreen.routeName:
                return ensMaterialPageRoute(child: const IncitationPmlCompletedScreen(), settings: settings);
              case DocumentSignalementScreen.routeName:
                return ensMaterialPageRoute(child: const DocumentSignalementScreen(), settings: settings);
              case IncitationPmlWelcomeScreen.routeName:
                return ensMaterialPageRoute(child: const IncitationPmlWelcomeScreen(), settings: settings);
              case RechercheEsScreen.routeName:
                return ensMaterialPageRoute(child: RechercheEsScreen(), settings: settings);
              case NouvelleDemandeFormulaireScreen.routeName:
                return ensMaterialPageRoute(child: NouvelleDemandeFormulaireScreen(), settings: settings);
              case QuestionnaireAgesClesWelcomeScreen.routeName:
                return ensMaterialPageRoute(child: const QuestionnaireAgesClesWelcomeScreen(), settings: settings);
              case StartNewVersionQuestionnaireScreen.routeName:
                return ensMaterialPageRoute(child: const StartNewVersionQuestionnaireScreen(), settings: settings);
              case QuestionnaireAgesClesQuestionScreen.routeName:
                return ensMaterialPageRoute(child: const QuestionnaireAgesClesQuestionScreen(), settings: settings);
              case SyntheseQuestionnaireAgesClesScreen.routeName:
                return ensMaterialPageRoute(child: const SyntheseQuestionnaireAgesClesScreen(), settings: settings);
              case ScannerScreen.routeName:
                return ensMaterialPageRoute(child: const ScannerScreen(), settings: settings);
              case AjoutAdScreen.routeName:
                return ensMaterialPageRoute(child: AjoutAdScreen(), settings: settings);
              case AjoutAdConfirmationScreen.routeName:
                return ensMaterialPageRoute(child: AjoutAdConfirmationScreen(), settings: settings);
              case AyantDroitsInvitationConfirmationScreen.routeName:
                return ensMaterialPageRoute(
                  child: const AyantDroitsInvitationConfirmationScreen(),
                  settings: settings,
                );
              case AideScreen.routeName:
                return ensMaterialPageRoute(child: AideScreen(), settings: settings);
              case NousContacterScreen.routeName:
                return ensMaterialPageRoute(
                  child: InterruptionServiceContainer(
                    composant: const DomaineInterruptionFullscreenComposant(
                      domaineInterruption: DomaineInterruption.ESPACE_ECHANGE,
                      from: InterruptionServiceScreenName.NOUS_CONTACTER,
                    ),
                    child: NousContacterScreen(),
                  ),
                  settings: settings,
                );
              case NousContacterTicketDetailsScreen.routeName:
                return ensMaterialPageRoute(child: NousContacterTicketDetailsScreen(), settings: settings);
              case BilanDePreventionScreen.routeName:
                return ensMaterialPageRoute(child: BilanDePreventionScreen(), settings: settings);
              case GererRaccourcisScreen.routeName:
                return ensMaterialPageRoute(child: const GererRaccourcisScreen(), settings: settings);
              case ConsentementExtractionDonneesSanteScreen.routeName:
                return ensMaterialPageRoute(
                  child: const ConsentementExtractionDonneesSanteScreen(),
                  settings: settings,
                );
              case ConsentementExtractionDonneesSanteParametresScreen.routeName:
                return ensMaterialPageRoute(
                  child: ConsentementExtractionDonneesSanteParametresScreen(),
                  settings: settings,
                );
              case DonnerAccesMonProfilScreen.routeName:
                return ensMaterialPageRoute(child: DonnerAccesMonProfilScreen(), settings: settings);
              case RechercheAidantFormScreen.routeName:
                return ensMaterialPageRoute(child: RechercheAidantFormScreen(), settings: settings);
              case ResultatRechercheAidantScreen.routeName:
                return ensMaterialPageRoute(child: ResultatRechercheAidantScreen(), settings: settings);
              case DonnerAccesMonProfilInfoScreen.routeName:
                return ensMaterialPageRoute(child: DonnerAccesMonProfilInfoScreen(), settings: settings);
              case AideInvitationConfirmationScreen.routeName:
                return ensMaterialPageRoute(
                  child: const AideInvitationConfirmationScreen(),
                  settings: settings,
                );
              case ListeAidesScreen.routeName:
                return ensMaterialPageRoute(child: ListeAidesScreen(), settings: settings);
              case ScannerCarteVitaleDelegationScreen.routeName:
                return ensMaterialPageRoute(
                  child: const ScannerCarteVitaleDelegationScreen(),
                  settings: settings,
                );
              case RevocationAccesAidantConfirmationScreen.routeName:
                return ensMaterialPageRoute(
                  child: RevocationAccesAidantConfirmationScreen(),
                  settings: settings,
                );
              case AttestationPdfScreen.routeName:
                return ensMaterialPageRoute(
                  child: AttestationPdfScreen(),
                  settings: settings,
                );
              case RevocationAccesAideConfirmationScreen.routeName:
                return ensMaterialPageRoute(
                  child: RevocationAccesAideConfirmationScreen(),
                  settings: settings,
                );
              case HistoriqueAnalyticsScreen.routeName:
                return ensMaterialPageRoute(
                  child: const HistoriqueAnalyticsScreen(),
                  settings: settings,
                );
              case GroupeSanguinScreen.routeName:
                return ensMaterialPageRoute(
                  child: const GroupeSanguinScreen(),
                  settings: settings,
                );
              case ServiceSynchroniseUpdateConsentementsScreen.routeName:
                return ensMaterialPageRoute(
                  child: const ServiceSynchroniseUpdateConsentementsScreen(),
                  settings: settings,
                );
              case AssocierTraitementScreen.routeName:
                return ensMaterialPageRoute(
                  child: const AssocierTraitementScreen(),
                  settings: settings,
                );
              case GestionProfilScreen.routeName:
                return ensMaterialPageRoute(
                  child: GestionProfilScreen(),
                  settings: settings,
                );
              case AccesProfilProcheAideInformationScreen.routeName:
                return ensMaterialPageRoute(
                  child: AccesProfilProcheAideInformationScreen(),
                  settings: settings,
                );
            }
            return null;
          },
        ),
      ),
    );
  }
}
