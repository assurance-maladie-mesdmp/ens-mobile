/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';

class ExamensSelectors {
  const ExamensSelectors._();

  static List<ExamenRecommande> getFilteredExamens({
    required ExamensRecommandesState examensState,
    required bool isMainProfile,
    required DateTime? birthDate,
  }) {
    Iterable<ExamenRecommande> examensRecommandes = examensState.examens;

    if (isMainProfile && birthDate != null) {
      examensRecommandes = examensRecommandes.where(
        (examen) =>
            examen.startDate.isAfter(birthDate.addYear(18)) || examen.startDate.isSameDate(birthDate.addYear(18)),
      );
    }

    final filteredTypes = examensState.filteredTypes;
    final filteredStatus = examensState.filteredStatus;

    if (filteredTypes.isEmpty && filteredStatus.isEmpty) {
      return examensRecommandes.toList();
    }

    return examensRecommandes.where((examen) {
      final matchesType = filteredTypes.isEmpty || filteredTypes.contains(examen.type);
      final matchesStatus = filteredStatus.isEmpty || filteredStatus.contains(examen.status);
      return matchesType && matchesStatus;
    }).toList();
  }

  static List<ExamenRecommande> getExamens({
    required ExamensRecommandesState examensState,
    required bool isMainProfile,
    required DateTime? birthDate,
  }) {
    Iterable<ExamenRecommande> examensRecommandes = examensState.examens;

    if (isMainProfile && birthDate != null) {
      examensRecommandes = examensRecommandes.where(
        (examen) =>
            examen.startDate.isAfter(birthDate.addYear(18)) || examen.startDate.isSameDate(birthDate.addYear(18)),
      );
    }

    return examensRecommandes.toList();
  }

  static bool shouldShowExamensBefore18YearsOldButton({
    required ExamensRecommandesState examensState,
    required bool isMainProfile,
    DateTime? birthDate,
  }) {
    if (isMainProfile && birthDate != null) {
      return examensState.examens.any((examen) => examen.startDate.isBefore(birthDate.addYear(18)));
    }
    return false;
  }
}
