/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_completed_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_pml_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_allergies_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_don_organe_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_entourage_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_maladies_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_mesures_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_progress_card.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/widgets/incitation_pml_traitements_card.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class IncitationPmlScreen extends StatelessWidget {
  static const routeName = '/medical/profil/incitation';

  const IncitationPmlScreen();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as SynthesePmlScreenArguments?;
    final isFromOnboarding = arguments?.isFromOnboarding ?? false;

    return StoreConnector<EnsState, IncitationPmlViewModel>(
      converter: (store) => IncitationPmlViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        vm.fetchData();
        vm.isProfilPrincipal
            ? context.tagAction(TagsIncitation.tag_875_completer_profil_medical_liste_od)
            : context.tagAction(TagsIncitation.tag_881_completer_profil_medical_liste_ad);
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Compléter mon profil médical'.resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
        ),
        body: EnsPopScope.shouldPop(
          onScreenClosedInvoked: () {
            vm.fetchRecommandations();
          },
          child: SafeArea(
            child: _Content(vm: vm, isFromOnboarding: isFromOnboarding),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final IncitationPmlViewModel vm;
  final bool isFromOnboarding;

  const _Content({required this.vm, required this.isFromOnboarding});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return _Loading();
      case AllPurposesStatus.SUCCESS:
        return _Success(vm: vm, isFromOnboarding: isFromOnboarding);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.fetchData);
    }
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SkeletonBox(width: double.infinity, height: 16),
          SizedBox(height: 8),
          SkeletonBox(width: double.infinity, height: 16),
          SizedBox(height: 24),
          SkeletonCard(),
          SizedBox(height: 16),
          SkeletonCard(),
        ],
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final IncitationPmlViewModel vm;
  final bool isFromOnboarding;

  const _Success({required this.vm, required this.isFromOnboarding});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollviewWithScrollbar(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 24,
            bottom: vm.shouldDisplayEndButton ? 112 : 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Pour une meilleure prise en charge de ma santé, je renseigne l\'essentiel de mes informations médicales.'
                    .resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const IncitationPmlProgressCard(),
              const SizedBox(height: 32),
              _Mesures(mustCompletePerimetreCranien: vm.mustCompletePerimetreCranien),
              const SizedBox(height: 32),
              _SuiviMedical(),
              if (isRefonteEntourageEtVolontesEnabled && vm.mustCompleteEntourageEtVolontes) ...[
                const SizedBox(height: 32),
                _EntourageEtVolontes(),
              ],
            ],
          ),
        ),
        Visibility(
          visible: vm.shouldDisplayEndButton,
          child: _EndButton(isFromOnboarding: isFromOnboarding),
        ),
      ],
    );
  }
}

class _IncitationSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _IncitationSection({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: EnsTextStyle.text16_w400_normal_body),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }
}

class _Mesures extends StatelessWidget {
  final bool mustCompletePerimetreCranien;

  const _Mesures({required this.mustCompletePerimetreCranien});

  @override
  Widget build(BuildContext context) {
    return _IncitationSection(
      title: 'Mesures',
      children: [
        const IncitationPmlMesuresCard(mesureType: EnsMesureType.POIDS),
        const SizedBox(height: 16),
        const IncitationPmlMesuresCard(mesureType: EnsMesureType.TAILLE),
        if (mustCompletePerimetreCranien) ...[
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              context.tagAction(TagsIncitation.tag_2640_button_carte_perimetre_cranien_ad);
            },
            child: const IncitationPmlMesuresCard(mesureType: EnsMesureType.PERIMETRE_CRANIEN),
          ),
        ],
      ],
    );
  }
}

class _SuiviMedical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const _IncitationSection(
      title: 'Suivi médical et antécédents',
      children: [
        IncitationPmlAllergiesCard(),
        SizedBox(height: 16),
        IncitationPmlMaladiesCard(),
        SizedBox(height: 16),
        IncitationPmlTraitementsCard(),
      ],
    );
  }
}

class _EntourageEtVolontes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const _IncitationSection(
      title: 'Entourage et volontés',
      children: [
        IncitationPmlEntourageCard(),
        SizedBox(height: 16),
        IncitationPmlDonOrganeCard(),
      ],
    );
  }
}

class _EndButton extends StatelessWidget {
  final bool isFromOnboarding;

  const _EndButton({required this.isFromOnboarding});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          width: double.infinity,
          child: EnsButton(
            label: 'Terminer',
            onTap: () {
              context.tagAction(TagsIncitation.tag_911_button_valider_onboarding_profil_medical);
              Navigator.pushReplacementNamed(
                context,
                IncitationPmlCompletedScreen.routeName,
                arguments: SynthesePmlScreenArguments(isFromOnboarding: isFromOnboarding),
              );
            },
          ),
        ),
      ),
    );
  }
}
