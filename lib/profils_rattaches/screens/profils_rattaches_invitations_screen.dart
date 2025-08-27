/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aide_invitation_confirmation_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/ayants_droits/widgets/ayant_droits_invitation_confirmation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/numero_support_picto_with_call.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profils_rattaches_invitations_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class ProfilsRattachesInvitationsScreen extends StatelessWidget {
  static const routeName = '/partage/accepter-profil';

  const ProfilsRattachesInvitationsScreen();

  @override
  Widget build(BuildContext context) {
    final aidantsAidesEnabled = isAidantsAidesEnabled;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Invitation à accéder à un profil'),
      body: StoreConnector<EnsState, ProfilsRattachesInvitationsViewModel>(
        converter: (store) => ProfilsRattachesInvitationsViewModel.from(
          store,
          isAidantsAidesEnabled: aidantsAidesEnabled,
        ),
        distinct: true,
        onInitialBuild: (vm) {
          vm.loadInvitations();
          context.tagAction(TagsParameters.tag_1278_invitation_profil);
        },
        onWillChange: (oldVm, vm) {
          if (oldVm?.confirmationAdInvitationStatus.isNotSuccess() == true &&
              vm.confirmationAdInvitationStatus.isSuccess()) {
            Navigator.pushNamed(context, AyantDroitsInvitationConfirmationScreen.routeName);
          }
          if (oldVm?.acceptOrRefuseInvitationFromAideStatus.isNotAcceptSuccess() == true &&
              vm.acceptOrRefuseInvitationFromAideStatus.isAcceptSuccess()) {
            Navigator.pushNamed(context, AideInvitationConfirmationScreen.routeName);
          }
        },
        builder: (context, vm) {
          return SafeArea(child: aidantsAidesEnabled ? _Body(vm) : _Success(vm));
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final ProfilsRattachesInvitationsViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.screenStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return _Loading();
      case AllPurposesStatus.SUCCESS:
        return _Success(vm);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.loadInvitations);
    }
  }
}

