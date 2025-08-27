/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ProfessionnelDeSanteSignalerAccesScreenArguments {
  final String psIdNat;
  final String psFullName;

  const ProfessionnelDeSanteSignalerAccesScreenArguments({required this.psIdNat, required this.psFullName});
}

class ProfessionnelDeSanteSignalerAccesScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/detail/signaler';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as ProfessionnelDeSanteSignalerAccesScreenArguments;
    context.tagAction(TagsProfessionnelsDeSante.tag_2568_popin_signaler_acces_ps);
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Signaler un accès',
      ),
      body: EnsEmptyPage(
        customImagePath: EnsImages.information,
        title: 'Signaler l\'accès d\'un professionnel de santé',
        description:
            'Je souhaite signaler ce professionnel car je ne le connais pas, je n\'ai pas donné mon accord pour qu\'il consulte mes informations ou je pense qu\'il y a un autre problème avec l\'accès à mes données.\n\nMon signalement peut déclencher des actions auprès du professionnel de santé afin de vérifier l\'objet de l\'accès.',
        buttonList: EnsEmptyButtonList.withPrimaryButton(
          primaryButtonLabel: 'Continuer',
          primaryButtonHandler: () {
            Navigator.pushNamed(
              context,
              NouvelleDemandeFormulaireScreen.routeName,
              arguments: NouvelleDemandeFormulaireScreenArguments.ps(
                psData: FormulaireNouvelleDemandePsData(
                  psIdNat: arguments.psIdNat,
                  psFullName: arguments.psFullName,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
