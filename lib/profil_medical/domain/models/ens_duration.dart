/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsHospitalisationDuration extends Equatable {
  final int? duration;
  final EnsHospitalisationDurationUnit? unit;

  const EnsHospitalisationDuration({this.duration, this.unit});

  @override
  List<Object?> get props => [duration, unit];
}

enum EnsHospitalisationDurationUnit { DAY, WEEK, MONTH, YEAR, UNKNOWN }

extension EnsHospitalisationDurationUnitDisplay on EnsHospitalisationDurationUnit {
  String get label {
    switch (this) {
      case EnsHospitalisationDurationUnit.DAY:
        return 'Jour(s)';
      case EnsHospitalisationDurationUnit.WEEK:
        return 'Semaine(s)';
      case EnsHospitalisationDurationUnit.MONTH:
        return 'Mois';
      case EnsHospitalisationDurationUnit.YEAR:
        return 'Année(s)';
      case EnsHospitalisationDurationUnit.UNKNOWN:
        return 'Inconnu';
    }
  }

  String get singularLabel {
    switch (this) {
      case EnsHospitalisationDurationUnit.DAY:
        return 'jour';
      case EnsHospitalisationDurationUnit.WEEK:
        return 'semaine';
      case EnsHospitalisationDurationUnit.MONTH:
        return 'mois';
      case EnsHospitalisationDurationUnit.YEAR:
        return 'année';
      case EnsHospitalisationDurationUnit.UNKNOWN:
        return 'Inconnu';
    }
  }

  String get pluralLabel {
    switch (this) {
      case EnsHospitalisationDurationUnit.DAY:
        return 'jours';
      case EnsHospitalisationDurationUnit.WEEK:
        return 'semaines';
      case EnsHospitalisationDurationUnit.MONTH:
        return 'mois';
      case EnsHospitalisationDurationUnit.YEAR:
        return 'années';
      case EnsHospitalisationDurationUnit.UNKNOWN:
        return 'Inconnus';
    }
  }
}
