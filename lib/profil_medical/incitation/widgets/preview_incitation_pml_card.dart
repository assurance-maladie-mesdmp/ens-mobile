/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_welcome_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/preview_incitation_pml_card_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_pml.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_stepper.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class PreviewIncitationPmlCard extends StatelessWidget {
  const PreviewIncitationPmlCard();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, PreviewIncitationPmlCardViewModel>(
      converter: (store) => PreviewIncitationPmlCardViewModel.from(
        store,
        isRefonteEntourageEtVolontesEnabled: isRefonteEntourageEtVolontesEnabled,
      ),
      distinct: true,
      onInit: (store) {
        store.dispatch(const FetchLastMesuresAction());
        store.dispatch(const FetchMaladiesAction());
        store.dispatch(const FetchTraitementsAction());
        store.dispatch(const FetchAllergiesAction());
        final isAdult = ProfilsUtils.getCurrentProfilType(store.state).isAdult;
        if (isRefonteEntourageEtVolontesEnabled && isAdult) {
          store.dispatch(FetchEntourageEtVolontesAction());
        }
      },
      builder: (context, vm) {
        return Visibility(
          visible: vm.isVisible,
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            child: EnsCard(
              padding: const EdgeInsets.all(16),
              onTap: () {
                vm.isProfilPrincipal
                    ? context.tagAction(TagsPml.tag_864_button_completer_onboarding_profil_pml_od)
                    : context.tagAction(TagsPml.tag_865_button_completer_onboarding_profil_pml_ad);
                Navigator.pushNamed(
                  context,
                  vm.shouldDisplayWelcomePage ? IncitationPmlWelcomeScreen.routeName : IncitationPmlScreen.routeName,
                );
              },
              child: vm.isProgressing
                  ? _ProgressingPreviewIncitationContent(vm: vm)
                  : _EmptyPreviewIncitationContent(vm: vm),
            ),
          ),
        );
      },
    );
  }
}

class _EmptyPreviewIncitationContent extends StatelessWidget {
  final PreviewIncitationPmlCardViewModel vm;

  const _EmptyPreviewIncitationContent({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const EnsSvg(EnsImages.bienvenue_square, width: 80, height: 80),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                vm.emptyCardBody,
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              Text(
                vm.goToIncitationText,
                style: EnsTextStyle.text14_w700_normal_primary_underline,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProgressingPreviewIncitationContent extends StatelessWidget {
  final PreviewIncitationPmlCardViewModel vm;

  const _ProgressingPreviewIncitationContent({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Étape ${vm.currentStep} sur ${vm.totalStep}',
          style: EnsTextStyle.text14_w400_normal_primary,
        ),
        const SizedBox(height: 4),
        ExcludeSemantics(
          child: EnsStepperIncitation(maxValue: vm.totalStep, value: vm.currentStep, minusPadding: 80),
        ),
        const SizedBox(height: 8),
        Text(
          vm.progressingCardBody,
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const SizedBox(height: 4),
        Text(
          vm.goToIncitationText,
          style: EnsTextStyle.text14_w700_normal_primary_underline,
        ),
      ],
    );
  }
}
