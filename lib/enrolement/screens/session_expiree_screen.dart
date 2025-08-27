/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class SessionExpireeScreen extends StatelessWidget {
  static const routeName = '/enrolement/session_expiree';

  const SessionExpireeScreen();

  @override
  Widget build(BuildContext context) {
    context.tagInitialAction(TagsEnrolement.tag_2326_enrolement_dashboard_profil_decede);
    return EnsPopScope.shouldNotPop(
      child: Scaffold(
        body: DisappearingIllustrationPage(
          asset: EnsImages.temps,
          children: [
            const Text(
              'Votre session a expiré',
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Pour renouveler votre demande, retournez à l’accueil.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            StoreBuilder<EnsInitialState>(
              builder: (_, store) {
                return EnsButton(
                  label: 'Revenir à l’accueil',
                  onTap: () {
                    store.dispatch(ResetEnrolementAction());
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
