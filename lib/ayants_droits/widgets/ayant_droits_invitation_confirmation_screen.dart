/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/ayants_droits/widgets/viewmodels/ayant_droits_invitation_confirmation_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AyantDroitsInvitationConfirmationScreen extends StatelessWidget {
  static const routeName = '/partage/ayants-droits/invitation-confirmation';

  const AyantDroitsInvitationConfirmationScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AyantDroitsInvitationConfirmationViewModel>(
      distinct: true,
      converter: (store) => AyantDroitsInvitationConfirmationViewModel(store),
      onInitialBuild: (vm) {
        context.tagAction(
          vm.confirmationPartageProfilStatut == ConfirmationPartageProfilStatut.ACCEPTED
              ? TagsParameters.tag_1282_success_invitation_profil
              : TagsParameters.tag_1283_refuser_invitation_profil,
        );
      },
      builder: (context, vm) {
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) {
            if (vm.hasMorePendingInvitations) {
              navigator.pop();
            } else {
              navigator.popUntil((route) => route.isFirst);
            }
          },
          child: Scaffold(
            appBar: const EnsAppBarSubLevel(title: 'Invitation à accéder à un profil'),
            body: SafeArea(
              child: _Body(vm: vm),
            ),
          ),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final AyantDroitsInvitationConfirmationViewModel vm;

  const _Body({required this.vm});

  @override
  Widget build(BuildContext context) {
    return switch (vm.confirmationPartageProfilStatut) {
      ConfirmationPartageProfilStatut.ACCEPTED => _Accepted(vm: vm),
      ConfirmationPartageProfilStatut.REFUSED => _Refused(vm: vm),
      _ => const ErrorPage(),
    };
  }
}

class _Accepted extends StatelessWidget {
  final AyantDroitsInvitationConfirmationViewModel vm;

  const _Accepted({required this.vm});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const EnsIllustration(EnsImages.felicitation),
                Column(
                  children: [
                    Text(
                      'Vous avez accès au profil de ${vm.profilPartage.firstName} !',
                      style: EnsTextStyle.text24_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Je peux maintenant consulter le profil de ${vm.profilPartage.firstName}. À l\'avenir, je le retrouverai en cliquant sur mon profil, en haut à gauche.',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                EnsButton(
                  label: 'Consulter le profil',
                  onTap: () {
                    vm.changeProfile(vm.profilPartage);
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                ),
                const SizedBox(height: 24),
                if (vm.hasMorePendingInvitations)
                  EnsButtonSecondary(
                    label: 'Gérer une autre invitation',
                    onTap: () => Navigator.pop(context),
                  )
                else
                  EnsButtonSecondary(
                    label: 'Revenir à l\'accueil',
                    onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Refused extends StatelessWidget {
  final AyantDroitsInvitationConfirmationViewModel vm;

  const _Refused({required this.vm});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const EnsIllustration(EnsImages.error),
                const Text(
                  'L\'invitation a bien été refusée',
                  style: EnsTextStyle.text24_w400_normal_title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                if (vm.hasMorePendingInvitations)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EnsButton(
                        label: 'Gérer une autre invitation',
                        onTap: () => Navigator.pop(context),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                EnsButtonSecondary(
                  label: 'Revenir à l\'accueil',
                  onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
