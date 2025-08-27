/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_parametres_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_consentement_extraction_donnees_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ConsentementExtractionDonneesSanteScreenArguments {
  final bool isFromOnboarding;

  ConsentementExtractionDonneesSanteScreenArguments({required this.isFromOnboarding});
}

class ConsentementExtractionDonneesSanteScreen extends StatelessWidget {
  static const routeName = '/consentement-extraction-donnees-sante';

  const ConsentementExtractionDonneesSanteScreen();

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsConsentementExtractionDonneesSante.tag_2439_consentement_cgu);
    final arguments = ModalRoute.of(context)!.settings.arguments! as ConsentementExtractionDonneesSanteScreenArguments;
    return Scaffold(
      appBar: EnsAppBar(
        title: 'Récupération automatique des données des documents',
        leading: EnsDefaultAppBarLeading(),
      ),
      body: ScrollviewWithScrollbar(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const EnsIllustration(EnsImages.recuperation_automatique),
              const SizedBox(height: 24),
              const Text(
                'Mes mesures de santé alimentées automatiquement',
                style: EnsTextStyle.text24_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Mes professionnels de santé ajoutent des documents dans Mon espace santé, dont certains comportent des mesures de santé. Pour mieux suivre leur évolution dans le temps, elles sont ajoutées automatiquement dans la rubrique Mesures de mon Profil médical.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              EnsButton(
                label: 'J\'ai compris',
                onTap: () {
                  context.tagAction(TagsConsentementExtractionDonneesSante.tag_2440_button_consentement_accepte);
                  StoreProvider.of<EnsState>(context).dispatch(UpdateConsentementExtractionDonneesSanteAction(true));
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
              const SizedBox(height: 8),
              EnsLinkText(
                label: 'Je souhaite en savoir plus ou m’y opposer',
                textStyle: EnsTextStyle.text16_w700_primary_underline,
                textAlign: TextAlign.center,
                onTap: () {
                  context.tagAction(TagsConsentementExtractionDonneesSante.tag_2441_button_consentement_oppose);
                  StoreProvider.of<EnsState>(context).dispatch(UpdateConsentementExtractionDonneesSanteAction(false));
                  if (arguments.isFromOnboarding) {
                    Navigator.pushNamed(context, ConsentementExtractionDonneesSanteParametresScreen.routeName).then(
                      (value) {
                        if (context.mounted) Navigator.popUntil(context, (route) => route.isFirst);
                      },
                    );
                  } else {
                    Navigator.pushReplacementNamed(
                      context,
                      ConsentementExtractionDonneesSanteParametresScreen.routeName,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
