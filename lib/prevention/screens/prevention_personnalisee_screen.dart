/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/prevention/screens/bibliotheque_articles_de_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/widgets/prevention_habitudes_de_vie_segment.dart';
import 'package:fr_cnamts_ens/prevention/widgets/prevention_personnalisee_segment.dart';
import 'package:fr_cnamts_ens/tags/tags_prevention.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class PreventionPersonnaliseeScreen extends StatelessWidget {
  static const routeName = '/prevention-personnalisee';

  const PreventionPersonnaliseeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Prévention'),
      body: SafeArea(
        child: ScrollviewWithScrollbar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'Je retrouve toutes les informations adaptées à ma situation me permettant d\'adopter les bons réflexes pour préserver ma santé',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: PreventionHabitudesDeVieSegment(),
              ),
              const SizedBox(height: 24),
              const PreventionPersonnaliseeSegment(),
              const SizedBox(height: 16),
              EnsButtonSecondary(
                paddingAround: const EdgeInsets.symmetric(horizontal: 24),
                label: 'Lire plus d\'articles',
                backgroundColor: Colors.transparent,
                onTap: () {
                  context.tagAction(TagsPrevention.tag_2670_bouton_prevention_voir_plus_articles);
                  Navigator.pushNamed(context, BibliothequeArticlesDePreventionScreen.routeName);
                },
              ),
              const SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }
}
