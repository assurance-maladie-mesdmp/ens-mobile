/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_confidentialite_documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/consentements_urgence_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class OnboardingConfidentialiteDocumentsScreen extends StatefulWidget {
  static const routeName = '/onboarding/confidentialite';

  const OnboardingConfidentialiteDocumentsScreen();

  @override
  State<OnboardingConfidentialiteDocumentsScreen> createState() => _OnboardingConfidentialiteDocumentsScreenState();
}

class _OnboardingConfidentialiteDocumentsScreenState extends State<OnboardingConfidentialiteDocumentsScreen> {
  DefaultConfidentiality? _selectedOnboardingConfidentiality;
  bool _shouldShowRadioTypeError = false;

  void _updateRadioButton(DefaultConfidentiality defaultConfidentiality) {
    setState(() {
      _selectedOnboardingConfidentiality = defaultConfidentiality;
      _shouldShowRadioTypeError = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, OnboardingConfidentialiteDocumentsScreenViewModel>(
      converter: (store) => OnboardingConfidentialiteDocumentsScreenViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        context.tagAction(TagsOnboarding.tag_2288_confidentialite_ps_on_boarding);
        if (vm.initialConfidentiality != null) {
          _updateRadioButton(vm.initialConfidentiality!);
        }
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.updateStatus.isLoading() == true && vm.updateStatus.isFinishLoaded()) {
          Navigator.pushNamed(
            context,
            ConsentementsUrgenceScreen.routeName,
            arguments: const ConsentementsUrgenceScreenArguments(isFromOnboarding: true),
          );
        }
      },
      builder: (_, vm) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: double.infinity,
            child: EnsFloatingButton(
              buttonLabel: 'Continuer',
              isDisabled: vm.updateStatus.isLoading(),
              onTap: () {
                final error = _selectedOnboardingConfidentiality == null;
                setState(() => _shouldShowRadioTypeError = error);
                if (!_shouldShowRadioTypeError) {
                  vm.sendConfidentialite(_selectedOnboardingConfidentiality == DefaultConfidentiality.MASKED);
                }
              },
            ),
          ),
        ),
        appBar: const EnsAppBarSubLevel(
          title: 'Confidentialité des informations',
        ),
        body: _OnboardingConfidentialitySelection(
          vm: vm,
          selectedOnboardingConfidentiality: _selectedOnboardingConfidentiality,
          shouldShowRadioTypeError: _shouldShowRadioTypeError,
          updateRadioButton: _updateRadioButton,
        ),
      ),
    );
  }
}

class _OnboardingConfidentialitySelection extends StatelessWidget {
  final OnboardingConfidentialiteDocumentsScreenViewModel vm;
  final DefaultConfidentiality? selectedOnboardingConfidentiality;
  final bool shouldShowRadioTypeError;
  final void Function(DefaultConfidentiality) updateRadioButton;

  const _OnboardingConfidentialitySelection({
    required this.vm,
    required this.selectedOnboardingConfidentiality,
    required this.shouldShowRadioTypeError,
    required this.updateRadioButton,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Je peux rendre visibles ou masquer mes informations aux professionnels de santé. \r\n'
            'Je serai notifié lorsqu\'un professionnel de santé consulte mes informations.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 32),
          if (shouldShowRadioTypeError) ...[
            const EnsErrorText(text: 'Sélectionner un choix'),
            const SizedBox(height: 8),
          ],
          EnsRadioButton.card(
            label: 'Rendre visibles mes informations aux professionnels de santé habilités',
            defaultLabelStyle: EnsTextStyle.text14_w600_normal_title,
            groupValue: selectedOnboardingConfidentiality,
            value: DefaultConfidentiality.VISIBLE,
            onSelected: () {
              if (selectedOnboardingConfidentiality != DefaultConfidentiality.VISIBLE) {
                context.tagAction(TagsOnboarding.tag_2289_button_ajouter_confidentialite_visible);
                updateRadioButton(DefaultConfidentiality.VISIBLE);
              }
            },
            enabled: !vm.updateStatus.isLoading(),
          ),
          const SizedBox(height: 16),
          EnsRadioButton.card(
            label: 'Masquer mes informations aux professionnels de santé ',
            defaultLabelStyle: EnsTextStyle.text14_w600_normal_title,
            groupValue: selectedOnboardingConfidentiality,
            value: DefaultConfidentiality.MASKED,
            onSelected: () {
              if (selectedOnboardingConfidentiality != DefaultConfidentiality.MASKED) {
                context.tagAction(TagsOnboarding.tag_2290_button_ajouter_confidentialite_masquee);
                updateRadioButton(DefaultConfidentiality.MASKED);
              }
            },
            enabled: !vm.updateStatus.isLoading(),
          ),
          const SizedBox(height: 32),
          const Text(
            'Si je change d\'avis, je peux à tout moment modifier la confidentialité de mes informations depuis mes Paramètres.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 76),
        ],
      ),
    );
  }
}
