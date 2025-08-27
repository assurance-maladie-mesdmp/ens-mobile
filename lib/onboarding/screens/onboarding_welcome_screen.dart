/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_welcome_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class OnboardingWelcomeScreen extends StatelessWidget {
  static const routeName = '/onboarding/welcome';

  const OnboardingWelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, OnboardingWelcomeScreenViewModel>(
      converter: (store) => OnboardingWelcomeScreenViewModel.from(store),
      onInitialBuild: (vm) {
        context.tagAction(TagsOnboarding.tag_2287_bienvenue_on_boarding);
        vm.load();
      },
      builder: (context, vm) {
        return Scaffold(
          body: EnsPopScope.shouldNotPop(
            child: _Content(vm),
          ),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final OnboardingWelcomeScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return _Loading();
      case AllPurposesStatus.SUCCESS:
        return _Success(vm);
      case AllPurposesStatus.ERROR:
        return _Error(vm);
    }
  }
}

class _Success extends StatelessWidget {
  final OnboardingWelcomeScreenViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    final isSmallDevice = DeviceUtils.isSmallDevice(context);
    return DisappearingIllustrationPage(
      asset: EnsImages.bienvenue,
      children: [
        Text(
          'Bienvenue ${vm.mainFirstName}',
          style: EnsTextStyle.text26_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Je définis mes préférences pour un meilleur suivi de ma santé.',
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: isSmallDevice ? 16 : 32),
        Row(
          children: [
            const EnsSvg(EnsImages.document_confidenciel),
            SizedBox(width: isSmallDevice ? 8 : 16),
            const Expanded(
              child: Text(
                'Je définis la confidentialité de mes informations.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
          ],
        ),
        SizedBox(height: isSmallDevice ? 8 : 16),
        Row(
          children: [
            const EnsSvg(EnsImages.urgence),
            SizedBox(width: isSmallDevice ? 8 : 16),
            const Expanded(
              child: Text(
                'Je choisis les accès à mes informations en cas d’urgence.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
          ],
        ),
        SizedBox(height: isSmallDevice ? 16 : 32),
        EnsButton(
          label: 'Commencer',
          onTap: () {
            Navigator.pushNamed(
              context,
              OnboardingConfidentialiteDocumentsScreen.routeName,
            );
          },
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SkeletonBox(height: 126, width: 126),
          SizedBox(height: 16),
          SkeletonBox(height: 36, width: 252),
          SizedBox(height: 8),
          SkeletonBox(height: 60),
          SizedBox(height: 32),
          SkeletonBox(height: 60),
          SizedBox(height: 16),
          SkeletonBox(height: 60),
          SizedBox(height: 32),
          SkeletonBox(height: 56, radius: 52),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final OnboardingWelcomeScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      reloadFunction: () => vm.load(),
      endChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: DeviceUtils.isSmallDevice(context) ? 8 : 12),
          EnsLinkText(
            label: 'Revenir à l’accueil',
            alignment: AlignmentDirectional.center,
            onTap: () {
              const shouldLogout = true;
              Navigator.pop(context, shouldLogout);
            },
          ),
        ],
      ),
    );
  }
}
