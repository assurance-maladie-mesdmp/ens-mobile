/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/antecedents_familiaux_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/don_organes_volonte_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/groupe_sanguin_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicaps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/hospitalisations_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/preview_incitation_pml_card.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/last_mesures_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/profil_medical_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/profil_medical_menu_item.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/widgets/message_synthese_pml_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_pml.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class ProfilMedicalScreen extends StatelessWidget {
  const ProfilMedicalScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ProfilMedicalScreenViewModel>(
      converter: (store) => ProfilMedicalScreenViewModel.from(store),
      onInit: (store) => store.dispatch(FetchDocumentsAction()),
      onInitialBuild: (vm) => context.tagAction(TagsPml.tag_profil_medical_liste),
      distinct: true,
      builder: (context, vm) => Scaffold(
        body: ScrollviewWithScrollbar(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, DeviceUtils.isSmallDevice(context) ? 8 : 24, 24, 0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Profil médical', style: EnsTextStyle.text26_w400_normal_title),
                      const SizedBox(height: 16),
                      Text(
                        'Je mets à jour mes informations de santé pour garder une trace des événements importants, faciliter leur accès par mes professionnels de santé et améliorer ma prise en charge.'
                            .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                        style: EnsTextStyle.text14_w400_normal_body,
                      ),
                      const SizedBox(height: 24),
                      const MessageSynthesePmlWidget(),
                      const PreviewIncitationPmlCard(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: ProfilMedicalMenuUniqueItem(
                        title: _getTextItem(profilType: vm.profilType),
                        destinationPage: MonHistoireDeSanteScreen.routeName,
                        svgPath: EnsImages.mon_histoire_de_sante,
                        onTap: () => context
                            .tagAction(TagsMonMonHistoireDeSante.tag_184_button_profil_medical_liste_histoiredesante),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ProfilMedicalBlocMenu(
                      menuTitle: 'Suivi médical',
                      svgPath: EnsImages.suivi_medical,
                      svgHeight: 49,
                      svgWidth: 49,
                      subMenuItems: [
                        ProfilMedicalSubMenuItem(
                          title: 'Maladies et sujets de santé',
                          destinationPage: MaladiesScreen.routeName,
                          onTap: () => context.tagAction(TagsPml.tag_178_button_profil_medical_liste_maladies),
                        ),
                        ProfilMedicalSubMenuItem(
                          title: 'Traitements',
                          destinationPage: TraitementsScreen.routeName,
                          onTap: () => context.tagAction(TagsPml.tag_179_button_profil_medical_liste_traitements),
                        ),
                        const ProfilMedicalSubMenuItem(
                          title: 'Hospitalisations',
                          destinationPage: HospitalisationsScreen.routeName,
                        ),
                        const ProfilMedicalSubMenuItem(
                          title: 'Handicaps',
                          destinationPage: HandicapsScreen.routeName,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    ProfilMedicalBlocMenu(
                      menuTitle: 'Caractéristiques de santé',
                      svgPath: EnsImages.facteurs_de_risque,
                      svgHeight: 59,
                      svgWidth: 59,
                      subMenuItems: [
                        const ProfilMedicalSubMenuItem(
                          title: 'Groupe sanguin',
                          destinationPage: GroupeSanguinScreen.routeName,
                        ),
                        ProfilMedicalSubMenuItem(
                          title: 'Allergies',
                          destinationPage: AllergiesScreen.routeName,
                          onTap: () => context.tagAction(TagsPml.tag_181_button_profil_medical_liste_allergies),
                        ),
                        ProfilMedicalSubMenuItem(
                          title: 'Antécédents familiaux',
                          destinationPage: AntecedentsFamiliauxScreen.routeName,
                          onTap: () => context.tagAction(TagsPml.tag_180_button_profil_medical_liste_antecedents),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const ProfilMedicalMenuUniqueItem(
                      title: 'Mesures',
                      destinationPage: LastMesuresScreen.routeName,
                      svgPath: EnsImages.tour_de_taille,
                    ),
                    const SizedBox(height: 16),
                    ProfilMedicalMenuUniqueItem(
                      title: 'Professionnels de santé',
                      destinationPage: ProfessionnelsDeSanteScreen.routeName,
                      svgPath: EnsImages.professionnel_de_sante,
                      onTap: () => context.tagAction(TagsPml.tag_523_button_profil_medical_liste_professionels_sante),
                    ),
                    const SizedBox(height: 16),
                    const EntourageEtVolontesBloc(),
                    const SizedBox(height: 16),
                    if (!EnsModuleContainer.currentInjector.isGuestMode())
                      const SizedBox(height: EXTRA_VERTICAL_PADDING_FOR_GUEST_MODE_CONTENT),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EntourageEtVolontesBloc extends StatelessWidget {
  const EntourageEtVolontesBloc();

  @override
  Widget build(BuildContext context) {
    return ProfilMedicalBlocMenu(
      menuTitle: 'Entourage et volontés',
      svgPath: EnsImages.document_information,
      svgHeight: 49,
      svgWidth: 49,
      subMenuItems: [
        ProfilMedicalSubMenuItem(
          title: 'Entourage',
          destinationPage: EntourageScreen.routeName,
          onTap: () => context.tagAction(TagsPml.tag_2648_button_profil_medical_liste_entourage),
        ),
        ProfilMedicalSubMenuItem(
          title: 'Directives anticipées',
          destinationPage: DirectivesAnticipeesScreen.routeName,
          onTap: () => context.tagAction(TagsPml.tag_2650_button_profil_medical_liste_directive_anticipe),
        ),
        ProfilMedicalSubMenuItem(
          title: 'Don d\'organes',
          destinationPage: DonOrganesVolonteScreen.routeName,
          onTap: () => context.tagAction(TagsPml.tag_2649_button_profil_medical_liste_don_organe),
        ),
      ],
    );
  }
}

String _getTextItem({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Mon histoire de santé',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'L\'histoire de santé'
  };
}
