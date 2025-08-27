/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/debut_informations_item.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class QuestionnaireAgesClesWelcomeViewModel extends Equatable {
  final ScreenStatus status;
  final String title;
  final List<String> descriptions;
  final String trancheAgeForTracking;
  final List<DebutInformationsItem> items;
  final void Function() onReload;
  final String logoFilePath;

  const QuestionnaireAgesClesWelcomeViewModel._({
    required this.status,
    required this.title,
    required this.descriptions,
    required this.trancheAgeForTracking,
    required this.items,
    required this.onReload,
    required this.logoFilePath,
  });

  factory QuestionnaireAgesClesWelcomeViewModel(Store<EnsState> store) {
    final questionnaireAgesClesState = store.state.questionnaireAgesClesState;
    final questionnaireAgesClesQuestionListState = questionnaireAgesClesState.questionsListState;

    QuestionnaireCode questionnaireCode = QuestionnaireCode.UNKNOWN;
    ScreenStatus status = ScreenStatus.LOADING;
    if (questionnaireAgesClesQuestionListState.isSuccessWithData) {
      status = ScreenStatus.SUCCESS;
      questionnaireCode = questionnaireAgesClesQuestionListState.questionnaireAgesCles!.code;
    } else if (questionnaireAgesClesQuestionListState.isErrorOrSuccessWithoutData) {
      status = ScreenStatus.ERROR;
    }
    return QuestionnaireAgesClesWelcomeViewModel._(
      status: status,
      title: questionnaireAgesClesQuestionListState.isSuccessWithData
          ? questionnaireAgesClesQuestionListState.questionnaireAgesCles!.debutInformations.title
          : '',
      descriptions: questionnaireAgesClesQuestionListState.isSuccessWithData
          ? questionnaireAgesClesQuestionListState.questionnaireAgesCles!.debutInformations.descriptions
          : [],
      trancheAgeForTracking: questionnaireCode.getTrancheAgeForTracking(),
      items: questionnaireAgesClesQuestionListState.isSuccessWithData
          ? questionnaireAgesClesQuestionListState.questionnaireAgesCles!.debutInformations.items
          : [],
      onReload: () => store.dispatch(FetchQuestionnaireAgesClesAction()),
      logoFilePath: questionnaireCode.getLogoFilePath(),
    );
  }

  @override
  List<Object?> get props => [title, descriptions, items, status, trancheAgeForTracking, logoFilePath];
}
