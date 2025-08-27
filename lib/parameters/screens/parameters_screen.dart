/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/liste_aides_screen.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_parametres_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/screens/acces_ps_a_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/parameters/email/screens/change_email_screen.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/screens/enrolled_devices_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/cloture_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/historique_et_donnees/screen/historique_et_donnees_screen.dart';
import 'package:fr_cnamts_ens/parameters/password/screens/change_password_screen.dart';
import 'package:fr_cnamts_ens/parameters/phone/screens/change_phone_screen.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/screen/preference_notifications_screen.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_menu_item.dart';
import 'package:fr_cnamts_ens/parameters/screens/viewModels/parameters_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/services_synchronises_screen.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_screen_skeleton.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/menu_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class ParametersScreen extends StatelessWidget {
  static const routeName = '/mon-compte';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: isRefonteParametresEnabled ? 'Paramètres de l\'application' : 'Paramètres',
      ),
      body: StoreConnector<EnsState, ParametersScreenViewModel>(
        converter: (store) => ParametersScreenViewModel.from(store),
        distinct: true,
        onInit: (store) {
          store.dispatch(FetchUserDataAction());
          store.dispatch(FetchDelegationsPourAidantAction());
        },
        onInitialBuild: (_) {
          context.tagAction(TagsParameters.tag_444_compte_accueil);
          context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_INFOS_CONNEXION);
        },
        builder: (_, vm) => SafeArea(child: _Content(vm)),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ParametersScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.userDataFetchingStatus) {
      case ScreenStatus.SUCCESS:
        return _Success(vm);
      case ScreenStatus.ERROR:
        return _Error(vm);
      case ScreenStatus.LOADING:
        return ParametersScreenSkeleton();
    }
  }
}

class _Success extends StatelessWidget {
  final ParametersScreenViewModel vm;
  final bugReportPage = EnsModuleContainer.currentInjector.getUrlsConfig().bugReportPage;

