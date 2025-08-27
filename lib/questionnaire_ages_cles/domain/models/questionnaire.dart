/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/debut_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/fin_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/question.dart';

class Questionnaire extends Equatable {
  final QuestionnaireCode code;
  final String version;
  final DebutInformations debutInformations;
  final FinInformations finInformations;
  final List<Question> questions;

  const Questionnaire({
    required this.code,
    required this.version,
    required this.debutInformations,
    required this.finInformations,
    required this.questions,
  });

  @override
  List<Object?> get props => [code, version, debutInformations, finInformations, questions];
}
