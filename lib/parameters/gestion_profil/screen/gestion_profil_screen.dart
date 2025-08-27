/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_parametres_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/consentements_urgence_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/acces_profil_proche_aide_information_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/cloture_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/view_model/gestion_profil_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_menu_item.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/services_synchronises_screen.dart';
import 'package:fr_cnamts_ens/parameters/telecharger_mes_donnees/screen/telecharger_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_personnalisee_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/parameters/tags_gestion_profil.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class GestionProfilScreen extends StatelessWidget {
  static const routeName = '/gestion-profil';

  @override
  Widget build(BuildContext context) {
    final aidantsAidesEnabled = isAidantsAidesEnabled;
    return StoreConnector<EnsState, GestionProfilScreenViewModel>(
      converter: (store) => GestionProfilScreenViewModel.from(
        store,
        EnsModuleContainer.commonInjector!.getRemoteConfigWrapper(),
        isAidantsAidesEnabled: aidantsAidesEnabled,
      ),
      distinct: true,
      onInitialBuild: (_) {
        context.tagAction(TagsGestionProfil.tag_2667_gerer_profil);
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Gérer le profil',
          action: vm.profilType.isAide
              ? EnsInfoButton(
                  onTap: () {
                    Navigator.pushNamed(context, AccesProfilProcheAideInformationScreen.routeName);
                  },
                )
              : null,
        ),
        body: SafeArea(child: _Content(vm)),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final GestionProfilScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  EnsSvg(
                    EnsImages.ic_header_main_user_background,
                    color: vm.profileColor,
                    width: vm.profilType.isProfilPrincipal ? 38 : 32,
                    height: vm.profilType.isProfilPrincipal ? 38 : 32,
                    placeholderBuilder: (_) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: EnsColors.primary,
                          borderRadius: BorderRadius.circular(80),
                        ),
                      ),
                    ),
                  ),
                  EnsSvg(vm.profilType.profilIcon, width: 16, height: 16, color: Colors.white),
                ],
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  vm.profileName,
                  style: EnsTextStyle.text16_w700_normal_title,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          EnsRichText(
            text: TextSpan(
              text: _getTextHeader(profilType: vm.profilType),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          if (vm.profilType.isAide) ...[
            const SizedBox(height: 32),
            EnsPersistentInfoBox.text(AidantAideUtils.unavailableAsAidant, style: EnsTextStyle.text14_w700_normal_body),
          ],
          const SizedBox(height: 32),
          ParametersBlocMenu(
            menuTitle: 'Accès des professionnels de santé',
            svgPath: EnsImages.confidentialite_telechargement_des_donnees,
            svgHeight: 56,
            svgWidth: 56,
            subMenuItems: [
              ParametersSubMenuItem(
                title: 'Gestion des accès',
                destinationPage: ConsentementsPsScreen.routeName,
                onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ACCES_PS),
              ),
              ParametersSubMenuItem(
                title: 'Confidentialité des informations',
                destinationPage: ConfidentialiteDocumentsScreen.routeName,
                onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS),
              ),
              ParametersSubMenuItem(
                title: 'Accès en cas d\'urgence',
                destinationPage: ConsentementsUrgenceScreen.routeName,
                arguments: const ConsentementsUrgenceScreenArguments(isFromOnboarding: false),
                onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ACCES_URGENCE),
              ),
            ],
          ),
          if (vm.showDonnerAccesMonProfilItem) ...[
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Accès à mon profil par mes proches',
              destinationPage: DonnerAccesMonProfilScreen.routeName,
              svgPath: EnsImages.bien_etre,
              onTap: () {
                context.tagAction(TagsAidantsAides.tag_2533_button_acces_profil_proches);
              },
            ),
          ],
          if (vm.profilType.isAd) ...[
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Partage du profil',
              destinationPage: PartagerProfilScreen.routeName,
              onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CLOTURE_PROFIL),
              svgPath: EnsImages.document_partage,
            ),
          ],
          const SizedBox(height: 24),
          ParametersMenuUniqueItem(
            title: 'Historique d\'activité',
            destinationPage: HistoriqueActivitesScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE),
            svgPath: EnsImages.historique_activite,
          ),
          const SizedBox(height: 24),
          if (vm.profilType.isProfilPrincipal || vm.profilType.isAd) ...[
            ParametersBlocMenu(
              menuTitle: 'Gestion des données',
              svgPath: EnsImages.echange_donnees,
              svgHeight: 56,
              svgWidth: 56,
              subMenuItems: [
                ParametersSubMenuItem(
                  title: 'Télécharger les données',
                  destinationPage: TelechargerDonneesScreen.routeName,
                  onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES),
                ),
                if (vm.showConsentementExtractionDonnees)
                  const ParametersSubMenuItem(
                    title: 'Import des données depuis les documents',
                    destinationPage: ConsentementExtractionDonneesSanteParametresScreen.routeName,
                  ),
                if (isPreventionPersonnaliseeEnabled)
                  const ParametersSubMenuItem(
                    title: 'Prévention personnalisée',
                    destinationPage: PreventionPersonnaliseeScreen.routeName,
                  ),
              ],
            ),
            const SizedBox(height: 24),
          ] else if (vm.profilType.isAide && vm.showConsentementExtractionDonnees) ...[
            const ParametersMenuUniqueItem(
              title: 'Import des données depuis les documents',
              destinationPage: ConsentementExtractionDonneesSanteParametresScreen.routeName,
              svgPath: EnsImages.echange_donnees,
            ),
            const SizedBox(height: 24),
          ],
          ParametersMenuUniqueItem(
            title: 'Services synchronisés',
            destinationPage: ServicesSynchronisesScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_SERVICES_SYNCHRO),
            svgPath: EnsImages.catalogue_de_services,
          ),
          const SizedBox(height: 24),
          if (vm.profilType.isProfilPrincipal || vm.profilType.isAd)
            ParametersMenuUniqueItem(
              title: 'Clôture du profil',
              destinationPage: ClotureProfilScreen.routeName,
              onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CLOTURE_PROFIL),
              svgPath: EnsImages.bienvenue,
            ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

String _getTextHeader({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je personnalise les paramètres de mon profil selon mes préférences d\'utilisation.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je personnalise les paramètres de son profil selon mes préférences d\'utilisation.'
  };
}
