/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:redux/redux.dart';

class ExitBottomSheetAgesClesViewModel extends Equatable {
  final bool editMode;
  final String positiveButtonLabel;
  final String negativeButtonLabel;
  final EnsTag tagForNegativeButton;
  final void Function() positiveAction;
  final void Function() resetQuestionnaire;
  final void Function() deleteQuestionnaire;
  final String trackingTrancheAge;

  const ExitBottomSheetAgesClesViewModel._internal({
    required this.editMode,
    required this.positiveButtonLabel,
    required this.negativeButtonLabel,
    required this.tagForNegativeButton,
    required this.positiveAction,
    required this.resetQuestionnaire,
    required this.deleteQuestionnaire,
    required this.trackingTrancheAge,
  });

  factory ExitBottomSheetAgesClesViewModel(Store<EnsState> store, bool editMode) {
    final status = store.state.questionnaireAgesClesState.questionnaireStatus;
    final questionnaireListState = store.state.questionnaireAgesClesState.questionsListState;
    final trackingTrancheAge = questionnaireListState.isSuccessWithData
        ? questionnaireListState.questionnaireAgesCles!.code.getTrancheAgeForTracking()
        : '';
    final questionnaireCode = questionnaireListState.isSuccessWithData
        ? questionnaireListState.questionnaireAgesCles!.code
        : QuestionnaireCode.UNKNOWN;

    return ExitBottomSheetAgesClesViewModel._internal(
      editMode: editMode,
      positiveButtonLabel: editMode ? 'Mettre à jour' : 'Continuer plus tard',
      positiveAction: () => _dispatchPositiveAction(store, editMode),
      negativeButtonLabel: _getNegativeButtonLabel(editMode, status),
      tagForNegativeButton: _tagForNegativeButton(editMode, status, trackingTrancheAge),
      resetQuestionnaire: () => store.dispatch(ResetQuestionnaireAgesClesAction()),
      deleteQuestionnaire: () {
        _deleteQuestionnaire(store, editMode, status, questionnaireCode);
      },
      trackingTrancheAge: trackingTrancheAge,
    );
  }

  static void _dispatchPositiveAction(Store<EnsState> store, bool editMode) {
    if (editMode) {
      store.dispatch(FinalizeQuestionnaireAgesClesAction(shouldDisplayUpdateDocSnakbar: false));
    } else {
      store.dispatch(SaveDraftQuestionnaireAgesClesAction());
    }
  }

  static void _deleteQuestionnaire(
    Store<EnsState> store,
    bool editMode,
    QuestionnaireStatus status,
    QuestionnaireCode questionnaireCode,
  ) {
    if (!editMode && status == QuestionnaireStatus.DRAFT) {
      store.dispatch(DeleteQuestionnaireResponsesAction(questionnaireCode: questionnaireCode));
    }
  }

  static String _getNegativeButtonLabel(bool editMode, QuestionnaireStatus status) {
    if (editMode) {
      return 'Abandonner';
    }
    if (status == QuestionnaireStatus.DRAFT) {
      return 'Supprimer le questionnaire';
    }
    return 'Abandonner le questionnaire';
  }

  static EnsTag _tagForNegativeButton(bool editMode, QuestionnaireStatus status, String trackingTrancheAge) {
    if (editMode) {
      return TagsQuestionnaireAgesCles.tagButtonQuestionnaireMajEtQuitterAbandonner1013(trackingTrancheAge);
    }
    return TagsQuestionnaireAgesCles.tagButtonAbandonnerQuestionnaire994(trackingTrancheAge);
  }

  String get title {
    return editMode
        ? 'Souhaitez-vous mettre à jour vos réponses ?'
        : 'Souhaitez-vous finaliser ce questionnaire plus tard ?';
  }

  EnsTag tagForPositiveButton() {
    return editMode
        ? TagsQuestionnaireAgesCles.tagButtonQuestionnaireMajEtQuitterValider1012(trackingTrancheAge)
        : TagsQuestionnaireAgesCles.tagButtonQuestionnaireContinuerPlusTardValider993(trackingTrancheAge);
  }

  EnsTag tagForCloseButton() {
    return editMode
        ? TagsQuestionnaireAgesCles.tagButtonQuestionnaireFermerMaj1524(trackingTrancheAge)
        : TagsQuestionnaireAgesCles.tagButtonAnnulerQuitterQuestionnaire1512(trackingTrancheAge);
  }

  @override
  List<Object?> get props => [
        editMode,
        positiveButtonLabel,
        negativeButtonLabel,
        tagForNegativeButton,
        trackingTrancheAge,
      ];
}
