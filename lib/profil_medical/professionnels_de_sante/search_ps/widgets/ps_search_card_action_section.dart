/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_mark_label.dart';

class PsSearchCardActionSection extends StatelessWidget {
  final Function() onTapButton;
  final RecherchePSType recherchePSType;
  final bool isActive;

  const PsSearchCardActionSection({
    super.key,
    required this.onTapButton,
    required this.recherchePSType,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isActive) ...[
          const EnsDivider(),
          const EnsInformationMarkLabel(
            padding: EdgeInsets.only(top: 16),
            title: 'Ce professionnel de santé n\'est plus en activité',
          ),
        ],
        if (recherchePSType.shouldShowButton(isActive))
          Semantics(
            button: true,
            child: EnsButton(
              onTap: onTapButton,
              label: recherchePSType.getButtonLabel,
              color: recherchePSType.getButtonBackgroundColor,
              bordersColor: recherchePSType.getButtonBordersColor,
              labelTextStyle: recherchePSType.getButtonLabelTextStyle,
              verticalPadding: 12,
            ),
          ),
      ],
    );
  }
}
