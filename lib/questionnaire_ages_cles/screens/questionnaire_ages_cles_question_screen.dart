/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_welcome_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/questionnaire_ages_cles_questions_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_checkbox_options_widget.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_exit_bottom_sheet.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_navigation_buttons_widget.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_radio_option_widget.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/questionnaire_text_field_question_widget.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/screens/synthese_questionnaire_ages_cles_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_stepper.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_habitudes_de_vie_text_input_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class QuestionnaireAgesClesQuestionScreenArguments {
  final bool isFromBilanDePrevention;
  final bool isEditMode;
  final QuestionnaireCode? questionnaireCode;
  final String? questionnaireVersion;

  QuestionnaireAgesClesQuestionScreenArguments({
    this.isFromBilanDePrevention = false,
    this.isEditMode = false,
    this.questionnaireCode,
    this.questionnaireVersion,
  });
}

class QuestionnaireAgesClesQuestionScreen extends StatelessWidget {
  static const routeName = 'questionnaire-sante/question';

  const QuestionnaireAgesClesQuestionScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as QuestionnaireAgesClesQuestionScreenArguments?;
    final editMode = argument?.isEditMode ?? false;
    final isFromBilanDePrevention = argument?.isFromBilanDePrevention ?? false;
    return StoreConnector<EnsState, QuestionnaireAgesClesQuestionsViewModel>(
      converter: (store) => QuestionnaireAgesClesQuestionsViewModel(
        store,
        editMode,
        argument?.questionnaireCode,
        argument?.questionnaireVersion,
      ),
      distinct: true,
      onInit: (store) {
        store.dispatch(ReInitVersionQuestionnaireStatusAction());
      },
      onInitialBuild: (vm) {
        vm.fetchQuestionnaire(editMode);
        if (vm.questionnaireStatus == QuestionnaireFormStatus.SUCCESS) {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagQuestionEnCours(vm.trackingQuestionCode, vm.trackingTrancheAge),
          );
        }
      },
      onDidChange: (oldVm, vm) {
        if (vm.questionnaireStatus == QuestionnaireFormStatus.SUCCESS &&
            oldVm?.trackingQuestionCode != vm.trackingQuestionCode) {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagQuestionEnCours(vm.trackingQuestionCode, vm.trackingTrancheAge),
          );
        }
      },
      onWillChange: (_, vm) => _navigationOnSuccess(vm, context, isFromBilanDePrevention),
      builder: (context, vm) {
        final stepperData = _getStepperData(vm);
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (vm.questionnaireStatus == QuestionnaireFormStatus.SUCCESS) {
              if (context.mounted) {
                final shouldPop = await showQuestionnaireExitBottomSheet(
                  context,
                  editMode,
                  vm.resetDraft,
                  vm.trackingQuestionCode,
                );
                if (shouldPop) {
                  navigator.pop();
                }
              }
            } else {
              navigator.pop();
            }
          },
          child: Scaffold(
            appBar: EnsAppBar(
              title: 'Questionnaire de santé',
              titlePadding: const EdgeInsets.only(right: 56),
              leading: IconButton(
                icon: const EnsSvg(EnsImages.ic_close_big, color: EnsColors.title, width: 14, height: 14),
                tooltip: 'Fermer la fenêtre',
                splashRadius: 24,
                onPressed: () {
                  context.tagAction(
                    TagsQuestionnaireAgesCles.tagButtonQuitterQuestionnaire(
                      vm.trackingQuestionCode,
                      vm.trackingTrancheAge,
                    ),
                  );
                  if (vm.questionnaireStatus == QuestionnaireFormStatus.SUCCESS) {
                    showQuestionnaireExitBottomSheet(context, editMode, vm.resetDraft, vm.trackingTrancheAge);
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                EnsStepperQuestionnaireAgesCles(
                  maxValue: stepperData != null ? stepperData.max : 1,
                  value: stepperData != null ? stepperData.value + 1 : 0,
                ),
                Expanded(child: _Content(vm)),
                if (EnsModuleContainer.currentInjector.isGuestMode())
                  GuestModeBanner(
                    type: GuestModeBannerType.WITHOUT_BOTTOM_BAR,
                    topOfKeyboard: MediaQuery.of(context).viewInsets.bottom,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  StepperDisplayModel? _getStepperData(QuestionnaireAgesClesQuestionsViewModel vm) {
    final currentDisplayModels = vm.currentDisplayModels;
    if (currentDisplayModels.isNotEmpty) {
      final stepperDisplayModel = currentDisplayModels[0];
      if (stepperDisplayModel is StepperDisplayModel) {
        return stepperDisplayModel;
      }
    }
    return null;
  }

  void _navigationOnSuccess(
    QuestionnaireAgesClesQuestionsViewModel vm,
    BuildContext context,
    bool isFromBilanDePrevention,
  ) {
    if (vm.saveStatus == SaveStatus.DRAFT_SAVED) {
      vm.resetDraft();
      Navigator.of(context).pop(true);
    } else if (vm.saveStatus == SaveStatus.FINAL_SAVED) {
      if (EnsModuleContainer.currentInjector.isGuestMode()) {
        vm.resetDraft();
        showQuestionnaireAgeClefModeInviteBottomSheet(context).then(
          (value) => Navigator.of(
            EnsModuleContainer.currentInjector.getNavigatorKey().currentContext!,
          ).pop(),
        );
      } else {
        Navigator.pushReplacementNamed(
          context,
          SyntheseQuestionnaireAgesClesScreen.routeName,
          arguments: SyntheseQuestionnaireAgesClesScreenArgument(
            isFromBilanDePrevention: isFromBilanDePrevention,
            code: vm.questionnaireCode,
            version: vm.questionnaireVersion,
            isDraft: false,
          ),
        );
      }
    }
  }
}

class _Content extends StatelessWidget {
  final QuestionnaireAgesClesQuestionsViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.questionnaireStatus) {
      case QuestionnaireFormStatus.SUCCESS:
        return _QuestionForm(vm);
      case QuestionnaireFormStatus.LOADING:
        return const _LoadingPage();
      case QuestionnaireFormStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.fetchQuestionnaire);
    }
  }
}

class _LoadingPage extends StatelessWidget {
  const _LoadingPage();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SkeletonBox(),
          SizedBox(height: 32),
          SkeletonBox(height: 24.0),
          SizedBox(height: 16),
          SkeletonBox(height: 24.0, width: 138),
          SizedBox(height: 16),
          SkeletonBox(width: 200),
          SizedBox(height: 32),
          CheckboxItemSkeleton(),
          SizedBox(height: 16),
          CheckboxItemSkeleton(),
          SizedBox(height: 16),
          CheckboxItemSkeleton(),
        ],
      ),
    );
  }
}

