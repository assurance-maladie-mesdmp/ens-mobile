/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/profile_activation_result.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_helper.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ads_confirmation_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/loading_details_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:redux/redux.dart';

class AjoutAdConfirmationScreenArguments {
  final bool isFromOnboarding;
  final Map<int, Color> profilIconColors;

  const AjoutAdConfirmationScreenArguments({required this.isFromOnboarding, required this.profilIconColors});
}

class AjoutAdConfirmationScreen extends StatelessWidget {
  static const routeName = '/ajout_ad/confirmation';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as AjoutAdConfirmationScreenArguments;
    return StoreConnector<EnsState, AjoutAdConfirmationViewModel>(
      distinct: true,
      converter: (Store<EnsState> store) => AjoutAdConfirmationViewModel.from(
        store,
        profilIconColors: arguments.profilIconColors,
        isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
      ),
      onDidChange: (_, vm) {
        if (vm.status.isSuccess()) {
          context.tagAction(_determineTag(vm, arguments));
        }
      },
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(title: vm.appBarTitle),
          body: SafeArea(
            child: _Body(
              vm: vm,
              isFromOnboarding: arguments.isFromOnboarding,
              profilIconColors: arguments.profilIconColors,
            ),
          ),
        );
      },
    );
  }

  EnsTag _determineTag(AjoutAdConfirmationViewModel vm, AjoutAdConfirmationScreenArguments arguments) {
    if (arguments.isFromOnboarding) {
      return TagsOnboarding.tag_2523_succes_ajouter_ad;
    } else if (vm.adsActivatedProfiles.isNotEmpty && vm.adsNotActivatedProfiles.isEmpty) {
      return TagsParameters.tag_1289_compte_confirmation_profils_actives;
    } else if (vm.adsActivatedProfiles.isEmpty && vm.adsNotActivatedProfiles.isNotEmpty) {
      return TagsParameters.tag_1291_compte_error_partielle_profils_actives;
    } else {
      return TagsParameters.tag_1290_compte_confirmation_partielle_profils_actives;
    }
  }
}

class _Body extends StatelessWidget {
  final AjoutAdConfirmationViewModel vm;
  final bool isFromOnboarding;
  final Map<int, Color> profilIconColors;

  const _Body({
    required this.vm,
    required this.isFromOnboarding,
    required this.profilIconColors,
  });

  @override
  Widget build(BuildContext context) {
    return switch (vm.status) {
      AllPurposesStatus.SUCCESS => _Success(
          vm: vm,
          isFromOnboarding: isFromOnboarding,
          profilIconColors: profilIconColors,
        ),
      AllPurposesStatus.ERROR => ErrorPage(reloadFunction: vm.load),
      _ => const LoadingDetailsScreen(),
    };
  }
}

class _Success extends StatelessWidget {
  final AjoutAdConfirmationViewModel vm;
  final bool isFromOnboarding;
  final Map<int, Color> profilIconColors;

