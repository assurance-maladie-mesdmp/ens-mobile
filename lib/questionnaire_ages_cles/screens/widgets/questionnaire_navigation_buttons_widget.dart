/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_exit_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';

class QuestionnaireNavigationButtonsWidget extends StatelessWidget {
  final void Function() goToNextQuestion;
  final void Function() goToPreviousQuestion;
  final bool isFirstQuestion;
  final bool isLastQuestion;
  final bool isButtonsDisabled;
  final GlobalKey<ShakeWidgetState> shakeKey;
  final bool isFinishButtonLoading;
  final bool isInEditMode;
  final String trackingCode;
  final String trackingTrancheAge;
  final bool isIgnore;
  final bool editMode;
  final void Function() onFinalizeQuiz;
  final void Function() resetDraft;

  const QuestionnaireNavigationButtonsWidget({
    super.key,
    required this.goToNextQuestion,
    required this.isFirstQuestion,
    required this.goToPreviousQuestion,
    required this.isLastQuestion,
    required this.isButtonsDisabled,
    required this.shakeKey,
    required this.isFinishButtonLoading,
    required this.isInEditMode,
    required this.trackingCode,
    required this.trackingTrancheAge,
    required this.isIgnore,
    required this.editMode,
    required this.onFinalizeQuiz,
    required this.resetDraft,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: EnsButtonSecondary(
                  size: EnsButtonSize.SMALL,
                  backgroundColor: EnsColors.neutral100,
                  label: isFirstQuestion ? 'Quitter' : 'Précédent',
                  onTap: () {
                    if (isButtonsDisabled) {
                      shakeKey.currentState?.shake();
                    } else {
                      if (isFirstQuestion) {
                        context.tagAction(
                          TagsQuestionnaireAgesCles.tagButtonQuitterQuestionnaire(
                            trackingCode,
                            trackingTrancheAge,
                          ),
                        );
                        showQuestionnaireExitBottomSheet(
                          context,
                          editMode,
                          resetDraft,
                          trackingTrancheAge,
                        );
                      } else {
                        goToPreviousQuestion();
                      }
                    }
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: EnsButton(
                  size: EnsButtonSize.SMALL,
                  label: isLastQuestion ? 'Terminer' : 'Suivant',
                  onTap: () {
                    if (isButtonsDisabled) {
                      shakeKey.currentState?.shake();
                    } else {
                      if (!isLastQuestion) {
                        if (isIgnore) {
                          context.tagAction(
                            TagsQuestionnaireAgesCles.tagButtonIgnorerQuestionnaire(trackingCode, trackingTrancheAge),
                          );
                        } else {
                          context.tagAction(
                            TagsQuestionnaireAgesCles.tagButtonSuivantQuestionnaire(trackingCode, trackingTrancheAge),
                          );
                        }
                        goToNextQuestion();
                      } else {
                        onFinalizeQuiz();
                      }
                    }
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  isLoading: isFinishButtonLoading,
                ),
              ),
            ],
          ),
          if (isInEditMode) ...[
            const SizedBox(height: 24),
            Center(
              child: EnsInkWell(
                onTap: onFinalizeQuiz,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Enregistrer et quitter', style: EnsTextStyle.text16_w700_primary_underline),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ],
      ),
    );
  }
}