class _QuestionForm extends StatefulWidget {
  final QuestionnaireAgesClesQuestionsViewModel vm;

  const _QuestionForm(this.vm);

  @override
  State<_QuestionForm> createState() => _QuestionFormState();
}

class _QuestionFormState extends State<_QuestionForm> with SingleTickerProviderStateMixin {
  final TextEditingController nameTextInputController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final ScrollController horizontalScrollController = ScrollController();
  final ScrollController verticalScrollController = ScrollController();
  final animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    final newAnswer = widget.vm.currentQuestionAnswer;
    nameTextInputController.value = TextEditingValue(text: newAnswer.isEmpty ? '' : newAnswer[0]);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      horizontalScrollController.animateTo(
        MediaQuery.sizeOf(context).width,
        duration: animationDuration,
        curve: Curves.ease,
      );
    });
  }

  @override
  void didUpdateWidget(_QuestionForm old) {
    super.didUpdateWidget(old);
    if (widget.vm.currentDisplayModels.whereType<OptionTextFieldDisplayModel>().isNotEmpty &&
        old.vm.currentQuestionIndex != widget.vm.currentQuestionIndex) {
      final newAnswer = widget.vm.currentQuestionAnswer;
      nameTextInputController.value = TextEditingValue(text: newAnswer.isEmpty ? '' : newAnswer[0]);
      focusNode.unfocus();
    }
  }

  @override
  void dispose() {
    nameTextInputController.dispose();
    horizontalScrollController.dispose();
    verticalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // La SingleChildScrollView est utilisé pour l'animation, ce n'est pas un vrai scroll
    // ignore: dont_use_singlechildscrollview
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      controller: horizontalScrollController,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _QuestionContainer.animatedView(
            widget.vm.previousDisplayModels,
          ),
          _QuestionContainer(
            displayModels: widget.vm.currentDisplayModels,
            answers: widget.vm.currentQuestionAnswer,
            onAnswerChanged: (answers) => widget.vm.updateCurrentQuestionAnswer(answers),
            onNextClick: _onNextClick,
            onPreviousClick: (dm) => _onPreviousClick(dm, context),
            onEraseSelection: _onEraseSelection,
            nameTextInputController: nameTextInputController,
            verticalScrollController: verticalScrollController,
            focusNode: focusNode,
            resetDraft: widget.vm.resetDraft,
            finalizeQuiz: widget.vm.finalizeQuiz,
          ),
        ],
      ),
    );
  }

  void _onEraseSelection() {
    widget.vm.updateCurrentQuestionAnswer([]);
  }

  void _onNextClick(ButtonsDisplayModel displayModel) {
    verticalScrollController.jumpTo(0);
    horizontalScrollController.jumpTo(0);
    horizontalScrollController.animateTo(
      MediaQuery.sizeOf(context).width,
      duration: animationDuration,
      curve: Curves.ease,
    );
    displayModel.goToNextQuestion();
  }

  void _onPreviousClick(ButtonsDisplayModel displayModel, BuildContext context) {
    verticalScrollController.jumpTo(0);
    horizontalScrollController.animateTo(0, duration: animationDuration, curve: Curves.ease).then((value) {
      if (context.mounted) {
        final width = MediaQuery.sizeOf(context).width;
        horizontalScrollController.jumpTo(width);
      }
      displayModel.goToPreviousQuestion();
    });
  }
}

