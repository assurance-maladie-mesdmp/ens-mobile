/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';

class AddPsWithRoleBottomSheet extends StatelessWidget {
  final PsProfessionLinkToRole psProfession;
  final VoidCallback positiveButtonAction;
  final VoidCallback negativeButtonAction;

  const AddPsWithRoleBottomSheet(
    this.psProfession,
    this.positiveButtonAction,
    this.negativeButtonAction,
  );

  @override
  Widget build(BuildContext context) {
    return ConfirmationBottomSheet(
      title: psProfession.addPsWithRoleBottomSheetTitle,
      content: Column(
        children: [
          Text(
            psProfession.addPsWithRoleBottomSheetBody,
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          EnsExternalLink.withRedirection(
            crossAxisAlignment: CrossAxisAlignment.center,
            linkTextStyle: EnsTextStyle.text16_w700_normal_primary_underline,
            linkUrl: psProfession.addPsWithRoleBottomSheetUrl,
            linkText: 'En savoir plus',
          ),
        ],
      ),
      positiveButtonLabel: 'Oui',
      positiveButtonHandler: () {
        context.tagAction(TagsProfessionnelsDeSante.tag2482ButtonAjoutRoleConfirmation(psProfession));
        positiveButtonAction();
      },
      positiveButtonColor: EnsColors.primary,
      negativeButtonLabel: 'Non',
      negativeButtonHandler: () => negativeButtonAction(),
    );
  }
}
