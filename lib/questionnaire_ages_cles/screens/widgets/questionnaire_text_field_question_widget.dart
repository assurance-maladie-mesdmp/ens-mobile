/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/questionnaire_ages_cles_questions_view_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/keyboard_utils.dart';

class QuestionnaireTextFieldQuestionWidget extends StatelessWidget {
  final OptionTextFieldDisplayModel displayModel;
  final TextEditingController nameTextInputController;
  final String? Function(String?) validation;
  final void Function(String) updateNewAnswers;
  final void Function(String) submitValue;
  final FocusNode? focusNode;
  final GlobalKey shakeKey;

  const QuestionnaireTextFieldQuestionWidget({
    super.key,
    required this.displayModel,
    required this.nameTextInputController,
    required this.updateNewAnswers,
    required this.submitValue,
    required this.validation,
    this.focusNode,
    required this.shakeKey,
  });

  @override
  Widget build(BuildContext context) {
    return ShakeWidget(
      key: shakeKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CountedTextInput.withBorders(
          label: displayModel.label,
          description: displayModel.description,
          controller: nameTextInputController,
          maxCharacters: displayModel.maxCharacters.toInt(),
          maxLines: displayModel.isMultiline ? 7 : 1,
          textInputAction: displayModel.isMultiline ? TextInputAction.newline : TextInputAction.next,
          blockOnMaxCharacters: true,
          autovalidation: true,
          validatorCallback: (value) => validation(value),
          focusNode: focusNode,
          keyboardType: KeyboardUtils.getQuestionKeyboardType(
            constraints: displayModel.constraints,
            isMultiline: displayModel.isMultiline,
          ),
          onTextDidChange: (value) => updateNewAnswers(value),
          onTextSubmitted: (value) => submitValue(value),
        ),
      ),
    );
  }
}