class _QuestionContainer extends StatefulWidget {
  final List<dynamic> displayModels;
  final List<String> answers;
  final void Function(List<String>) onAnswerChanged;
  final void Function(ButtonsDisplayModel) onNextClick;
  final void Function(ButtonsDisplayModel) onPreviousClick;
  final void Function() onEraseSelection;
  final TextEditingController nameTextInputController;
  final ScrollController verticalScrollController;
  final FocusNode? focusNode;
  final VoidCallback resetDraft;
  final VoidCallback finalizeQuiz;

  const _QuestionContainer({
    required this.displayModels,
    required this.answers,
    required this.onAnswerChanged,
    required this.onNextClick,
    required this.onPreviousClick,
    required this.onEraseSelection,
    required this.nameTextInputController,
    required this.verticalScrollController,
    this.focusNode,
    required this.resetDraft,
    required this.finalizeQuiz,
  });

  factory _QuestionContainer.animatedView(List<dynamic> displayModels) {
    return _QuestionContainer(
      displayModels: displayModels,
      answers: const [],
      onAnswerChanged: (_) {},
      onEraseSelection: () {},
      nameTextInputController: TextEditingController(),
      verticalScrollController: ScrollController(),
      resetDraft: () {},
      finalizeQuiz: () {},
      onNextClick: (_) {},
      onPreviousClick: (_) {},
    );
  }

  @override
  State<_QuestionContainer> createState() => _QuestionContainerState();
}

// ignore: unnecessary_statefull_widget
class _QuestionContainerState extends State<_QuestionContainer> {
  final shakeKey = GlobalKey<ShakeWidgetState>();
  final textInputValidator = EnsHabitudesDeVieTextInputValidator();

