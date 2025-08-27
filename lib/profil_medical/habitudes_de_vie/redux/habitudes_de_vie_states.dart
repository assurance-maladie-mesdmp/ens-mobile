/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'habitudes_de_vie_redux.dart';

class HabitudesDeVieState extends Equatable {
  final HabitudesDeVieListState habitudesDeVieListState;
  final HabitudesDeVieAnswersState habitudesDeVieAnswersState;

  const HabitudesDeVieState({
    this.habitudesDeVieListState = const HabitudesDeVieListState(),
    this.habitudesDeVieAnswersState = const HabitudesDeVieAnswersState(),
  });

  HabitudesDeVieState clone({
    HabitudesDeVieListState? habitudesDeVieListState,
    HabitudesDeVieAnswersState? habitudesDeVieAnswersState,
  }) {
    return HabitudesDeVieState(
      habitudesDeVieListState: habitudesDeVieListState ?? this.habitudesDeVieListState,
      habitudesDeVieAnswersState: habitudesDeVieAnswersState ?? this.habitudesDeVieAnswersState,
    );
  }

  @override
  List<Object?> get props => [habitudesDeVieListState, habitudesDeVieAnswersState];
}

class HabitudesDeVieListState extends Equatable {
  final AllPurposesStatus status;
  final List<HabitudeDeVieCategory> categories;

  const HabitudesDeVieListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.categories = const [],
  });

  HabitudesDeVieListState clone({
    AllPurposesStatus? status,
    List<HabitudeDeVieCategory>? categories,
  }) {
    return HabitudesDeVieListState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object?> get props => [status, categories];
}

class HabitudesDeVieAnswersState extends Equatable {
  final AllPurposesStatus status;
  final HabitudeDeVieAnswers answers;

  const HabitudesDeVieAnswersState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.answers = const {},
  });

  HabitudesDeVieAnswersState clone({
    AllPurposesStatus? status,
    HabitudeDeVieAnswers? answers,
  }) {
    return HabitudesDeVieAnswersState(
      status: status ?? this.status,
      answers: answers ?? this.answers,
    );
  }

  @override
  List<Object?> get props => [status, answers];
}
