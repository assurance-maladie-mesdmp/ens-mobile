/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DirectivesAnticipeesRemplirFormulaireScreen extends StatelessWidget {
  static const routeName = '/medical/profil/directives_anticipees/remplir_formulaire';

  @override
  Widget build(BuildContext context) {
    final docEditionViewController = DocumentEditionViewController(
      context,
      forcedCategory: EnsDocumentCategorie.directivesAnticipees,
    );

    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Remplir le formulaire',
      ),
      body: EnsEmptyPage(
        customImagePath: EnsImages.siteweb_mobile_coupe,
        title: 'Fonctionnalité uniquement disponible sur le site',
        description:
            'Je peux ajouter mes directives anticipées en remplissant le formulaire en ligne uniquement depuis le site.\nPour ajouter mes directives anticipées depuis l’application mobile, je peux ajouter un document déjà rédigé.',
        buttonList: EnsEmptyButtonList.withPrimaryAndExternalLinkButtonAndBottomLinkText(
          primaryButtonLabel: 'J\'ai compris',
          primaryButtonHandler: () {
            Navigator.pop(context);
          },
          linkButtonLabel: 'Ajouter un document',
          isLinkButtonLoading: false,
          linkButtonHandler: () {
            docEditionViewController.openAddDocumentActions();
          },
          externalLinkLabel: 'monespacesante.fr',
          externalLinkUrl: 'https://www.monespacesante.fr',
        ),
      ),
    );
  }
}
