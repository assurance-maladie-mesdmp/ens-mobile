/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_screen.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/viewModels/consentements_urgence_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/widgets/acces_aux_donnees_bullet_points.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class ConsentementsUrgenceScreenArguments {
  final bool isFromOnboarding;

  const ConsentementsUrgenceScreenArguments({required this.isFromOnboarding});
}

class ConsentementsUrgenceScreen extends StatelessWidget {
  static const routeName = '/mon-compte/acces-cas-urgence';

  const ConsentementsUrgenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as ConsentementsUrgenceScreenArguments;
    final isFromOnboarding = arguments.isFromOnboarding;
    return StoreConnector<EnsState, ConsentementsUrgenceScreenViewModel>(
      converter: (store) => ConsentementsUrgenceScreenViewModel.from(
        store,
        isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
      ),
      onInitialBuild: (vm) {
        _tagPage(context, isFromOnboarding);
        vm.loadConsentementsUrgence(force: false);
      },
      distinct: true,
      builder: (_, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Accès en cas d’urgence'),
        floatingActionButton: isFromOnboarding && !vm.errorDuringDataLoading
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  width: double.infinity,
                  child: EnsButton(
                    label: vm.shouldContinue ? 'Continuer' : 'Terminer',
                    onTap: () {
                      if (vm.shouldGoToActivateAds) {
                        Navigator.pushNamed(
                          context,
                          AjoutAdScreen.routeName,
                          arguments: const AjoutAdScreenArguments(
                            navigationFrom: AjoutAdScreenNavigation.ONBOARDING,
                          ),
                        );
                      } else if (vm.shouldDisplayExtractMesureConsentement) {
                        Navigator.pushNamed(
                          context,
                          ConsentementExtractionDonneesSanteScreen.routeName,
                          arguments: ConsentementExtractionDonneesSanteScreenArguments(isFromOnboarding: true),
                        );
                      } else {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      }
                    },
                  ),
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: _Content(isFromOnboarding, vm),
      ),
    );
  }

  void _tagPage(BuildContext context, bool isFromOnboarding) {
    if (isFromOnboarding) {
      context.tagAction(TagsOnboarding.tag_2291_confidentialite_urgence);
    } else {
      context.tagAction(TagsParameters.tag_compte_acces_cas_urgence);
    }
  }
}

class _Content extends StatelessWidget {
  final bool isFromOnboarding;
  final ConsentementsUrgenceScreenViewModel vm;

  const _Content(this.isFromOnboarding, this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.errorDuringDataLoading) {
      return _Error(vm);
    }
    return _SuccessOrLoadingView(isFromOnboarding, vm);
  }
}

class _Error extends StatelessWidget {
  final ConsentementsUrgenceScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => vm.loadConsentementsUrgence(force: true));
  }
}

class _InfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Text(
        'Si mon état de santé le nécessite, je peux donner l’accès aux professionnels de santé à mes informations.\n\nJe serai notifié à chaque accès en cas d’urgence.',
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}

class _InfoTextRefonteParametresEnabled extends StatelessWidget {
  final ConsentementsUrgenceScreenViewModel vm;

  const _InfoTextRefonteParametresEnabled(this.vm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          const Text(
            'En cas d\'urgence médicale, je choisis d\'autoriser ou non l\'accès des professionnels de santé :',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const AccesAuxDonneesBulletPoints(),
          EnsRichText(
            text: TextSpan(
              style: EnsTextStyle.text14_w400_normal_body,
              children: [
                const TextSpan(
                  text: '\n\nÀ chaque accès en cas d\'urgence, je recevrai une notification sur l\'adresse e-mail ',
                ),
                TextSpan(
                  text: vm.userMail,
                  style: EnsTextStyle.text14_w700_normal_body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SuccessOrLoadingView extends StatelessWidget {
  final bool isFromOnboarding;
  final ConsentementsUrgenceScreenViewModel vm;

  const _SuccessOrLoadingView(this.isFromOnboarding, this.vm);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isRefonteParametresEnabled && (vm.profilType.isAd || vm.profilType.isProfilPrincipal))
              _InfoTextRefonteParametresEnabled(vm)
            else
              _InfoText(),
            ParametersToggleItem(
              titre: 'SAMU',
              description:
                  'J\'autorise les professionnels de santé du SAMU à accéder à ces rubriques en cas d\'urgence.',
              value: vm.consentements?.samu.isAllowed ?? false,
              disabled: !vm.isConsentementSamuEnabled,
              onToggle: (newValue) {
                GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                  context: context,
                  onAuthenticatedMode: () => vm.updateConsentements(
                    isAllowedSAMU: newValue,
                    isAllowedAutrePS: vm.consentements?.autrePS.isAllowed ?? false,
                    isAllowedDocumentsMasques: vm.consentements?.documentsMasques.isAllowed ?? false,
                    isFromOnboarding: isFromOnboarding,
                  ),
                );
              },
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            ParametersToggleItem(
              titre: 'Autres professionnels de santé',
              description: 'J\'autorise les professionnels de santé à accéder à ces rubriques en cas d’urgence.',
              value: vm.consentements?.autrePS.isAllowed ?? false,
              disabled: !vm.isConsentementAutrePsEnabled,
              onToggle: (newValue) {
                GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                  context: context,
                  onAuthenticatedMode: () => vm.updateConsentements(
                    isAllowedSAMU: vm.consentements?.samu.isAllowed ?? false,
                    isAllowedAutrePS: newValue,
                    isAllowedDocumentsMasques: vm.consentements?.documentsMasques.isAllowed ?? false,
                    isFromOnboarding: isFromOnboarding,
                  ),
                );
              },
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            ParametersToggleItem(
              titre: 'Documents masqués',
              description:
                  'J\'autorise les professionnels de santé à consulter mes documents masqués en cas d\'urgence.',
              value: vm.consentements?.documentsMasques.isAllowed ?? false,
              disabled: !vm.isConsentementDocsMasquesEnabled,
              onToggle: (newValue) {
                GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                  context: context,
                  onAuthenticatedMode: () => vm.updateConsentements(
                    isAllowedSAMU: vm.consentements?.samu.isAllowed ?? false,
                    isAllowedAutrePS: vm.consentements?.autrePS.isAllowed ?? false,
                    isAllowedDocumentsMasques: newValue,
                    isFromOnboarding: isFromOnboarding,
                  ),
                );
              },
            ),
            const Divider(height: 2, color: EnsColors.neutral200),
            if (isFromOnboarding) const SizedBox(height: 88),
          ],
        ),
      ),
    );
  }
}
