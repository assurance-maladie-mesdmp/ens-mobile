/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/cgu/screen/accept_cgu_screen_view_model.dart';

class AcceptCguScreen extends StatelessWidget {
  static const routeName = '/cgu';
  final _cguUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cguUrl;

  @override
  Widget build(BuildContext context) {
    return EnsPopScope.shouldNotPop(
      onPopInvoked: (_) {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => const InformationBottomSheet(
            title: 'Mise à jour des Conditions Générales d\'Utilisation',
            description: Text(
              'Veuillez accepter la mise à jour des Conditions Générales d\'Utilisation pour accéder à Mon Espace Santé.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
      child: Scaffold(
        appBar: const EnsAppBar(title: 'Mise à jour des Conditions Générales d\'Utilisation'),
        body: ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const EnsIllustration(EnsImages.cgus),
                const SizedBox(height: 16),
                const Text(
                  'Dans le cadre de nos mises à jour régulières, nous avons apporté quelques changements à nos Conditions Générales d\'Utilisation (CGU). Pour plus de détails',
                  style: EnsTextStyle.text16_w400_normal_body,
                  textAlign: TextAlign.center,
                ),
                EnsExternalLink.withRedirection(
                  linkUrl: _cguUrl,
                  linkText: 'Consulter les Conditions Générales d\'Utilisation.',
                  linkTextAlign: TextAlign.center,
                  extraPadding: const EdgeInsets.all(8),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Si vous n’acceptez pas la mise à jour des CGU, vous ne pourrez plus accéder à Mon espace santé.',
                  style: EnsTextStyle.text16_w400_normal_body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                StoreConnector<EnsState, AcceptCguScreenViewModel>(
                  converter: (store) => AcceptCguScreenViewModel.from(store),
                  onDidChange: (oldVm, vm) {
                    if (oldVm?.isFinished != true && vm.isFinished) {
                      const acceptedCgu = true;
                      Navigator.pop(context, acceptedCgu);
                    }
                  },
                  distinct: true,
                  builder: (_, vm) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      EnsButton(
                        label: 'Accepter les CGU',
                        onTap: vm.acceptCgu,
                        isLoading: vm.isLoading,
                      ),
                      const SizedBox(height: 24),
                      EnsButtonSecondary(
                        label: 'Se déconnecter',
                        isDisabled: vm.isLoading,
                        onTap: () {
                          StoreProvider.of<EnsInitialState>(context).dispatch(LogoutAction());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
