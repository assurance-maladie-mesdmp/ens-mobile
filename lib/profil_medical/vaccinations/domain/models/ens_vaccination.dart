/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsVaccination extends Equatable {
  final String id;
  final DateTime effectiveTime;
  final String name;
  final String? lotNumber;
  final TypeOfAdministration typeOfAdministration;
  final String? nomVaccinateur;
  final String author;
  final String? comment;
  final String pathologies;
  final VaccinationNiveauRecommandation recommandation;
  final bool authoredByPatient;
  final String? refId;

  const EnsVaccination({
    required this.id,
    required this.effectiveTime,
    required this.name,
    this.lotNumber,
    required this.typeOfAdministration,
    this.nomVaccinateur,
    required this.author,
    this.comment,
    required this.pathologies,
    required this.recommandation,
    required this.authoredByPatient,
    this.refId,
  });

  @override
  List<Object?> get props => [
        id,
        effectiveTime,
        name,
        lotNumber,
        typeOfAdministration,
        nomVaccinateur,
        author,
        comment,
        pathologies,
        recommandation,
        authoredByPatient,
        refId,
      ];
}

enum VaccinationNiveauRecommandation {
  RECOMMANDE,
  OBLIGATOIRE;

  String get label {
    switch (this) {
      case VaccinationNiveauRecommandation.RECOMMANDE:
        return 'Vaccination recommandée';
      case VaccinationNiveauRecommandation.OBLIGATOIRE:
        return 'Vaccination obligatoire';
    }
  }

  String get injectionLabel {
    switch (this) {
      case VaccinationNiveauRecommandation.RECOMMANDE:
        return 'Recommandée';
      case VaccinationNiveauRecommandation.OBLIGATOIRE:
        return 'Obligatoire';
    }
  }

  Color get color {
    switch (this) {
      case VaccinationNiveauRecommandation.RECOMMANDE:
        return EnsColors.illustrative08;
      case VaccinationNiveauRecommandation.OBLIGATOIRE:
        return EnsColors.illustrative06;
    }
  }

  bool get isObligatoire => this == OBLIGATOIRE;

  bool get isRecommande => this == RECOMMANDE;
}

enum TypeOfAdministration {
  INITIMMUNIZ,
  BOOSTER,
  IMMUNIZ,
  UNKNOWN,
}

extension TypeOfAdministrationExtension on TypeOfAdministration {
  String get label {
    switch (this) {
      case TypeOfAdministration.INITIMMUNIZ:
        return 'Première vaccination';
      case TypeOfAdministration.BOOSTER:
        return 'Rappel de vaccination';
      case TypeOfAdministration.IMMUNIZ:
      case TypeOfAdministration.UNKNOWN:
        return 'Je ne sais pas';
    }
  }
}
