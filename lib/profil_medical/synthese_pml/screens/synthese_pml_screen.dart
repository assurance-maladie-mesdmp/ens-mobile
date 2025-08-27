/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/viewModels/synthese_pml_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/synthese_pdf/widgets/synthese_pdf_widget.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:lottie/lottie.dart';

class SynthesePmlScreenArguments {
  final bool isFromOnboarding;

  const SynthesePmlScreenArguments({required this.isFromOnboarding});
}

class SynthesePmlScreen extends StatelessWidget {
  static const routeName = '/medical/profil/synthese';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as SynthesePmlScreenArguments?;
    final isFromOnboarding = arguments?.isFromOnboarding ?? false;

    return StoreConnector<EnsState, SynthesePmlViewModel>(
      converter: (store) => SynthesePmlViewModel.from(store, isFromOnboarding: isFromOnboarding),
      onInit: (store) {
        store.dispatch(InitSynthesePdfStateAction());
        store.dispatch(FetchSynthesePMLAction());
        if (isFromOnboarding) {
          store.dispatch(const FetchVaccinationsAction());
        }
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.shouldDisplayConfidentialiteBottomSheet == false &&
            vm.shouldDisplayConfidentialiteBottomSheet &&
            vm.interruptionServiceSnackbarMessage == null) {
          _showConfidentialiteBottomSheet(context, vm);
        }
        if (oldVm?.shouldDisplayIncitationVaccinationADBottomSheet == false &&
            vm.shouldDisplayIncitationVaccinationADBottomSheet) {
          context.tagAction(TagsOnboarding.tag_2641_popin_gerer_carnet_vaccination_ad);
          showIncitationVaccinationBottomSheet(context);
        }
        _showSnackbar(oldVm, vm, context);
      },
      distinct: true,
      builder: (_, SynthesePmlViewModel vm) => Scaffold(
        appBar: _AppBar(vm),
        body: _Content(vm),
      ),
    );
  }
}

void _showSnackbar(SynthesePmlViewModel? oldVm, SynthesePmlViewModel vm, BuildContext context) {
  if (oldVm?.syntheseToDocStatus.isNotSuccess() == true && vm.syntheseToDocStatus.isSuccess()) {
    showSnackbarSuccess(context, 'Synthèse enregistrée dans les documents de santé');
  } else if (oldVm?.syntheseToDocStatus.isNotError() == true && vm.syntheseToDocStatus.isError()) {
    showSnackbarError(context, 'Une erreur est survenue.');
  }
}

class _Content extends StatelessWidget {
  final SynthesePmlViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.synthesePmlStatus) {
      case SynthesePmlStatus.SUCCESS:
        return SynthesePdfWidget(
          semanticLabel: 'Votre synthèse médicale au format PDF',
          synthesePdf: vm.synthesePml!,
          bottomTitle: _getBottomTileTitle(profilType: vm.profilType),
          bottomContent: _BottomTileContent(
            sendSynthese: vm.addSynthesePmlToDocs,
            isLoading: vm.syntheseToDocStatus.isLoading(),
            interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
            profilType: vm.profilType,
          ),
        );
      case SynthesePmlStatus.ERROR:
        return _Error(vm);
      default:
        return const _Loading();
    }
  }
}

class _BottomTileContent extends StatelessWidget {
  final Function(bool?) sendSynthese;
  final bool isLoading;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const _BottomTileContent({
    required this.sendSynthese,
    required this.isLoading,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const EnsSvg(EnsImages.suivi_medical, height: 64),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                _getBottomTileDescription(profilType: profilType),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
          ],
        ),
        const SizedBox(height: 28),
        EnsButton(
          label: 'Enregistrer dans les documents',
          onTap: () {
            InterruptionServiceHelper.showSnackbarOnInterruption(
              context,
              interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
              onNotInterrompu: () {
                context.tagAction(TagsIncitation.tag_925_button_enregistrer_synthese);
                sendSynthese(null);
              },
            );
          },
          verticalPadding: 16,
          isLoading: isLoading,
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(flex: 2),
          Lottie.asset('assets/anims/file_download.json', height: 160, width: 160, fit: BoxFit.contain),
          const SizedBox(height: 80),
          const Text('Chargement de la synthèse...', style: EnsTextStyle.text14_w700_normal_primary),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final SynthesePmlViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => vm.loadSynthesePml());
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);
  final SynthesePmlViewModel vm;

  const _AppBar(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsAppBarSubLevel(
      title: 'Synthèse du profil médical',
      action: vm.synthesePmlStatus == SynthesePmlStatus.SUCCESS
          ? Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                icon: const EnsSvg(EnsImages.ic_download, color: EnsColors.title, width: 18, height: 24),
                tooltip: 'Télécharger la synthèse médicale',
                splashRadius: 24,
                onPressed: vm.exportSynthese,
              ),
            )
          : null,
    );
  }
}

void _showConfidentialiteBottomSheet(
  BuildContext context,
  SynthesePmlViewModel vm,
) {
  showConfidentialiteBottomSheet(
    context: context,
    title: vm.titleBottomSheet,
    description: vm.descriptionBottomSheet,
    tagOnPositive: () => vm.profilType.isProfilPrincipal
        ? context.tagAction(TagsIncitation.tag_927_button_oui_visible_synthese_od)
        : context.tagAction(TagsIncitation.tag_928_button_oui_visible_synthese_ad),
    addSyntheseToDoc: vm.addSynthesePmlToDocs,
    reset: vm.resetConfidentialiteBottomSheet,
  );
}

String _getBottomTileDescription({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'J\'enregistre la synthèse de mon Profil médical dans mes documents pour la rendre visible à mes professionnels de santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je l\'enregistre dans ses documents pour la rendre visible à ses professionnels de santé.'
  };
}

String _getBottomTileTitle({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'enregistre la synthèse pour la rendre visible aux professionnels de santé',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Enregistrer la synthèse de son profil médical'
  };
}
