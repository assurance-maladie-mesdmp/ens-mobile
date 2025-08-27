/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitude_de_vie_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_habitudes_de_vie.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_habitudes_de_vie_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class HabitudesDeVieBottomSheet extends StatelessWidget {
  final HabitudeDeVieCategoryCode categoryCode;
  final String itemCode;

  const HabitudesDeVieBottomSheet({required this.categoryCode, required this.itemCode});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HabitudesDeVieBottomSheetViewModel>(
      converter: (store) => HabitudesDeVieBottomSheetViewModel.from(store, itemCode, categoryCode),
      distinct: true,
      onInitialBuild: (vm) {
        context.tagAction(TagsHabitudesDeVie.tagHabitudesDeViePopinPage(vm.questions.first.questionTag));
      },
      builder: (context, vm) {
        return _Form(vm: vm);
      },
    );
  }
}

class _Form extends StatefulWidget {
  final HabitudesDeVieBottomSheetViewModel vm;

  const _Form({required this.vm});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  bool hasErrorsInTextField = false;
  List<HabitudeDeVieUserDetailAnswer> userAnswers = [];
  int currentQuestionIndex = 0;
  final textAnswerController = TextEditingController();
  final radioAnswerController = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    final currentDisplayModel = widget.vm.questions[currentQuestionIndex];
    context.tagAction(
      TagsHabitudesDeVie.tagHabitudesDeViePopinModifierReponse(widget.vm.questions[currentQuestionIndex].questionTag),
    );
    return EnsBottomSheet(
      stretch: true,
      content: [
        Text(
          currentDisplayModel.title,
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Visibility(
          visible: currentDisplayModel.exemple != null,
          child: Text(
            currentDisplayModel.exemple ?? '',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.start,
          ),
        ),
        Visibility(
          visible: currentDisplayModel.description != null,
          child: Text(
            currentDisplayModel.description ?? '',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 16),
        if (currentDisplayModel is QuestionRadioDisplayModel)
          _QuestionRadio(
            displayModel: currentDisplayModel,
            radioAnswerController: radioAnswerController,
          ),
        if (currentDisplayModel is QuestionTextDisplayModel)
          _QuestionText(
            displayModel: currentDisplayModel,
            errorTriggerCallback: (value) {
              setState(() => hasErrorsInTextField = value);
            },
            textAnswerController: textAnswerController,
          ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: EnsButtonSecondary(
                label: 'Annuler',
                onTap: () {
                  context.tagAction(
                    TagsHabitudesDeVie.tagHabitudesDeVieButtonAnnuler(
                      widget.vm.questions[currentQuestionIndex].questionTag,
                    ),
                  );
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: EnsButton(
                label: 'Valider',
                onTap: () {
                  context.tagAction(
                    TagsHabitudesDeVie.tagHabitudesDeVieButtonValider(
                      widget.vm.questions[currentQuestionIndex].questionTag,
                    ),
                  );
                  if (!hasErrorsInTextField) {
                    _addCurrentAnswer(currentDisplayModel);
                    if (userAnswers.isNotEmpty) {
                      final nextIndex = widget.vm.getIndexOfNextQuestion(currentQuestionIndex, userAnswers);
                      if (nextIndex != null) {
                        _setNewIndex(context, nextIndex);
                      } else {
                        widget.vm.sendAnswers(userAnswers);
                        Navigator.pop(context);
                      }
                    } else {
                      Navigator.pop(context);
                    }
                  }
                },
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }

  void _setNewIndex(BuildContext context, int nextIndex) {
    setState(() {
      currentQuestionIndex = nextIndex;
    });
    context.tagAction(
      TagsHabitudesDeVie.tagHabitudesDeViePopinPage(
        widget.vm.questions[currentQuestionIndex].questionTag,
      ),
    );
  }

  void _addCurrentAnswer(QuestionDisplayModel currentDisplayModel) {
    final currentAnswer = _getCurrentAnswer(currentDisplayModel);
    if (currentAnswer != null) {
      userAnswers.add(currentAnswer);
    }
  }

  HabitudeDeVieUserDetailAnswer? _getCurrentAnswer(QuestionDisplayModel displayModel) {
    switch (displayModel) {
      case QuestionRadioDisplayModel _:
        final value = radioAnswerController.value;
        if (value != null) {
          return HabitudeDeVieUserDetailRadioAnswer(
            code: displayModel.code,
            value: value,
          );
        } else {
          return null;
        }
      case QuestionTextDisplayModel _:
        if (textAnswerController.text.isNotEmpty) {
          return HabitudeDeVieUserDetailTextAnswer(
            code: displayModel.code,
            value: textAnswerController.text,
          );
        } else {
          return null;
        }
    }
  }
}

class _QuestionRadio extends StatefulWidget {
  final QuestionRadioDisplayModel displayModel;
  final ValueNotifier<String?> radioAnswerController;

  const _QuestionRadio({required this.displayModel, required this.radioAnswerController});

  @override
  State<_QuestionRadio> createState() => _QuestionRadioState();
}

class _QuestionRadioState extends State<_QuestionRadio> {
  @override
  void initState() {
    super.initState();
    widget.radioAnswerController.value = widget.displayModel.initialAnswer;
  }

  @override
  void didUpdateWidget(_QuestionRadio old) {
    super.didUpdateWidget(old);
    if (old.displayModel.code != widget.displayModel.code) {
      widget.radioAnswerController.value = widget.displayModel.initialAnswer;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListViewWithScrollbar.separated(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 24),
        itemBuilder: (context, index) {
          return EnsRadioButton.card(
            label: widget.displayModel.options[index].label,
            groupValue: widget.radioAnswerController.value,
            value: widget.displayModel.options[index].value,
            onSelected: () {
              setState(() {
                widget.radioAnswerController.value = widget.displayModel.options[index].value;
              });
            },
          );
        },
        itemCount: widget.displayModel.options.length,
      ),
    );
  }
}

class _QuestionText extends StatefulWidget {
  final QuestionTextDisplayModel displayModel;
  final void Function(bool) errorTriggerCallback;
  final TextEditingController textAnswerController;

  const _QuestionText({
    required this.displayModel,
    required this.errorTriggerCallback,
    required this.textAnswerController,
  });

  @override
  State<_QuestionText> createState() => _QuestionTextState();
}

class _QuestionTextState extends State<_QuestionText> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    widget.textAnswerController.value = TextEditingValue(text: widget.displayModel.initialAnswer ?? '');
  }

  @override
  void didUpdateWidget(_QuestionText old) {
    super.didUpdateWidget(old);
    if (old.displayModel.code != widget.displayModel.code) {
      widget.textAnswerController.value = TextEditingValue(text: widget.displayModel.initialAnswer ?? '');
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EnsHabitudesDeVieTextInput(
        controller: widget.textAnswerController,
        focusNode: focusNode,
        maxCharacters: widget.displayModel.maxLength?.toInt() ?? 50,
        constraints: widget.displayModel.constraints,
        errorCallback: widget.errorTriggerCallback,
        keyboardType: widget.displayModel.keyboardType,
      ),
    );
  }
}
