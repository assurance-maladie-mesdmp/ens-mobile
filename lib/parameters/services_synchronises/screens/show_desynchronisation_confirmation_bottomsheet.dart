/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_services_synchronises.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';

void showUnsynchronizeConfirmationBottomSheet(
  BuildContext context, {
  required String serviceName,
  required void Function() unsynchronizeService,
  bool isOnConsentsPage = false,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Désynchroniser $serviceName ?',
        content: ConfirmationBottomSheetDefaultTextContent(
          '$serviceName ne pourra plus échanger de données avec Mon espace santé.',
        ),
        areButtonsOnSameRow: false,
        positiveButtonLabel: 'Désynchroniser $serviceName',
        positiveButtonHandler: () {
          context.tagAction(TagsServicesSynchronises.tag_624_button_compte_service_synchronises_desynchroniser_valider);
          unsynchronizeService();
          Navigator.pop(context);
          if (isOnConsentsPage) {
            Navigator.pop(context);
          }
        },
        negativeButtonHandler: () {
          context.tagAction(TagsServicesSynchronises.tag_623_button_compte_service_synchronises_desynchroniser_annuler);
        },
      );
    },
  );
}
