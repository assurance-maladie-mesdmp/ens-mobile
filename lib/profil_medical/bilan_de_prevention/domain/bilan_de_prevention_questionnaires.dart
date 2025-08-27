/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaire.dart';

class BilanDePreventionQuestionnaires extends Equatable {
  final bool isEmpty;
  final List<BilanDePreventionQuestionnaire> ensQuestionnairesAFaire;
  final List<BilanDePreventionQuestionnaire> ensQuestionnairesEnCours;
  final List<BilanDePreventionQuestionnaire> ensQuestionnairesTermines;

  const BilanDePreventionQuestionnaires({
    required this.isEmpty,
    required this.ensQuestionnairesAFaire,
    required this.ensQuestionnairesEnCours,
    required this.ensQuestionnairesTermines,
  });

  @override
  List<Object?> get props => [isEmpty, ensQuestionnairesAFaire, ensQuestionnairesEnCours, ensQuestionnairesTermines];
}
