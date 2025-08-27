/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommander_app_redux.dart';

enum RecommanderAppActionTriggeredFrom {
  EXAMEN_RECOMMANDE,
  CONSULT_DOC_AJOUTE_PAR_UN_PS,
  DOWNLOAD_DOCUMENT,
  SHARE_DOCUMENT,
  MESSAGERIE;

  String tagLabel() {
    return switch (this) {
      EXAMEN_RECOMMANDE => 'examen_reco',
      CONSULT_DOC_AJOUTE_PAR_UN_PS => 'c_doc',
      DOWNLOAD_DOCUMENT => 'telechargement',
      SHARE_DOCUMENT => 'partage',
      MESSAGERIE => 'messagerie',
    };
  }
}

class RecommanderAppState extends Equatable {
  final bool isRecommanderAppDone;
  final DateTime? nextRecommanderAppDate;
  final RecommanderAppActionTriggeredFrom? actionTriggeredFrom;
  final bool isOtherSurveyAlreadyTriggered;

  const RecommanderAppState({
    this.isRecommanderAppDone = false,
    this.nextRecommanderAppDate,
    this.actionTriggeredFrom,
    this.isOtherSurveyAlreadyTriggered = false,
  });

  RecommanderAppState clone({
    bool? isRecommanderAppDone,
    Optional<DateTime>? nextRecommanderAppDateOptional,
    Optional<RecommanderAppActionTriggeredFrom>? actionTriggeredFromOptional,
    bool? isOtherSurveyAlreadyTriggered,
  }) {
    return RecommanderAppState(
      isRecommanderAppDone: isRecommanderAppDone ?? this.isRecommanderAppDone,
      nextRecommanderAppDate: nextRecommanderAppDateOptional != null
          ? nextRecommanderAppDateOptional.orElseNullable(null)
          : nextRecommanderAppDate,
      actionTriggeredFrom:
          actionTriggeredFromOptional != null ? actionTriggeredFromOptional.orElseNullable(null) : actionTriggeredFrom,
      isOtherSurveyAlreadyTriggered: isOtherSurveyAlreadyTriggered ?? this.isOtherSurveyAlreadyTriggered,
    );
  }

  @override
  List<Object?> get props => [
        isRecommanderAppDone,
        nextRecommanderAppDate,
        actionTriggeredFrom,
        isOtherSurveyAlreadyTriggered,
      ];
}
