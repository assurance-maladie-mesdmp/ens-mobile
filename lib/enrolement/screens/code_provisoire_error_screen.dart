/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/code_provisoire_error_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class CodeProvisoireErrorScreen extends StatelessWidget {
  static const routeName = '/enrolement/code_provisoire_error';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, CodeProvisoireErrorScreenViewModel>(
      onInitialBuild: (vm) {
        switch (vm.typeError) {
          case TypeError.CODE_EMAIL_OR_SMS_EXPIRED:
            break;
          case TypeError.CODE_COURRIER_EXPIRED:
            context.tagInitialAction(TagsEnrolement.tag_2312_enrolement_dashboard_erreur_code_expire);
          case TypeError.CODE_ALREADY_USED:
            context.tagInitialAction(TagsEnrolement.tag_2311_enrolement_dashboard_erreur_code_utilise);
        }
      },
      converter: (Store<EnsInitialState> store) => CodeProvisoireErrorScreenViewModel(store),
      builder: (context, vm) {
        return _Body(vm);
      },
    );
  }
}

class _Body extends StatelessWidget {
  final CodeProvisoireErrorScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPopScope.shouldNotPop(
      child: Scaffold(
        body: DisappearingIllustrationPage(
          asset: EnsImages.code_provisoire_expire,
          children: [
            Text(
              switch (vm.typeError) {
                TypeError.CODE_EMAIL_OR_SMS_EXPIRED ||
                TypeError.CODE_COURRIER_EXPIRED =>
                  'Votre code provisoire a expiré',
                TypeError.CODE_ALREADY_USED => 'Votre code provisoire a déjà été utilisé',
              },
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              switch (vm.typeError) {
                TypeError.CODE_EMAIL_OR_SMS_EXPIRED =>
                  'Pour recevoir un nouveau code, vous devez de nouveau entrer les informations de votre carte Vitale.',
                TypeError.CODE_COURRIER_EXPIRED ||
                TypeError.CODE_ALREADY_USED =>
                  'Le code provisoire ne peut servir qu’une seule fois. \n\n'
                      'Pour recevoir un nouveau code par SMS ou e-mail, vous devez renseigner vos coordonnées : \n\n'
                      ' \u2022 soit depuis le compte en ligne de votre caisse d\’assurance maladie \n\n'
                      ' \u2022 soit en contactant directement votre caisse d\’assurance maladie.',
              },
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            EnsButton(
              label: switch (vm.typeError) {
                TypeError.CODE_EMAIL_OR_SMS_EXPIRED => 'Vérifier mon identité',
                TypeError.CODE_COURRIER_EXPIRED || TypeError.CODE_ALREADY_USED => 'Revenir à l’accueil',
              },
              onTap: switch (vm.typeError) {
                TypeError.CODE_EMAIL_OR_SMS_EXPIRED => () {
                    Navigator.pop(context);
                  },
                TypeError.CODE_COURRIER_EXPIRED || TypeError.CODE_ALREADY_USED => () {
                    vm.resetEnrolementState();
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
              },
            ),
          ],
        ),
      ),
    );
  }
}
