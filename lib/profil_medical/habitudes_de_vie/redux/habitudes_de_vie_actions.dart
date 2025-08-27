/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'habitudes_de_vie_redux.dart';

class FetchHabitudesDeVieAction {
  final bool force;

  FetchHabitudesDeVieAction({this.force = false});
}

class ProcessFetchHabitudesVieSuccessAction {
  final List<HabitudeDeVieCategory> categories;

  ProcessFetchHabitudesVieSuccessAction(this.categories);
}

class ProcessFetchHabitudesVieErrorAction {}

class FetchInitialHabitudesDeVieAnswersAction {}

class FetchHabitudesDeVieAnswerAction {
  final HabitudeDeVieCategoryCode categoryCode;

  FetchHabitudesDeVieAnswerAction({required this.categoryCode});
}

class ProcessFetchHabitudesVieAnswerSuccessAction {
  final HabitudeDeVieAnswer answer;

  ProcessFetchHabitudesVieAnswerSuccessAction(this.answer);
}

class ProcessFetchHabitudesVieAnswerErrorAction {}

class SendHabitudesDeVieCurrentAnswerAction {
  final HabitudeDeVieCategoryUserDetailsAnswer userAnswer;
  final HabitudeDeVieCategoryCode category;

  SendHabitudesDeVieCurrentAnswerAction({
    required this.userAnswer,
    required this.category,
  });
}

class DeleteHabitudesDeVieAnswerAction {
  final String itemId;

  DeleteHabitudesDeVieAnswerAction(this.itemId);
}
