/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/questionnaire_ages_cles_questions_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class QuestionnaireCheckboxOptionsWidget extends StatelessWidget {
  final List<OptionMultipleDisplayModel> displayModels;
  final List<String> newAnswers;
  final void Function(String) updateNewAnswers;

  const QuestionnaireCheckboxOptionsWidget({
    super.key,
    required this.displayModels,
    required this.newAnswers,
    required this.updateNewAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListViewWithScrollbar.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 24),
        itemBuilder: (context, index) {
          return CheckboxOptionWidget(
            displayModel: displayModels[index],
            isSelected: newAnswers.contains(displayModels[index].code),
            updateNewAnswers: updateNewAnswers,
          );
        },
        itemCount: displayModels.length,
      ),
    );
  }
}

class CheckboxOptionWidget extends StatelessWidget {
  final OptionMultipleDisplayModel displayModel;
  final bool isSelected;
  final void Function(String) updateNewAnswers;

  const CheckboxOptionWidget({
    required this.displayModel,
    required this.isSelected,
    required this.updateNewAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCheckboxTitleButton.withCard(
      value: isSelected,
      label: displayModel.label,
      selectedStyle: EnsTextStyle.text16_w600_primary,
      unSelectedStyle: EnsTextStyle.text16_w600_title,
      onChange: (_) => updateNewAnswers(displayModel.code),
    );
  }
}
