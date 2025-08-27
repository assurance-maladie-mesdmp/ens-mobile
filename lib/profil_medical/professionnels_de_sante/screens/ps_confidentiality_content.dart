/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/viewmodel/signalement_information_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/consentements_urgence_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_sante_service_indisponible_section.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/ps_confidentiality_content_builder.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/ps_confidentiality_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/ps_confidentiality_content_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class PsConfidentialityContent extends StatelessWidget {
  final String idNat;
  final String psFullName;
  final bool active;
  final bool profilType;
  final String mainFirstName;

  const PsConfidentialityContent({
    required this.idNat,
    required this.psFullName,
    required this.active,
    required this.profilType,
    required this.mainFirstName,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, PsConfidentialityContentViewModel>(
      converter: (store) => PsConfidentialityContentViewModel(store, idNat: idNat),
      builder: (_, vm) {
        final psConfidentialityDisplayModel = vm.psConfidentialityDisplayModel;
        return ColoredBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (psConfidentialityDisplayModel is PsConfidentilityErrorDisplayModel) ...[
                  const ProfessionnelSanteServiceIndisponibleSection(label: 'Confidentialité indisponible'),
                ] else ...[
                  const Text('Confidentialité', style: EnsTextStyle.text20_w500_normal_title),
                  const SizedBox(height: 16),
                  if (psConfidentialityDisplayModel is PsConfidentilityConsentDisplayModel)
                    _PsConfidentialityConsentContent(
                      consentDisplayModel: psConfidentialityDisplayModel,
                      blockPs: vm.blockPs,
                      idNat: idNat,
                      psFullName: psFullName,
                      active: active,
                      profilType: profilType,
                      mainFirstName: mainFirstName,
                    )
                  else if (psConfidentialityDisplayModel is PsConfidentilityBlockedDisplayModel)
                    _PsConfidentialityBlockedContent(
                      blockedDisplayModel: psConfidentialityDisplayModel,
                      unblockPs: vm.unblockPs,
                      idNat: idNat,
                      psFullName: psFullName,
                      active: active,
                    )
                  else if (psConfidentialityDisplayModel is PsConfidentilityNotYetConsultedDisplayModel)
                    _PsConfidentialityNotYetConsultedContent(
                      notYetConsultedDisplayModel: psConfidentialityDisplayModel,
                      blockPs: vm.blockPs,
                      idNat: idNat,
                      psFullName: psFullName,
                      active: active,
                      profilType: vm.profilType,
                      mainFirstName: vm.mainFirstName,
                    )
                  else if (psConfidentialityDisplayModel is PsConfidentilityLoadingDisplayModel)
                    const _PsConfidentialityLoadingContent(),
                  const SizedBox(height: 16),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}

class _PsConfidentialityConsentContent extends StatelessWidget {
  final PsConfidentilityConsentDisplayModel consentDisplayModel;
  final void Function() blockPs;
  final String idNat;
  final String psFullName;
  final bool active;
  final bool profilType;
  final String? mainFirstName;

  const _PsConfidentialityConsentContent({
    required this.consentDisplayModel,
    required this.blockPs,
    required this.idNat,
    required this.psFullName,
    required this.active,
    required this.profilType,
    required this.mainFirstName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          active
              ? (profilType
                  ? 'Ce professionnel est autorisé à consulter mes informations.'
                  : 'Ce professionnel est autorisé à consulter les informations de $mainFirstName.')
              : 'Ce professionnel n\'a plus accès à Mon espace santé.',
          style: EnsTextStyle.text14_w600_normal_title,
        ),
        const SizedBox(height: 8),
        Text(
          active
              ? 'Il peut consulter mes informations de santé depuis le ${consentDisplayModel.startDate}.'
              : 'Je peux toujours m\'opposer à l\'accès à mes informations dans le cas où le professionnel reprendrait son activité.',
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 12),
        PsConfidentialityContentBuilder.buildBlockPsActionItem(
          context,
          title: 'Bloquer l\'accès',
          blockPs: blockPs,
        ),
        if (active || isSignalementEnabled) const EnsDivider(paddingTop: 16, paddingBottom: 16),
        if (active) ...[
          PsConfidentialityContentBuilder.buildDroitAccesItem(
            context,
            title: 'Ce professionnel a des droits d\'accès définis selon sa profession.',
          ),
          const SizedBox(height: 24),
          PsConfidentialityContentBuilder.buildAccesDocumentItem(context),
        ],
        if (isSignalementEnabled) ...[
          SizedBox(height: active ? 24 : 0),
          _PsSignalementContent(idNat: idNat, psFullName: psFullName),
        ],
      ],
    );
  }
}

class _PsConfidentialityBlockedContent extends StatelessWidget {
  final PsConfidentilityBlockedDisplayModel blockedDisplayModel;
  final void Function() unblockPs;
  final String idNat;
  final String psFullName;
  final bool active;

  const _PsConfidentialityBlockedContent({
    required this.blockedDisplayModel,
    required this.unblockPs,
    required this.idNat,
    required this.psFullName,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          active
              ? 'J\'ai bloqué l\'accès pour ce professionnel de santé depuis le ${blockedDisplayModel.startDate}.'
              : 'Ce professionnel n\'a plus accès à Mon espace santé',
          style: EnsTextStyle.text14_w600_normal_title,
        ),
        const SizedBox(height: 8),
        Text(
          active
              ? 'Si je débloque l\'accès, je devrai de nouveau lui donner mon accord lors d\'une consultation.'
              : 'Ce professionnel de santé n\'est plus en activité.',
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 12),
        PsConfidentialityActionItem(
          icon: EnsImages.ic_unlock,
          title: 'Débloquer l\'accès',
          onTap: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_2468_button_ps_debloquer_acces);
            PsConfidentialityContentBuilder.showUnblockPsBottomSheet(context, unblockPs);
          },
        ),
        if (active || isSignalementEnabled) const EnsDivider(paddingTop: 16, paddingBottom: 16),
        if (active) ...[
          const PsConfidentialityInformationItem(
            icon: EnsImages.ic_confidentiality_document,
            title: 'Il peut toujours déposer des documents.',
          ),
        ],
        if (isSignalementEnabled) ...[
          SizedBox(height: active ? 24 : 0),
          _PsSignalementContent(idNat: idNat, psFullName: psFullName),
        ],
      ],
    );
  }
}

