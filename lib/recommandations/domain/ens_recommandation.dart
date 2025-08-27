/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsRecommandation extends Equatable {
  final RecommandationCode recommandationCode;

  const EnsRecommandation({required this.recommandationCode});

  @override
  List<Object?> get props => [recommandationCode];
}

class EnsRecommandationQuestionnaire extends EnsRecommandation {
  final String questionnaireCode;
  final String questionnaireVersion;
  final String questionnaireLastVersion;

  const EnsRecommandationQuestionnaire({
    required super.recommandationCode,
    required this.questionnaireCode,
    required this.questionnaireVersion,
    required this.questionnaireLastVersion,
  });

  @override
  List<Object?> get props => [super.props, questionnaireCode, questionnaireVersion, questionnaireLastVersion];
}

enum RecommandationCode {
  INFORMER_TRAITEMENT_EN_COURS,
  INCITER_COMPLETER_PML,
  INCITER_ENREGISTRER_SYNTHESE_PML,
  INCITER_RAFRAICHIR_SYNTHESE_PML,
  INCITER_COMPLETER_QUIZ,
  INCITER_FINALISER_QUIZ,
  INCITER_ENREGISTRER_QUIZ,
  INCITER_AFFICHER_QUIZ,
  UNKNOWN;
}

RecommandationCode toRecommandationCode(String code) {
  return switch (code) {
    'INFORMER_TRAITEMENT_EN_COURS' => RecommandationCode.INFORMER_TRAITEMENT_EN_COURS,
    'INCITER_COMPLETER_PML' => RecommandationCode.INCITER_COMPLETER_PML,
    'INCITER_ENREGISTRER_SYNTHESE_PML' => RecommandationCode.INCITER_ENREGISTRER_SYNTHESE_PML,
    'INCITER_RAFRAICHIR_SYNTHESE_PML' => RecommandationCode.INCITER_RAFRAICHIR_SYNTHESE_PML,
    'INCITER_COMPLETER_QUIZ' => RecommandationCode.INCITER_COMPLETER_QUIZ,
    'INCITER_FINALISER_QUIZ' => RecommandationCode.INCITER_FINALISER_QUIZ,
    'INCITER_ENREGISTRER_QUIZ' => RecommandationCode.INCITER_ENREGISTRER_QUIZ,
    'INCITER_AFFICHER_QUIZ' => RecommandationCode.INCITER_AFFICHER_QUIZ,
    _ => RecommandationCode.UNKNOWN,
  };
}

bool isQuestionnaireRecommandation(String code) {
  return ['INCITER_COMPLETER_QUIZ', 'INCITER_FINALISER_QUIZ', 'INCITER_ENREGISTRER_QUIZ', 'INCITER_AFFICHER_QUIZ']
      .contains(code);
}