  _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    if (isRefonteParametresEnabled) {
      return ScrollviewWithScrollbar(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const EnsRichText(
              text: TextSpan(
                text: 'Je gère l\'accès à mon compte et aux profils associés.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
            const SizedBox(height: 24),
            ParametersBlocMenu(
              menuTitle: 'Informations de connexion',
              svgPath: EnsImages.identifiants,
              svgHeight: 56,
              svgWidth: 56,
              subMenuItems: [
                ParametersSubMenuItem(
                  title: 'Identifiant (non modifiable)',
                  subTitle: vm.userIdentification ?? '',
                  destinationPage: ParametersScreen.routeName,
                  isClickable: false,
                ),
                ParametersSubMenuItem(
                  title: 'Mot de passe',
                  destinationPage: ChangePasswordScreen.routeName,
                  onTap: () => context.tagAction(TagsParameters.tag_button_changement_mot_de_passe),
                ),
                ParametersSubMenuItem(
                  title: 'Adresse e-mail',
                  subTitle: vm.userMail ?? '',
                  destinationPage: ChangeEmailScreen.routeName,
                  onTap: () => context.tagAction(TagsParameters.tag_button_changement_email),
                ),
                ParametersSubMenuItem(
                  title: 'Numéro de téléphone',
                  subTitle: vm.userPhone ?? '',
                  destinationPage: ChangePhoneScreen.routeName,
                  onTap: () => context.tagAction(TagsParameters.tag_button_changement_telephone),
                ),
              ],
            ),
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Appareils associés',
              destinationPage: EnrolledDevicesScreen.routeName,
              onTap: () => context.tagAction(TagsParameters.tag_670_button_appareils),
              svgPath: EnsImages.telephone_mot_de_passe,
            ),
            if (isAidantsAidesEnabled && vm.showGestionAccesProchesAides) ...[
              const SizedBox(height: 24),
              ParametersMenuUniqueItem(
                title: 'Accès aux profils de mes proches aidés',
                destinationPage: ListeAidesScreen.routeName,
                onTap: () {}, // todo: tags
                svgPath: EnsImages.echange_donnees,
              ),
              const EnsDivider(color: EnsColors.neutral200),
            ],
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Données de navigation',
              onTap: () {
                vm.openPrivacyCenter();
              },
              svgPath: EnsImages.cookie,
            ),
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Notifications de l\'application',
              destinationPage: PreferenceNotificationsScreen.routeName,
              onTap: () {
                context.tagAction(TagsParameters.tag_1341_parametre_notifications);
                context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_NOTIFS_MAILS);
              },
              svgPath: EnsImages.ic_centre_de_notifications,
            ),
            const SizedBox(height: 24),
            ParametersMenuUniqueItem(
              title: 'Signaler un problème',
              openInNavigator: true,
              destinationPage: bugReportPage,
              svgPath: EnsImages.message_envoye,
            ),
            _BottomInformation(),
            const SizedBox(height: 16),
          ],
        ),
      );
    } else {
      return ScrollviewWithScrollbar(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
              child: EnsRichText(
                text: TextSpan(
                  text:
                      'Une information concernant votre identité est incorrecte ? Pour connaitre la démarche à suivre pour la corriger, ',
                  style: EnsTextStyle.text14_w400_normal_body,
                  children: [
                    TextSpan(
                      text: 'consulter l’aide en ligne',
                      style: EnsTextStyle.text14_w700_normal_primary_underline,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushNamed(context, AideScreen.routeName),
                    ),
                  ],
                ),
              ),
            ),
            const _SubTitle('Informations de connexion'),
            MenuItem(
              title: 'Identifiant',
              subTitle: vm.userIdentification ?? '',
              destinationPage: ParametersScreen.routeName,
              isClickable: false,
            ),
            const EnsDivider(color: EnsColors.neutral200),
            MenuItem(
              title: 'Adresse e-mail',
              subTitle: vm.userMail ?? '',
              destinationPage: ChangeEmailScreen.routeName,
              onTap: () => context.tagAction(TagsParameters.tag_button_changement_email),
            ),
            const EnsDivider(color: EnsColors.neutral200),
            MenuItem(
              title: 'Numéro de téléphone',
              subTitle: vm.userPhone ?? '',
              destinationPage: ChangePhoneScreen.routeName,
              onTap: () => context.tagAction(TagsParameters.tag_button_changement_telephone),
            ),
            const EnsDivider(color: EnsColors.neutral200),
            const SizedBox(height: 32),
            const _SubTitle('Sécurité'),
            MenuItem(
              title: 'Mot de passe',
              destinationPage: ChangePasswordScreen.routeName,
              onTap: () => context.tagAction(TagsParameters.tag_button_changement_mot_de_passe),
            ),
            const EnsDivider(color: EnsColors.neutral200),
            MenuItem(
              title: 'Appareils associés',
              destinationPage: EnrolledDevicesScreen.routeName,
              onTap: () => context.tagAction(TagsParameters.tag_670_button_appareils),
            ),
            const SizedBox(height: 32),
            const _SubTitle('Confidentialité'),
            MenuItem(
              title: 'Accès des professionnels de santé à mes données',
              destinationPage: AccesPsAMesDonneesScreen.routeName,
              onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CONFIDENTIALITE),
            ),
            const EnsDivider(color: EnsColors.neutral200),
            if (isAidantsAidesEnabled && vm.showGestionAccesProchesAides) ...[
              MenuItem(
                title: 'Gestion des accès de mes proches aidés',
                destinationPage: ListeAidesScreen.routeName,
                onTap: () {}, // todo: tags
              ),
              const EnsDivider(color: EnsColors.neutral200),
            ],
            MenuItem(
              title: 'Données de navigation',
              destinationPage: '',
              onTap: () {
                vm.openPrivacyCenter();
              },
            ),
            const EnsDivider(color: EnsColors.neutral200),
            MenuItem(
              title: 'Historique et données',
              destinationPage: HistoriqueEtDonneesScreen.routeName,
              onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HISTORIQUE_DONNEES),
            ),
            const EnsDivider(color: EnsColors.neutral200),
            if (vm.showConsentementExtractionDonnees)
              MenuItem(
                title: 'Récupération automatique des données des documents',
                destinationPage: ConsentementExtractionDonneesSanteParametresScreen.routeName,
                onTap: () {
                  // Le bouton doit apparaitre comme cliquable pour le lecteur d'écran
                },
              ),
            const SizedBox(height: 32),
            const _SubTitle('Notifications'),
            MenuItem(
              title: 'Notifications de l’application',
              destinationPage: PreferenceNotificationsScreen.routeName,
              onTap: () {
                context.tagAction(TagsParameters.tag_1341_parametre_notifications);
                context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_NOTIFS_MAILS);
              },
            ),
            const SizedBox(height: 32),
            const _SubTitle('Gestion du profil'),
            if (isAidantsAidesEnabled && vm.showGestionAccesProfil)
              const MenuItem(
                title: 'Gestion des accès à mon profil',
                destinationPage: DonnerAccesMonProfilScreen.routeName,
              ),
            MenuItem(
              title: 'Clôture du profil',
              destinationPage: ClotureProfilScreen.routeName,
              onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CLOTURE_PROFIL),
            ),
            if (vm.showPartagerProfil) ...[
              const EnsDivider(color: EnsColors.neutral200),
              MenuItem(
                title: 'Partage du profil',
                destinationPage: PartagerProfilScreen.routeName,
                onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CLOTURE_PROFIL),
              ),
            ],
            const SizedBox(height: 32),
            if (isCatalogueDeServiceSynchroEnabled && !EnsModuleContainer.currentInjector.isGuestMode()) ...[
              const _SubTitle('Catalogue de services'),
              MenuItem(
                title: 'Services synchronisés',
                destinationPage: ServicesSynchronisesScreen.routeName,
                onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_SERVICES_SYNCHRO),
              ),
              const SizedBox(height: 32),
            ],
            const _SubTitle('Contact'),
            MenuItem(
              title: 'Signaler un problème sur l\'application',
              isExternalLink: true,
              destinationPage: bugReportPage,
            ),
            _BottomInformation(),
            const SizedBox(height: 16),
          ],
        ),
      );
    }
  }
}

