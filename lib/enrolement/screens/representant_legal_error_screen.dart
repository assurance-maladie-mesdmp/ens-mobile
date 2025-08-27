/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RepresentantLegalErrorScreen extends StatelessWidget {
  static const routeName = '/enrolement/error_representant_legal';

  @override
  Widget build(BuildContext context) {
    final fullName = ModalRoute.of(context)?.settings.arguments as String?;
    context.tagInitialAction(TagsEnrolement.tag_2325_enrolement_dashboard_monprofil_erreur);

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: ''),
      body: DisappearingIllustrationPage(
        asset: EnsImages.error,
        children: [
          Text(
            'Je ne peux pas accéder au profil de $fullName',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Seul le représentant légal auquel l’enfant est rattaché auprès du régime d’assurance maladie obligatoire a accès à son profil.',
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
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