class _Success extends StatelessWidget {
  final ProfilsRattachesInvitationsViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 32),
            child: Text(
              'Je peux accepter ou refuser les invitations. En acceptant ces invitations, je pourrai accéder aux profils, les consulter et y ajouter des informations.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          if (vm.adDisplayModels.isNotEmpty) ...[
            _Header(
              title: 'En tant que représentant légal',
              button: 'Qui est représentant légal d\'un mineur ?',
              onTap: () {
                context.tagAction(TagsParameters.tag_1281_popin_invitation_profil_ensavoirplus);
                _showAdInformationBottomSheet(context);
              },
            ),
            ...vm.adDisplayModels.map(
              (adDisplayModel) => _AdInvitationItem(
                dm: adDisplayModel,
                confirmAdInvitation: vm.confirmAdInvitation,
                confirmationAdInvitationStatus: vm.confirmationAdInvitationStatus,
                acceptOrRefuseInvitationFromAideStatus: vm.acceptOrRefuseInvitationFromAideStatus,
              ),
            ),
          ],
          if (vm.aidantsAidesDisplayModels.isNotEmpty) ...[
            _Header(
              title: 'En tant que proche aidant',
              button: 'Qu\'est-ce qu\'un proche aidant ?',
              onTap: () {
                _showAideInformationBottomSheet(context);
              },
            ),
            ...vm.aidantsAidesDisplayModels.map(
              (aidantsAidesDisplayModel) => _AideInvitationItem(
                dm: aidantsAidesDisplayModel,
                acceptInvitationFromAide: vm.acceptInvitationFromAide,
                refuseInvitationFromAide: vm.refuseInvitationFromAide,
                acceptOrRefuseInvitationFromAideStatus: vm.acceptOrRefuseInvitationFromAideStatus,
                confirmationAdInvitationStatus: vm.confirmationAdInvitationStatus,
              ),
            ),
          ],
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  void _showAdInformationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const InformationBottomSheet(
          title: 'Qui est représentant légal d\'un mineur ?',
          description: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Les deux parents ou le tuteur légal nommé par le juge des tutelles.\n\nSi vous n\'êtes pas le représentant légal du mineur, vous ne pouvez ni activer ni gérer son profil Mon espace santé. Le représentant légal doit contacter le :',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              NumeroSupportPictoWithCall(),
              SizedBox(height: 24),
              Text(
                'Service disponible du lundi au vendredi de 8h30 à 17h30',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  void _showAideInformationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const InformationBottomSheet(
          title: 'Qu\'est-ce qu\'un proche aidant ?',
          description: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Un proche aidant est une personne de votre entourage vous venant en aide, à titre non professionnel, pour tout ou partie de votre vie quotidienne. Vous pouvez donner accès à votre profil Mon espace santé à vos proches aidants.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: double.infinity)),
        const SizedBox(height: 4),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: double.infinity)),
        const SizedBox(height: 4),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: double.infinity)),
        const SizedBox(height: 4),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: 150)),
        const SizedBox(height: 32),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: 250)),
        const SizedBox(height: 8),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SkeletonBox(width: 250)),
        const SizedBox(height: 24),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(width: 1, color: EnsColors.neutral200),
              bottom: BorderSide(width: 1, color: EnsColors.neutral200),
            ),
          ),
          padding: const EdgeInsets.all(24),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeletonBox(width: 96),
              SizedBox(height: 4),
              SkeletonBox(width: 140),
              SizedBox(height: 16),
              SkeletonBox(width: 88),
              SizedBox(height: 4),
              SkeletonBox(width: 188),
              SizedBox(height: 16),
              SkeletonBox(width: 112),
              SizedBox(height: 4),
              SkeletonBox(width: 244),
            ],
          ),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  final String button;
  final void Function() onTap;

  const _Header({required this.title, required this.button, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: Text(title, style: EnsTextStyle.text16_w600_normal_title),
        ),
        EnsInkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 24, left: 24, right: 24),
            child: Text(
              button,
              style: EnsTextStyle.text14_w600_normal_primary_underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _AdInvitationItem extends StatefulWidget {
  final AyantDroitInvitationDisplayModel dm;
  final void Function(String adPatientId, ConfirmationPartageProfilStatut) confirmAdInvitation;
  final AllPurposesStatus confirmationAdInvitationStatus;
  final AcceptOrRefuseInvitationStatus acceptOrRefuseInvitationFromAideStatus;

  const _AdInvitationItem({
    required this.dm,
    required this.confirmAdInvitation,
    required this.confirmationAdInvitationStatus,
    required this.acceptOrRefuseInvitationFromAideStatus,
  });

  @override
  State<_AdInvitationItem> createState() => _AdInvitationItemState();
}

class _AdInvitationItemState extends State<_AdInvitationItem> {
  ConfirmationPartageProfilStatut confirmationPartageProfilStatut = ConfirmationPartageProfilStatut.UNKNOWN;

  @override
  Widget build(BuildContext context) {
    if (widget.confirmationAdInvitationStatus.isError()) {
      confirmationPartageProfilStatut = ConfirmationPartageProfilStatut.UNKNOWN;
    }
    final isAdLoading = widget.confirmationAdInvitationStatus.isLoading();
    final isAideLoading = widget.acceptOrRefuseInvitationFromAideStatus.isLoading();
    return _ProfilsInvitationItem(
      dm: widget.dm,
      isAcceptLoading: isAdLoading && confirmationPartageProfilStatut.isAccepted(),
      isRefuseLoading: isAdLoading && confirmationPartageProfilStatut.isRefused(),
      isAcceptDisabled: (isAdLoading || isAideLoading) && confirmationPartageProfilStatut.isNotAccepted(),
      isRefuseDisabled: (isAdLoading || isAideLoading) && confirmationPartageProfilStatut.isNotRefused(),
      onAcceptTap: () {
        setState(() => confirmationPartageProfilStatut = ConfirmationPartageProfilStatut.ACCEPTED);
        context.tagAction(TagsParameters.tag_1279_button_accepter_invitation_profil);
        widget.confirmAdInvitation(widget.dm.patientId, confirmationPartageProfilStatut);
      },
      onRefuseTap: () {
        setState(() => confirmationPartageProfilStatut = ConfirmationPartageProfilStatut.REFUSED);
        context.tagAction(TagsParameters.tag_1280_button_refuser_invitation_profil);
        widget.confirmAdInvitation(widget.dm.patientId, confirmationPartageProfilStatut);
      },
    );
  }
}

class _AideInvitationItem extends StatefulWidget {
  final AideInvitationDisplayModel dm;
  final void Function(String invitationId) acceptInvitationFromAide;
  final void Function(String invitationId) refuseInvitationFromAide;
  final AcceptOrRefuseInvitationStatus acceptOrRefuseInvitationFromAideStatus;
  final AllPurposesStatus confirmationAdInvitationStatus;

  const _AideInvitationItem({
    required this.dm,
    required this.acceptInvitationFromAide,
    required this.refuseInvitationFromAide,
    required this.acceptOrRefuseInvitationFromAideStatus,
    required this.confirmationAdInvitationStatus,
  });

  @override
  State<_AideInvitationItem> createState() => _AideInvitationItemState();
}

class _AideInvitationItemState extends State<_AideInvitationItem> {
  bool? isAcceptClick;

  @override
  Widget build(BuildContext context) {
    if (widget.acceptOrRefuseInvitationFromAideStatus.isError()) {
      isAcceptClick = null;
    }
    final isAideLoading = widget.acceptOrRefuseInvitationFromAideStatus.isLoading();
    final isAdLoading = widget.confirmationAdInvitationStatus.isLoading();
    return _ProfilsInvitationItem(
      dm: widget.dm,
      isAcceptLoading: isAideLoading && isAcceptClick == true,
      isRefuseLoading: isAideLoading && isAcceptClick == false,
      isAcceptDisabled: (isAideLoading || isAdLoading) && isAcceptClick != true,
      isRefuseDisabled: (isAideLoading || isAdLoading) && isAcceptClick != false,
      onAcceptTap: () {
        setState(() => isAcceptClick = true);
        context.tagAction(TagsAidantsAides.tag_2545_button_aidant_accepter);
        widget.acceptInvitationFromAide(widget.dm.invitationId);
      },
      onRefuseTap: () {
        setState(() => isAcceptClick = false);
        context.tagAction(TagsAidantsAides.tag_2544_button_aidant_refuser);
        widget.refuseInvitationFromAide(widget.dm.invitationId);
      },
    );
  }
}

class _ProfilsInvitationItem extends StatelessWidget {
  final ProfilInvitationDisplayModel dm;
  final bool isAcceptLoading;
  final bool isRefuseLoading;
  final bool isAcceptDisabled;
  final bool isRefuseDisabled;
  final void Function() onAcceptTap;
  final void Function() onRefuseTap;

  const _ProfilsInvitationItem({
    required this.dm,
    required this.isAcceptLoading,
    required this.isRefuseLoading,
    required this.isAcceptDisabled,
    required this.isRefuseDisabled,
    required this.onAcceptTap,
    required this.onRefuseTap,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(width: 24),
              Stack(
                alignment: Alignment.center,
                children: [
                  EnsSvg(EnsImages.ic_circle_filled, width: 32, height: 32, color: dm.profilColor),
                  Center(
                    child: EnsSvg(dm.type.getIcon(), width: 20, height: 20, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(child: Text(dm.name, style: EnsTextStyle.text16_w700_normal_title)),
              const SizedBox(width: 24),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: EnsRichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'L\'invitation est valable jusqu\'au : ',
                    style: EnsTextStyle.text14_w400_normal_title,
                  ),
                  TextSpan(
                    text: dm.date,
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: EnsRichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'J\'accepte l\'invitation et je suis ',
                    style: EnsTextStyle.text14_w400_normal_title,
                  ),
                  TextSpan(
                    text: dm.type.getLabel(),
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const SizedBox(width: 24),
              EnsButtonSecondary(
                label: 'Refuser',
                hasFixedSize: true,
                verticalPadding: 12,
                paddingAround: EdgeInsets.zero,
                loading: isRefuseLoading,
                isDisabled: isRefuseDisabled,
                loadingSize: 14,
                onTap: () {
                  GuestModeHelper.showGuestModeBottomSheetIfGuestModeOrUseCallback(
                    context: context,
                    onAuthenticatedMode: () => _showRefuseInvitationBottomSheet(context),
                  );
                },
              ),
              const SizedBox(width: 16),
              EnsButton(
                label: 'Accepter',
                hasFixedSize: true,
                verticalPadding: 12,
                paddingAround: EdgeInsets.zero,
                isLoading: isAcceptLoading,
                isDisabled: isAcceptDisabled,
                loadingSize: 14,
                onTap: () {
                  GuestModeHelper.showGuestModeBottomSheetIfGuestModeOrUseCallback(
                    context: context,
                    onAuthenticatedMode: onAcceptTap,
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          const EnsDivider(),
        ],
      ),
    );
  }

  void _showRefuseInvitationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Refuser l\'accès au profil de ${dm.name}?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Si vous confirmez votre choix, vous n\'aurez pas accès à son profil.',
          ),
          positiveButtonLabel: 'Refuser',
          positiveButtonHandler: onRefuseTap,
          negativeButtonLabel: 'Annuler',
        );
      },
    );
  }
}
