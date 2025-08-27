/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';

class BilanDePreventionQuestionnaire extends Equatable {
  final String? responseId;
  final String title;
  final DateTime dateDeDisponibilite;
  final QuestionnaireCode code;
  final String userVersion;
  final DateTime? dateDeDerniereMiseAJour;
  final bool isAvailable;
  final bool isDraft;

  const BilanDePreventionQuestionnaire({
    required this.responseId,
    required this.title,
    required this.dateDeDisponibilite,
    required this.code,
    required this.userVersion,
    required this.dateDeDerniereMiseAJour,
    required this.isAvailable,
    required this.isDraft,
  });

  @override
  List<Object?> get props => [
        responseId,
        title,
        dateDeDisponibilite,
        code,
        userVersion,
        dateDeDerniereMiseAJour,
        isAvailable,
        isDraft,
      ];
}