class _Error extends StatelessWidget {
  final ParametersScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ErrorPage(reloadFunction: vm.reloadData),
        const Spacer(),
        const SizedBox(height: 16),
        _VersionNumber(),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _BottomInformation extends StatelessWidget {
  final urlConfig = EnsModuleContainer.currentInjector.getUrlsConfig();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isRefonteParametresEnabled ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EnsDivider(paddingTop: 32, paddingBottom: 24),
          _VersionNumber(),
          const SizedBox(height: 16),
          const Row(
            children: [
              EnsSvg(EnsImages.ic_accessibility, height: 16, width: 16),
              SizedBox(width: 4),
              Expanded(
                child: Text('Accessibilité : Application non conforme ', style: EnsTextStyle.text14_w400_normal_body),
              ),
            ],
          ),
          EnsExternalLink.withRedirection(
            linkUrl: urlConfig.accessibilityInfosUrl,
            linkText: 'Déclaration d\'accessibilité numérique de mon espace santé',
            extraPadding: const EdgeInsets.only(bottom: 8),
          ),
          EnsExternalLink.withRedirection(
            linkUrl: urlConfig.cguUrl,
            linkText: 'Mentions légales et CGU',
            extraPadding: const EdgeInsets.symmetric(vertical: 8),
          ),
          EnsExternalLink.withRedirection(
            linkUrl: urlConfig.privacyInfosUrl,
            linkText: 'Protection des données personnelles',
            extraPadding: const EdgeInsets.symmetric(vertical: 8),
          ),
          if (isRefonteParametresEnabled)
            EnsExternalLink.withRedirection(
              linkUrl: urlConfig.parametersUrl,
              linkText: 'Retrouvez toutes les rubriques des Paramètres sur le site Monespacesante.fr',
              extraPadding: const EdgeInsets.symmetric(vertical: 8),
            ),
        ],
      ),
    );
  }
}

class _VersionNumber extends StatelessWidget {
  final packageInfo = EnsModuleContainer.currentInjector.getPackageInfo();

  @override
  Widget build(BuildContext context) {
    return Text('Version ${packageInfo.version}', style: EnsTextStyle.text14_w400_normal_body);
  }
}

class _SubTitle extends StatelessWidget {
  final String subTitle;

  const _SubTitle(this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Wrap(
        children: [
          Text(subTitle, style: EnsTextStyle.text14_w600_normal_body),
          Container(),
        ],
      ),
    );
  }
}
