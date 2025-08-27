/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_parametres_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/tags/tags_consentement_extraction_donnees_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class ConsentementExtractionDonneesSanteParametresScreen extends StatelessWidget {
  static const routeName = '/consentement-extraction-donnees-sante-parametre';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ConsentementExtractionDonneesSanteViewModel>(
      converter: (store) => ConsentementExtractionDonneesSanteViewModel.from(store: store),
      onWillChange: (previousViewModel, newViewModel) {
        if (newViewModel.status.isSuccess() && previousViewModel?.hasAccepted != newViewModel.hasAccepted) {
          newViewModel.onConsentementUpdated(newViewModel.hasAccepted);
        }
      },
      onInitialBuild: (_) =>
          context.tagAction(TagsConsentementExtractionDonneesSante.tag_2442_recuperation_automatique),
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: isRefonteParametresEnabled
                ? 'Import des données depuis les documents'
                : 'Récupération automatique des données des documents',
          ),
          body: isRefonteParametresEnabled
              ? SafeArea(
                  child: ScrollviewWithScrollbar(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                          child: MergeSemantics(
                            child: Column(
                              children: [
                                Text(
                                  'Lorsque je reçois un document contenant des données relatives à ma santé (comme par exemple des résultats d\'analyses médicales), ces informations peuvent automatiquement être ajoutées dans différentes rubriques de mon Profil médical afin de mieux suivre leur évolution dans le temps.\n\nActuellement, les données suivantes sont automatiquement ajoutées dans la rubrique Mesures du Profil médical :'
                                      .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                                  style: EnsTextStyle.text14_w400_normal_body,
                                ),
                                const EnsBulletPoint(text: 'glycémie', margin: 8),
                                const EnsBulletPoint(text: 'hémoglobine glyquée', margin: 8),
                                const EnsBulletPoint(text: 'taille', margin: 8),
                                const EnsBulletPoint(text: 'poids', margin: 8),
                                const EnsBulletPoint(text: 'périmètre crânien', margin: 8),
                              ],
                            ),
                          ),
                        ),
                        ParametersToggleItem(
                          titre: 'Import des données des documents reçus',
                          description:
                              'J\'accepte que les données contenues dans un document que j\'ai reçu soient automatiquement ajoutées dans mon Profil médical.'
                                  .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                          value: vm.hasAccepted,
                          onToggle: vm.onConsentementChange,
                          internalVerticalPadding: 18.0,
                        ),
                      ],
                    ),
                  ),
                )
              : SafeArea(
                  child: ScrollviewWithScrollbar(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                          child: MergeSemantics(
                            child: Column(
                              children: [
                                Text(
                                  'Lorsque je reçois un document contenant des données relatives à ma santé (comme par exemple des résultats d\'analyses médicales), ces informations peuvent automatiquement être ajoutées dans différentes rubriques de mon Profil médical afin de mieux suivre leur évolution dans le temps.\n\nActuellement, les données suivantes sont automatiquement ajoutées dans la rubrique Mesures du Profil médical :',
                                  style: EnsTextStyle.text14_w400_normal_body,
                                ),
                                EnsBulletPoint(text: 'glycémie', margin: 8),
                                EnsBulletPoint(text: 'hémoglobine glyquée', margin: 8),
                                EnsBulletPoint(text: 'taille, poids et périmètre crânien', margin: 8),
                              ],
                            ),
                          ),
                        ),
                        ParametersToggleItem(
                          titre: 'Récupération automatique des données des documents reçus',
                          description:
                              'J\'accepte que les données contenues dans un document que j\'ai reçu soient automatiquement ajoutées dans mon Profil médical.',
                          value: vm.hasAccepted,
                          onToggle: vm.onConsentementChange,
                          internalVerticalPadding: 18.0,
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