class _PsConfidentialityNotYetConsultedContent extends StatelessWidget {
  final PsConfidentilityNotYetConsultedDisplayModel notYetConsultedDisplayModel;
  final void Function() blockPs;
  final String idNat;
  final String psFullName;
  final bool active;
  final ProfilType profilType;
  final String mainFirstName;

  const _PsConfidentialityNotYetConsultedContent({
    required this.notYetConsultedDisplayModel,
    required this.blockPs,
    required this.idNat,
    required this.psFullName,
    required this.active,
    required this.profilType,
    required this.mainFirstName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          active
              ? _getTextPSActif(profilType: profilType, mainFirstName: mainFirstName)
              : _getTextPSInactif(profilType: profilType, mainFirstName: mainFirstName),
          style: EnsTextStyle.text14_w600_normal_title,
        ),
        const SizedBox(height: 8),
        Text(
          active
              ? _getTextDescriptionPSActif(profilType: profilType)
              : _getTextDescriptionPSInactif(profilType: profilType),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 12),
        if (active) ...[
          PsConfidentialityActionItem(
            icon: EnsImages.ic_unlock,
            title: 'Comment autoriser l\'accès ?',
            onTap: () {
              context.tagAction(TagsProfessionnelsDeSante.tag_2405_button_ps_comment_autoriser_acces);
              Navigator.pushNamed(context, PsConfidentialityEnSavoirPlusScreen.routeName);
            },
          ),
          const SizedBox(height: 8),
        ],
        PsConfidentialityContentBuilder.buildBlockPsActionItem(
          context,
          title: active ? 'M\'y opposer dès maintenant' : 'M\'opposer à l\’accès',
          blockPs: blockPs,
        ),
        if (active || isSignalementEnabled) const EnsDivider(paddingTop: 16, paddingBottom: 16),
        if (active) ...[
          PsConfidentialityContentBuilder.buildDroitAccesItem(
            context,
            title: _getDroitAccesItemTitle(profilType: profilType),
          ),
          const SizedBox(height: 24),
          if (notYetConsultedDisplayModel.shouldShowCasUrgence) ...[
            PsConfidentialityInformationItem(
              icon: EnsImages.ic_confidentiality_cas_urgence,
              title: _getCasUrgenceText(profilType: profilType),
              buttonName: 'Paramétrer',
              onTap: () {
                context.tagAction(TagsProfessionnelsDeSante.tag_2404_link_ps_confidentialite_modifier_cas_urgence);
                Navigator.pushNamed(
                  context,
                  ConsentementsUrgenceScreen.routeName,
                  arguments: const ConsentementsUrgenceScreenArguments(isFromOnboarding: false),
                );
              },
            ),
            const SizedBox(height: 24),
          ],
          PsConfidentialityContentBuilder.buildAccesDocumentItem(context),
        ],
        if (isSignalementEnabled) ...[
          SizedBox(height: active ? 24 : 0),
          _PsSignalementContent(idNat: idNat, psFullName: psFullName),
        ],
      ],
    );
  }
}