  const _Success({required this.vm, required this.isFromOnboarding, required this.profilIconColors});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (vm.adsActivatedProfiles.isNotEmpty && vm.adsNotActivatedProfiles.isNotEmpty)
              _BothAdAddedAndAdNotAdded(vm: vm, profilIconColors: profilIconColors, isFromOnboarding: isFromOnboarding)
            else
              _OnlyAdAddedOrOnlyAdNotAdded(
                vm: vm,
                isFromOnboarding: isFromOnboarding,
                profilIconColors: profilIconColors,
              ),
            const SizedBox(height: 32),
            EnsButton(
              label:
                  isFromOnboarding && vm.shouldDisplayExtractMesureConsentement ? 'Continuer' : 'Revenir à l\'accueil',
              onTap: () {
                vm.resetAjoutAdState();
                isFromOnboarding && vm.shouldDisplayExtractMesureConsentement
                    ? Navigator.pushNamed(
                        context,
                        ConsentementExtractionDonneesSanteScreen.routeName,
                        arguments: ConsentementExtractionDonneesSanteScreenArguments(isFromOnboarding: true),
                      )
                    : Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            if (vm.canAddOtherAd && !isFromOnboarding) ...[
              const SizedBox(height: 24),
              EnsButtonSecondary(
                label: 'Ajouter un autre profil',
                onTap: () {
                  vm.resetActivateAdsProfilsStates();
                  Navigator.pop(context);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _OnlyAdAddedOrOnlyAdNotAdded extends StatelessWidget {
  final AjoutAdConfirmationViewModel vm;
  final bool isFromOnboarding;
  final Map<int, Color> profilIconColors;

  const _OnlyAdAddedOrOnlyAdNotAdded({
    required this.vm,
    required this.isFromOnboarding,
    required this.profilIconColors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsIllustration(_determineIllustration()),
        Text(
          _determineTitle(),
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        if (!isFromOnboarding) ...[
          const SizedBox(height: 8),
          Text(
            _determineSubtitle(),
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 32),
        ...vm.adsActivatedProfiles.map(
          (adActivatedProfile) => isFromOnboarding
              ? _AdAddedCard(
                  profile: adActivatedProfile,
                  profilIconColors: profilIconColors,
                  isFromOnboarding: isFromOnboarding,
                )
              : EnsInkWell(
                  semanticLabel:
                      'Aller sur le profil de ${adActivatedProfile.firstName} ${adActivatedProfile.lastName}',
                  onTap: () {
                    vm.changeProfile(adActivatedProfile);
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: _AdAddedCard(
                    profile: adActivatedProfile,
                    profilIconColors: profilIconColors,
                    isFromOnboarding: isFromOnboarding,
                  ),
                ),
        ),
        ...vm.adsNotActivatedProfiles.map(
          (adNotActivatedProfile) => _AdNotAddedCard(
            name: '${adNotActivatedProfile.firstName} ${adNotActivatedProfile.lastName}',
          ),
        ),
      ],
    );
  }

  String _determineIllustration() {
    if (vm.adsActivatedProfiles.isNotEmpty && vm.adsNotActivatedProfiles.isEmpty) {
      return EnsImages.felicitation;
    } else if (vm.adsActivatedProfiles.isEmpty && vm.adsNotActivatedProfiles.isNotEmpty) {
      return EnsImages.error;
    }
    return '';
  }

  String _determineTitle() {
    if (vm.adsActivatedProfiles.isNotEmpty) {
      return AjoutAdHelper.getAdProfilAddedText(vm.adsActivatedProfiles.length);
    } else if (vm.adsNotActivatedProfiles.isNotEmpty) {
      return AjoutAdHelper.getAdProfilNotAddedText(vm.adsNotActivatedProfiles.length);
    }
    return '';
  }

  String _determineSubtitle() {
    if (vm.adsActivatedProfiles.isNotEmpty) {
      return AjoutAdHelper.getClickToConsultText(vm.adsActivatedProfiles.length);
    } else if (vm.adsNotActivatedProfiles.isNotEmpty) {
      return AjoutAdHelper.getErrorText(vm.adsNotActivatedProfiles.length);
    }
    return '';
  }
}

class _BothAdAddedAndAdNotAdded extends StatelessWidget {
  final AjoutAdConfirmationViewModel vm;
  final Map<int, Color> profilIconColors;
  final bool isFromOnboarding;

  const _BothAdAddedAndAdNotAdded({required this.vm, required this.profilIconColors, required this.isFromOnboarding});

  @override
  Widget build(BuildContext context) {
    final adsActivatedProfiles = vm.adsActivatedProfiles;
    final adsNotActivatedProfiles = vm.adsNotActivatedProfiles;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AjoutAdHelper.getAdProfilAddedText(adsActivatedProfiles.length),
          style: EnsTextStyle.text20_w400_normal_title,
        ),
        const SizedBox(height: 12),
        Text(
          AjoutAdHelper.getClickToConsultText(adsActivatedProfiles.length),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 24),
        ...adsActivatedProfiles.map(
          (adActivatedProfile) => EnsInkWell(
            semanticLabel: 'Aller sur le profil de ${adActivatedProfile.firstName} ${adActivatedProfile.lastName}',
            onTap: () {
              vm.changeProfile(adActivatedProfile);
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: _AdAddedCard(
              profile: adActivatedProfile,
              profilIconColors: profilIconColors,
              isFromOnboarding: isFromOnboarding,
            ),
          ),
        ),
        const SizedBox(height: 32),
        Text(
          AjoutAdHelper.getAdProfilNotAddedText(adsNotActivatedProfiles.length),
          style: EnsTextStyle.text20_w400_normal_title,
        ),
        const SizedBox(height: 12),
        Text(
          AjoutAdHelper.getErrorText(adsNotActivatedProfiles.length),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 24),
        ...adsNotActivatedProfiles.map(
          (adNotActivatedProfile) => _AdNotAddedCard(
            name: '${adNotActivatedProfile.firstName} ${adNotActivatedProfile.lastName}',
          ),
        ),
      ],
    );
  }
}

class _AdAddedCard extends StatelessWidget {
  final ProfileActivationResult profile;
  final Map<int, Color> profilIconColors;
  final bool isFromOnboarding;

  const _AdAddedCard({required this.profile, required this.profilIconColors, required this.isFromOnboarding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: EnsCard(
        borderRadius: 16,
        padding: const EdgeInsets.all(16),
        hasBoxShadow: !isFromOnboarding,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                EnsSvg(
                  EnsImages.ic_circle_filled,
                  width: 40,
                  height: 40,
                  color: profilIconColors[profile.index.toInt()] ?? EnsColors.primary,
                ),
                const Center(child: EnsSvg(EnsImages.ic_user, width: 24, height: 24)),
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${profile.firstName} ${profile.lastName}',
                    style: EnsTextStyle.text16_w700_normal_title,
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      EnsSvg(EnsImages.ic_circle_check, width: 16, height: 16),
                      SizedBox(width: 4),
                      Expanded(child: Text('Profil actif', style: EnsTextStyle.text14_w400_normal_body)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AdNotAddedCard extends StatelessWidget {
  final String name;

  const _AdNotAddedCard({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: EnsCard(
        borderRadius: 16,
        padding: const EdgeInsets.all(16),
        backgroundColor: EnsColors.disabled100,
        border: Border.all(color: EnsColors.disabled500, width: 2),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Stack(
              alignment: Alignment.center,
              children: [
                EnsSvg(EnsImages.ic_circle_filled, width: 40, height: 40, color: EnsColors.disabled),
                Center(child: EnsSvg(EnsImages.ic_user, width: 24, height: 24)),
              ],
            ),
            const SizedBox(width: 8),
            Text(
              name,
              style: EnsTextStyle.text16_w600_normal_title,
            ),
          ],
        ),
      ),
    );
  }
}
