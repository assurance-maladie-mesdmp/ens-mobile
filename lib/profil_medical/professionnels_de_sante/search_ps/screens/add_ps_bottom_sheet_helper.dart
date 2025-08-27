/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/add_ps_with_role_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_choix_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AddPsBottomSheetHelper {
  static void showAddPsMTModalBottomSheet({
    required VoidCallback positiveButtonAction,
    required VoidCallback negativeButtonAction,
  }) {
    final currentContext = EnsModuleContainer.currentInjector.getNavigatorKey().currentContext;
    if (currentContext != null) {
      showModalBottomSheet(
        context: currentContext,
        isScrollControlled: true,
        builder: (_) => EnsChoixIllustrationBottomSheet(
          image: EnsImages.professionnel_de_sante,
          width: 140,
          height: 140,
          title: 'Ce professionnel est-il mon médecin traitant ?',
          positiveButtonHandler: () => positiveButtonAction(),
          negativeButtonHandler: () => negativeButtonAction(),
        ),
      );
    }
  }

  static void showAddPsWithRoleBottomSheet({
    required PsProfessionLinkToRole psProfession,
    required VoidCallback positiveButtonAction,
    required VoidCallback negativeButtonAction,
  }) {
    final currentContext = EnsModuleContainer.currentInjector.getNavigatorKey().currentContext;
    if (currentContext != null) {
      currentContext.tagAction(TagsProfessionnelsDeSante.tag2481PopinAjoutRole(psProfession));
      showModalBottomSheet(
        context: currentContext,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        builder: (context) => AddPsWithRoleBottomSheet(
          psProfession,
          positiveButtonAction,
          negativeButtonAction,
        ),
      );
    }
  }
}