  @override
  Widget build(BuildContext context) {
    if (widget.displayModels.isEmpty) {
      return Container(
        width: MediaQuery.sizeOf(context).width,
      );
    } else {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListViewWithScrollbar.separated(
          controller: widget.verticalScrollController,
          separatorBuilder: (context, index) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            switch (widget.displayModels[index]) {
              case final StepperDisplayModel _:
                return Container();
              case final TitleDisplayModel displayModel:
                return _Title(currentDisplayModel: displayModel);
              case final OptionsDisplayModel displayModel:
                if (displayModel.isSingleChoice) {
                  return QuestionnaireRadioOptionsWidget(
                    key: UniqueKey(),
                    radioOptionGroupValue: widget.answers.isEmpty ? '' : widget.answers[0],
                    displayModels: displayModel.options,
                    updateNewAnswers: (newAnswer) {
                      widget.onAnswerChanged([newAnswer]);
                    },
                    displayEraseButton: widget.answers.isNotEmpty,
                    onEraseSelection: widget.onEraseSelection,
                  );
                } else {
                  return QuestionnaireCheckboxOptionsWidget(
                    key: UniqueKey(),
                    displayModels: displayModel.options,
                    newAnswers: widget.answers,
                    updateNewAnswers: (newAnswer) {
                      final List<String> newList = List<String>.of(widget.answers);
                      if (widget.answers.contains(newAnswer)) {
                        newList.remove(newAnswer);
                      } else {
                        newList.add(newAnswer);
                      }
                      widget.onAnswerChanged(newList);
                    },
                  );
                }
              case final OptionTextFieldDisplayModel displayModel:
                return QuestionnaireTextFieldQuestionWidget(
                  key: UniqueKey(),
                  displayModel: displayModel,
                  nameTextInputController: widget.nameTextInputController,
                  focusNode: widget.focusNode,
                  validation: (value) => textInputValidator.validate(value, displayModel.constraints),
                  updateNewAnswers: (newAnswer) {
                    widget.onAnswerChanged([newAnswer]);
                  },
                  submitValue: (_) {
                    widget.focusNode?.unfocus();
                  },
                  shakeKey: shakeKey,
                );
              case final ButtonsDisplayModel displayModel:
                return QuestionnaireNavigationButtonsWidget(
                  key: UniqueKey(),
                  goToNextQuestion: () {
                    widget.onNextClick(displayModel);
                  },
                  goToPreviousQuestion: () {
                    widget.onPreviousClick(displayModel);
                  },
                  isFirstQuestion: displayModel.isFirstQuestion,
                  isLastQuestion: displayModel.isLastQuestion,
                  isButtonsDisabled: !_isButtonsEnabled(widget.displayModels),
                  shakeKey: shakeKey,
                  isFinishButtonLoading: displayModel.isFinishButtonLoading,
                  isInEditMode: displayModel.isInEditMode,
                  trackingCode: displayModel.trackingCode,
                  trackingTrancheAge: displayModel.trackingTrancheAge,
                  isIgnore: widget.answers.isEmpty,
                  editMode: displayModel.isInEditMode,
                  onFinalizeQuiz: widget.finalizeQuiz,
                  resetDraft: widget.resetDraft,
                );
            }
            return null;
          },
          itemCount: widget.displayModels.length,
        ),
      );
    }
  }

  bool _isButtonsEnabled(List<dynamic> displayModels) {
    final textFieldQuestion = displayModels.whereType<OptionTextFieldDisplayModel>().firstOrNull;
    if (textFieldQuestion == null) return true;
    final validator = textInputValidator.validate(
      widget.nameTextInputController.text,
      textFieldQuestion.constraints,
    );
    return validator == null;
  }
}

class _Title extends StatelessWidget {
  final TitleDisplayModel currentDisplayModel;

  const _Title({
    required this.currentDisplayModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentDisplayModel.title,
            style: EnsTextStyle.text26_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          if (currentDisplayModel.subTitle != null) ...[
            const SizedBox(height: 8),
            Text(
              currentDisplayModel.subTitle!,
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
