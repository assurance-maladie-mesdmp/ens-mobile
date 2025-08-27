/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_outlined_button.dart';

class MultiselectButton extends StatelessWidget {
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;

  const MultiselectButton({required this.toggleMultiselectMode, required this.multiselectMode});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: multiselectMode ? 'Annuler la selection' : 'Effectuer une selection de documents',
      child: EnsOutlinedButton(
        label: multiselectMode ? 'Annuler' : 'Sélectionner',
        onTap: () {
          multiselectMode ? _tagCancelMultiselectButtonClick(context) : _tagEnableMultiselectButtonClick(context);
          toggleMultiselectMode();
        },
      ),
    );
  }

  void _tagEnableMultiselectButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_selectionner',
        level1: 'documents',
      ),
    );
  }

  void _tagCancelMultiselectButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_multi-select_annuler',
        level1: 'documents',
      ),
    );
  }
}
