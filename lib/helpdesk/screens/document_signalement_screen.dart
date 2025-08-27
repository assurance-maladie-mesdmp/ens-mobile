/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DocumentSignalementScreen extends StatelessWidget {
  static const routeName = 'document-signalement';

  const DocumentSignalementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Signaler un problème',
      ),
      resizeToAvoidBottomInset: false,
      body: StoreConnector<EnsState, AnalyticsViewModel>(
        onInitialBuild: (vm) => vm.tagAction(TagsDocuments.tag_850_signaler_un_document),
        distinct: true,
        converter: (store) => AnalyticsViewModel(store),
        builder: (BuildContext context, AnalyticsViewModel vm) {
          final idDoc = ModalRoute.of(context)!.settings.arguments! as String;
          return EnsEmptyPage(
            customImagePath: EnsImages.information,
            title: 'Signaler un problème sur ce document',
            description:
                'Le professionnel ou l\'établissement de santé qui a déposé ce document peut le modifier ou le supprimer.\nNous vous recommandons de le contacter directement.\nSi l\'anomalie persiste, vous pouvez contacter un conseiller Mon espace santé via le formulaire en ligne.',
            buttonList: EnsEmptyButtonList.withPrimaryButton(
              primaryButtonLabel: 'Continuer',
              primaryButtonHandler: () {
                vm.tagAction(TagsDocuments.tag_849_link_contacter_conseiller_signaler_un_document);
                Navigator.pushNamed(
                  context,
                  NouvelleDemandeFormulaireScreen.routeName,
                  arguments: NouvelleDemandeFormulaireScreenArguments.doc(documentId: idDoc),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