class _PsConfidentialityLoadingContent extends StatelessWidget {
  const _PsConfidentialityLoadingContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SkeletonBox(width: double.infinity, height: 52),
        SizedBox(height: 8),
        SkeletonBox(width: double.infinity, height: 52),
      ],
    );
  }
}

class _PsSignalementContent extends StatelessWidget {
  final String idNat;
  final String psFullName;

  const _PsSignalementContent({required this.idNat, required this.psFullName});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, SignalementInformationViewModel>(
      converter: (store) => SignalementInformationViewModel.from(store),
      onInit: (store) {
        store.dispatch(
          FetchSignalementInformationAction(
            signalementType: SignalementType.PS,
            idToSignal: idNat,
          ),
        );
      },
      builder: (_, vm) {
        return PsConfidentialityContentBuilder.buildSignalementItem(
          context,
          formattedLastReportDate: vm.formattedLastReportDate,
          isReportLimitExceeded: vm.isReportLimitExceeded,
          idNat: idNat,
          psFullName: psFullName,
        );
      },
    );
  }
}

class PsConfidentialityActionItem extends StatelessWidget {
  final String icon;
  final String title;
  final void Function() onTap;

  const PsConfidentialityActionItem({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            EnsSvg(icon),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: EnsTextStyle.text14_w700_normal_primary)),
          ],
        ),
      ),
    );
  }
}

class PsConfidentialityInformationItem extends StatelessWidget {
  final String icon;
  final String? title;
  final EnsRichText? richTextTitle;
  final String? buttonName;
  final void Function()? onTap;

  const PsConfidentialityInformationItem({
    required this.icon,
    this.title,
    this.richTextTitle,
    this.buttonName,
    this.onTap,
  }) : assert((title == null && richTextTitle != null) || (title != null && richTextTitle == null));

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnsSvg(icon),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                if (title != null)
                  Text(
                    title!,
                    style: EnsTextStyle.text14_w400_normal_body,
                    textAlign: TextAlign.start,
                  ),
                if (richTextTitle != null) ...[
                  richTextTitle!,
                  const SizedBox(height: 8),
                ],
                if (buttonName != null)
                  Text(
                    buttonName!,
                    style: EnsTextStyle.text14_w700_normal_body_underline.copyWith(color: EnsColors.primary),
                    textAlign: TextAlign.start,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String _getTextPSActif({
  required ProfilType profilType,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Ce professionnel n\'a pas encore consulté mes informations de santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Ce professionnel n\'a pas encore consulté les informations de santé de $mainFirstName.'
  };
}

String _getTextPSInactif({
  required ProfilType profilType,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Ce professionnel n\'a plus accès à mon espace santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Ce professionnel est autorisé à consulter les informations de $mainFirstName.'
  };
}

String _getTextDescriptionPSActif({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Lors d\'une consultation, il devra me demander mon accord oral afin de pouvoir consulter mes informations. Je pourrai alors m\'y opposer.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Lors d\'une consultation, il devra me demander mon accord oral afin de pouvoir consulter ses informations. Je pourrai alors m\'y opposer.'
  };
}

String _getTextDescriptionPSInactif({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Je peux toujours m\'opposer à l\'accès à mes informations dans le cas où le professionnel reprendrait son activité.',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Il peut consulter ses informations de santé.'
  };
}

String _getDroitAccesItemTitle({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Si le professionnel accède à mes informations, je serai notifié. Ses droits d\'accès seront définis selon sa profession.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Si le professionnel accède à ses informations, je serai notifié. Les droits d\'accès du professionnel seront définis selon sa profession.'
  };
}

String _getCasUrgenceText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'En cas d\'urgence (si je suis en incapacité de donner mon accord) ce professionnel peut quand même accéder à mes informations.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'En cas d\'urgence (si je suis en incapacité de donner mon accord) ce professionnel peut quand même accéder à ses informations.'
  };
}
