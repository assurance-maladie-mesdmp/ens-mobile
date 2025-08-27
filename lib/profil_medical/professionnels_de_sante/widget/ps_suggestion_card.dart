/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class PsSuggestionCard extends StatelessWidget {
  final ActeurDeSanteSuggestionDisplayModel suggestionDisplayModel;
  final Function() onTap;
  final String buttonText;
  final Color buttonColor;
  final TextStyle buttonTextStyle;

  const PsSuggestionCard({
    required this.suggestionDisplayModel,
    required this.onTap,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      borderRadius: 16,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            suggestionDisplayModel.formattedSuggestionName,
            style: EnsTextStyle.text16_w600_normal_title,
            textAlign: TextAlign.start,
          ),
          if (suggestionDisplayModel is ProfessionalDeSanteSuggestionDisplayModel) ...[
            Text(
              suggestionDisplayModel.subtitle,
              style: EnsTextStyle.text14_w400_normal_body,
              textAlign: TextAlign.start,
            ),
          ],
          if (suggestionDisplayModel is EtablissementDeSanteSuggestionDisplayModel) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EnsSvg(suggestionDisplayModel.icon, height: 18, width: 14),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    suggestionDisplayModel.subtitle,
                    style: EnsTextStyle.text14_w400_normal_title,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          EnsButton(onTap: onTap, label: buttonText),
        ],
      ),
    );
  }
}
