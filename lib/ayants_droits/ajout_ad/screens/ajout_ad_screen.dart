/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_confirmation_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_non_activables_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/suppression_en_cours_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_container.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ads_to_add_form_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_checkbox_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class AjoutAdScreenArguments {
  final AjoutAdScreenNavigation navigationFrom;

  const AjoutAdScreenArguments({required this.navigationFrom});
}

class AjoutAdScreen extends StatelessWidget {
  static const routeName = '/ajout_ad';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as AjoutAdScreenArguments;
    return InterruptionServiceContainer(
      composant: const DomaineInterruptionFullscreenComposant(
        domaineInterruption: DomaineInterruption.ENROLEMENT,
        from: InterruptionServiceScreenName.AJOUT_PROFIL,
      ),
      child: Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Ajouter un ou plusieurs profils'),
        body: SafeArea(
          child: StoreConnector<EnsState, AjoutAdViewModel>(
            converter: (store) => AjoutAdViewModel.from(
              store,
              navigationFrom: arguments.navigationFrom,
              isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
            ),
            distinct: true,
            onInitialBuild: (vm) {
              vm.load();
              arguments.navigationFrom.isOnboarding
                  ? context.tagAction(TagsOnboarding.tag_2520_ajouter_ad)
                  : context.tagAction(TagsParameters.tag_1286_compte_profils_a_activer);
            },
            onWillChange: (oldVm, vm) {
              if (oldVm?.activateAdsProfilsStatus.isNotSuccess() == true && vm.activateAdsProfilsStatus.isSuccess()) {
                _formKey.currentState?.reset();
                Navigator.pushNamed(
                  context,
                  AjoutAdConfirmationScreen.routeName,
                  arguments: AjoutAdConfirmationScreenArguments(
                    isFromOnboarding: arguments.navigationFrom.isOnboarding,
                    profilIconColors: vm.profilIconColors,
                  ),
                );
              }
            },
            builder: (context, vm) {
              return _Body(vm: vm, formKey: _formKey, navigationFrom: arguments.navigationFrom);
            },
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final AjoutAdViewModel vm;
  final AjoutAdScreenNavigation navigationFrom;
  final GlobalKey<FormState> formKey;

  const _Body({required this.vm, required this.formKey, required this.navigationFrom});

  @override
  Widget build(BuildContext context) {
    return switch (vm.status) {
      AjoutAdScreenStatus.SUCCESS => _Success(vm: vm, formKey: formKey, navigationFrom: navigationFrom),
      AjoutAdScreenStatus.LOADING => _Loading(),
      AjoutAdScreenStatus.ERROR => ErrorPage(reloadFunction: vm.load),
      AjoutAdScreenStatus.EMPTY => _EmptyState(),
    };
  }
}

class _Success extends StatefulWidget {
  final AjoutAdViewModel vm;
  final AjoutAdScreenNavigation navigationFrom;
  final GlobalKey<FormState> formKey;

  const _Success({required this.vm, required this.formKey, required this.navigationFrom});

  @override
  State<_Success> createState() => _SuccessState();
}

class _SuccessState extends State<_Success> {
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final scrollController = ScrollController();
  final List<AdToAddDisplayModel> adsSelected = [];

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EnsForm(
      formKey: widget.formKey,
      shakeKey: _shakeKey,
      scrollController: scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Je prends soin de la santé de mon enfant en activant son profil Mon espace santé.  Je pourrai alors :',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 16),
          const _InfoItem(
            illustrationName: EnsImages.profil_medical,
            text: 'Ajouter et consulter les documents de santé de mon enfant',
          ),
          const _InfoItem(
            illustrationName: EnsImages.ic_agenda_rendez_vous_attente,
            text: 'Recevoir des informations sur les rendez-vous recommandés suivant leur âge',
          ),
          const _InfoItem(
            illustrationName: EnsImages.ic_centre_de_notifications,
            text: 'Suivre les courbes et mesures de croissance',
          ),
          const _InfoItem(
            illustrationName: EnsImages.ic_mesures_avec_loupe,
            text: 'Retrouver des conseils de prévention personnalisés',
          ),
          if (widget.vm.hasNonActivableAds)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: EnsPersistentInfoBox.custom(
                child: EnsInkWell(
                  onTap: () => Navigator.of(context).pushNamed(AjoutAdNonActivableScreen.routeName),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Certains profils ne peuvent pas être activés pour le moment.',
                        style: EnsTextStyle.text14_w600_normal_body,
                      ),
                      Text(
                        'Voir les profils non activables',
                        style: EnsTextStyle.text14_w700_normal_primary_underline,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          const SizedBox(height: 32),
          const Text(
            'Profils à activer',
            style: EnsTextStyle.text16_w600_normal_title,
          ),
          const SizedBox(height: 8),
          AdsToAddFormField(
            adsToAdd: widget.vm.adsAvailables,
            adsSelectedCallback: (List<AdToAddDisplayModel> adsSelectedFromField) {
              setState(() {
                adsSelected.clear();
                adsSelected.addAll(adsSelectedFromField);
              });
            },
          ),
          const SizedBox(height: 16),
          EnsCheckboxFormField(
            initValue: false,
            label: 'Je certifie être le représentant légal du ou des profils sélectionnés',
            errorType: EnsCheckboxFormFieldErrorType.HIGHLIGHT_ERROR,
            extraPadding: const EdgeInsets.symmetric(vertical: 4),
          ),
          const SizedBox(height: 32),
          EnsButton(
            label: 'Activer',
            isLoading: widget.vm.activateAdsProfilsStatus.isLoading(),
            onTap: () {
              InterruptionServiceHelper.showSnackbarOnInterruption(
                context,
                interruptionServiceSnackbarMessage: widget.vm.interruptionServiceSnackbarMessage,
                onNotInterrompu: () {
                  widget.navigationFrom.isOnboarding
                      ? context.tagAction(TagsOnboarding.tag_2522_button_ajouter_ad_activer)
                      : context.tagAction(TagsParameters.tag_1288_button_activer_choix_profil);
                  _validateAndSend();
                },
              );
            },
          ),
          if (widget.navigationFrom.isOnboarding) ...[
            const SizedBox(height: 8),
            EnsLinkText(
              isDisabled: widget.vm.activateAdsProfilsStatus.isLoading(),
              alignment: AlignmentDirectional.center,
              textAlign: TextAlign.center,
              label: 'Ignorer',
              onTap: () {
                context.tagAction(TagsOnboarding.tag_2521_button_ajouter_ad_ignorer);
                widget.vm.shouldDisplayExtractMesureConsentement
                    ? Navigator.pushNamed(
                        context,
                        ConsentementExtractionDonneesSanteScreen.routeName,
                        arguments: ConsentementExtractionDonneesSanteScreenArguments(isFromOnboarding: true),
                      )
                    : Navigator.popUntil(context, (route) => route.isFirst);
              },
              textPadding: const EdgeInsets.all(16),
            ),
          ],
        ],
      ),
    );
  }

  void _validateAndSend() {
    final validation = widget.formKey.validate();
    validation.onValid(() {
      final adsWithDeleteRequest = adsSelected.where((adSelected) => adSelected.hasDeleteRequest).toList();
      if (adsWithDeleteRequest.isNotEmpty) {
        displaySuppressionEnCoursBottomSheet(
          context,
          adsWithDeleteRequest.map((adWithDeleteRequest) => adWithDeleteRequest.name).toList(),
          activateProfilWithDeleteRequestConfirmation,
        );
      } else {
        activateProfils();
      }
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }

  void activateProfils() => widget.vm.activateAdsProfils(adsSelected.map((adSelected) => adSelected.id).toList());

  void activateProfilWithDeleteRequestConfirmation() {
    context.tagAction(TagsParameters.tag_1294_compte_profils_non_activables_confirmer);
    activateProfils();
  }
}

class _InfoItem extends StatelessWidget {
  final String illustrationName;
  final String text;

  const _InfoItem({required this.illustrationName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        EnsSvg(illustrationName, width: 64, height: 64),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            text,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsParameters.tag_1284_compte_profils_a_activer_empty);
    return DisappearingIllustrationPage(
      asset: EnsImages.pas_de_coordonnees,
      children: [
        const Text(
          'Vous n’avez pas de profil à ajouter',
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Il n’y a pas d’autres profils sur votre carte Vitale ou tous vos profils ont déjà été activés. Une question ?',
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Center(
          child: EnsExternalLink.withRedirection(
            linkUrl: 'https://www.monespacesante.fr/questions-frequentes',
            linkText: 'Consulter l’aide',
            onTap: () {
              context.tagAction(TagsParameters.tag_1285_link_aide);
            },
          ),
        ),
        const SizedBox(height: 40),
        EnsButton(
          label: 'J’ai compris',
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Text(
            'Le ou les profils suivants me sont rattachés. Je peux sélectionner un ou plusieurs profils Mon espace santé que je souhaite activer.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Profils à activer',
            style: EnsTextStyle.text14_w600_normal_title,
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SkeletonBox(
            height: 80,
            radius: 16,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SkeletonBox(
            height: 80,
            radius: 16,
          ),
        ),
      ],
    );
  }
}
