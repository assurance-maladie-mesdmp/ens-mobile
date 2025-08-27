/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class StartNewVersionQuestionnaireViewModel extends Equatable {
  final ScreenStatus status;
  final String trancheAgeForTracking;
  final void Function() loadQuestionnaire;
  final void Function() onStartNewVersion;
  final String logoFilePath;
  final QuestionnaireCode questionnaireCode;

  const StartNewVersionQuestionnaireViewModel._internal({
    required this.status,
    required this.trancheAgeForTracking,
    required this.loadQuestionnaire,
    required this.onStartNewVersion,
    required this.logoFilePath,
    required this.questionnaireCode,
  });

  factory StartNewVersionQuestionnaireViewModel(Store<EnsState> store) {
    final questionsListState = store.state.questionnaireAgesClesState.questionsListState;
    QuestionnaireCode questionnaireCode = QuestionnaireCode.UNKNOWN;
    String? questionnaireVersion;

    ScreenStatus status = ScreenStatus.LOADING;
    if (questionsListState.isSuccessWithData) {
      status = ScreenStatus.SUCCESS;
      questionnaireCode = questionsListState.questionnaireAgesCles!.code;
      questionnaireVersion = questionsListState.questionnaireAgesCles!.version;
    } else if (questionsListState.isErrorOrSuccessWithoutData) {
      status = ScreenStatus.ERROR;
    }

    return StartNewVersionQuestionnaireViewModel._internal(
      status: status,
      trancheAgeForTracking: questionnaireCode.getTrancheAgeForTracking(),
      loadQuestionnaire: () {
        store.dispatch(ReInitVersionQuestionnaireStatusAction());
        store.dispatch(
          FetchReponseIdToDelete(
            questionnaireCode: questionnaireCode,
            questionnaireVersion: questionnaireVersion,
          ),
        );
        store.dispatch(FetchQuestionnaireAgesClesAction(force: true));
      },
      onStartNewVersion: () {
        store.dispatch(
          DeleteQuestionnaireResponsesAction(
            responseId: store.state.questionnaireAgesClesState.responsesIdToDelete,
            questionnaireCode: questionnaireCode,
          ),
        );
        store.dispatch(NewVersionQuestionnaireEnCoursAction());
      },
      logoFilePath: questionnaireCode.getLogoFilePath(),
      questionnaireCode: questionnaireCode,
    );
  }

  @override
  List<Object?> get props => [status, trancheAgeForTracking, logoFilePath, questionnaireCode];
}
