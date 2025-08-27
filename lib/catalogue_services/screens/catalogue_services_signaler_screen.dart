/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CatalogueServicesSignalerScreenArguments {
  final String serviceId;
  final String serviceName;

  const CatalogueServicesSignalerScreenArguments({required this.serviceId, required this.serviceName});
}

class CatalogueServicesSignalerScreen extends StatelessWidget {
  static const routeName = '/catalogue-services-signaler';

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsCatalogueServices.tag_2331_catalogue_signaler_service_info);
    final arguments = ModalRoute.of(context)!.settings.arguments! as CatalogueServicesSignalerScreenArguments;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Signaler ce service'),
      body: EnsEmptyPage(
        customImagePath: EnsImages.information,
        title: 'Signaler un problème sur ce service',
        description:
            'Je souhaite signaler ce service car le contenu disponible me semble inapproprié, il ne respecte pas la protection de mes données ou la sécurité du service me semble insuffisante.\n\nVotre signalement déclenchera des actions auprès du service afin de vérifier l\'objet du manquement.',
        buttonList: EnsEmptyButtonList.withPrimaryButton(
          primaryButtonLabel: 'Continuer',
          primaryButtonHandler: () {
            Navigator.pushNamed(
              context,
              NouvelleDemandeFormulaireScreen.routeName,
              arguments: NouvelleDemandeFormulaireScreenArguments.service(
                serviceData: FormulaireNouvelleDemandeServiceData(
                  serviceId: arguments.serviceId,
                  serviceName: arguments.serviceName,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
