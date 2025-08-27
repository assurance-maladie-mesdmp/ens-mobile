/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_screen.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/home/screens/ins_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/gestion_profil_screen.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_list.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_rattaches_invitations_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profiles_dialog_view_model.dart';
import 'package:fr_cnamts_ens/tags/parameters/tags_gestion_profil.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/tags/tags_compte.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/profile_dialog_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class ProfilesDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final aidantsAidesEnabled = isAidantsAidesEnabled;
    return StoreConnector<EnsState, ProfilesDialogViewModel>(
      converter: (store) => ProfilesDialogViewModel.from(store, isAidantsAidesEnabled: aidantsAidesEnabled),
      onInit: (store) {
        store.dispatch(FetchProfilsRattachesAndAdPendingInvitationsAction());
        if (aidantsAidesEnabled) {
          store.dispatch(FetchInvitationsFromAidesAction());
        }
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsCompte.tag_popin_compte);
      },
      distinct: true,
      builder: (_, vm) => _ProfileDialogContent(vm),
    );
  }
}

class _ProfileDialogContent extends StatelessWidget {
  final helpUrl = EnsModuleContainer.currentInjector.getUrlsConfig().helpUrl;
  final ProfilesDialogViewModel vm;

  _ProfileDialogContent(this.vm);

  @override
  Widget build(BuildContext context) {
    final aidantsAidesEnabled = isAidantsAidesEnabled;
    final isRefonteParametersEnabled = isRefonteParametresEnabled;
    final shouldShowPendingInvitations = vm.shouldShowPendingInvitations;
    return Dialog(
      surfaceTintColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 44),
              child: ScrollviewWithScrollbar(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        EnsSvg(
                          EnsImages.ic_header_main_user_background,
                          width: 64,
                          height: 64,
                          color: vm.profilType.isProfilPrincipal ? EnsColors.primary : vm.profileColor,
                        ),
                        Center(
                          child: EnsSvg(vm.profilType.profilIcon, width: 32, height: 32, color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      vm.profileName,
                      style: EnsTextStyle.text16_w700_normal_title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                    if (!EnsModuleContainer.currentInjector.isGuestMode())
                      Padding(
                        padding: const EdgeInsets.fromLTRB(48, 8, 48, 16),
                        child: Column(
                          children: [
                            EnsLinkText(
                              label: 'Identité Nationale de Santé',
                              textStyle: EnsTextStyle.text16_w700_primary_underline,
                              alignment: AlignmentDirectional.center,
                              textAlign: TextAlign.center,
                              onTap: () {
                                Navigator.pushNamed(context, InsScreen.routeName);
                              },
                            ),
                          ],
                        ),
                      )
                    else
                      const SizedBox(height: 16),
                    if (isRefonteParametresEnabled) ...[
                      EnsButtonSecondary(
                        label: 'Gérer le profil',
                        textStyle: EnsTextStyle.text14_w700_normal_primary,
                        paddingAround: EdgeInsets.zero,
                        onTap: () {
                          context.tagAction(TagsGestionProfil.tag_2668_button_gerer_profil);
                          Navigator.pushNamed(context, GestionProfilScreen.routeName);
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                    _AyantsDroitsContent(vm),
                    if (vm.profilType.isProfilPrincipal && aidantsAidesEnabled && !isRefonteParametersEnabled) ...[
                      EnsDivider(paddingBottom: 8, paddingTop: vm.profiles.length > 1 ? 8 : 0),
                      ProfileDialogItem(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, DonnerAccesMonProfilScreen.routeName);
                          context.tagAction(TagsAidantsAides.tag_2533_button_acces_profil_proches);
                        },
                        svgPath: EnsImages.ic_user_heart,
                        textItem: 'Donner accès à mon profil',
                      ),
                      if (!shouldShowPendingInvitations) const SizedBox(height: 8),
                    ],
                    if (shouldShowPendingInvitations) ...[
                      ProfileDialogItem(
                        onTap: () {
                          context.tagAction(TagsParameters.tag_1277_button_compte_invitation_profil);
                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, ProfilsRattachesInvitationsScreen.routeName);
                        },
                        svgPath: EnsImages.ic_user_partage_notification,
                        textItem: 'Invitation en attente',
                      ),
                      const SizedBox(height: 8),
                    ],
                    EnsDivider(
                      paddingBottom: 8,
                      paddingTop: aidantsAidesEnabled || shouldShowPendingInvitations ? 0 : 8,
                    ),
                    ProfileDialogItem(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AideScreen.routeName);
                      },
                      svgPath: EnsImages.ic_help_circle_outlined,
                      svgColor: EnsColors.title,
                      textItem: 'Aide',
                    ),
                    ProfileDialogItem(
                      onTap: () {
                        context.tagAction(TagsCompte.tag_button_compte_parametres);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, ParametersScreen.routeName);
                      },
                      svgPath: EnsImages.ic_settings,
                      textItem: isRefonteParametresEnabled ? 'Paramètres de l\'application' : 'Paramètres',
                    ),
                    const EnsDivider(paddingTop: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Center(
                        child: EnsInkWell(
                          onTap: () {
                            context.tagAction(TagsCompte.tag_button_compte_deconnexion);
                            Navigator.pop(context);
                            StoreProvider.of<EnsInitialState>(context)
                                .dispatch(LogoutAction(EnsModuleContainer.currentInjector.isGuestMode()));
                            StoreProvider.of<EnsState>(context).dispatch(InvalidateCacheAction());
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text('Se déconnecter', style: EnsTextStyle.text12_w700_normal_body),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: EnsCrossButton(
                  accessibilityLabel: 'Fermer la fenêtre de Profile',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AyantsDroitsContent extends StatelessWidget {
  final ProfilesDialogViewModel vm;

  const _AyantsDroitsContent(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case ScreenStatus.ERROR:
        return _AyantsDroitsErrorContent(vm);
      case ScreenStatus.LOADING:
      case ScreenStatus.SUCCESS:
        return Column(
          children: [
            const EnsDivider(),
            if (vm.status == ScreenStatus.LOADING) ProfileItemSkeleton() else ProfilesList(vm: vm),
          ],
        );
    }
  }
}

class _AyantsDroitsErrorContent extends StatelessWidget {
  final ProfilesDialogViewModel vm;

  const _AyantsDroitsErrorContent(this.vm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Impossible de récupérer vos ayants droits',
            style: EnsTextStyle.text14_w600_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          EnsButton(
            label: 'Réessayer',
            verticalPadding: 8,
            size: EnsButtonSize.SMALL,
            onTap: vm.reloadData,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
