/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/questionnaire_ages_cles_questions_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class QuestionnaireRadioOptionsWidget extends StatelessWidget {
  final String radioOptionGroupValue;
  final List<OptionMultipleDisplayModel> displayModels;
  final bool displayEraseButton;
  final void Function(String) updateNewAnswers;
  final void Function() onEraseSelection;

  const QuestionnaireRadioOptionsWidget({
    super.key,
    required this.radioOptionGroupValue,
    required this.displayModels,
    required this.displayEraseButton,
    required this.updateNewAnswers,
    required this.onEraseSelection,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListViewWithScrollbar.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            itemBuilder: (context, index) {
              final currentOption = displayModels[index];
              return EnsRadioButton.card(
                label: currentOption.label,
                groupValue: radioOptionGroupValue,
                value: currentOption.code,
                defaultLabelStyle: EnsTextStyle.text16_w600_title,
                selectedLabelStyle: EnsTextStyle.text16_w600_primary,
                onSelected: () => updateNewAnswers(currentOption.code),
              );
            },
            itemCount: displayModels.length,
          ),
        ),
        if (displayEraseButton)
          EnsLinkText(
            label: 'Effacer la sélection',
            onTap: onEraseSelection,
            alignment: AlignmentDirectional.centerStart,
            textPadding: const EdgeInsets.all(24),
          ),
      ],
    );
  }
}
