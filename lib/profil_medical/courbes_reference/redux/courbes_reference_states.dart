/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

const NUMBER_OF_DAYS_IN_YEAR = 365;

class CourbesReferenceState extends Equatable {
  final Map<EnsMesureType, CourbesReferenceList> courbesReferenceList;
  final Map<EnsMesureType, TypeOfChart> preferredTypeOfChart;
  final List<TypeOfCurve> typeOfCurvesToDisplay;
  final Map<EnsMesureType, List<LoadingCurve>> currentlyLoadingCurves;

  const CourbesReferenceState({
    this.courbesReferenceList = const {},
    this.preferredTypeOfChart = const {},
    this.typeOfCurvesToDisplay = const [TypeOfCurve.PRINCIPALE],
    this.currentlyLoadingCurves = const {},
  });

  CourbesReferenceState clone({
    Map<EnsMesureType, CourbesReferenceList>? courbesReferenceList,
    Map<EnsMesureType, TypeOfChart>? preferredTypeOfChart,
    List<TypeOfCurve>? typeOfCurvesToDisplay,
    Map<EnsMesureType, List<LoadingCurve>>? currentlyLoadingCurves,
  }) {
    return CourbesReferenceState(
      courbesReferenceList: courbesReferenceList ?? this.courbesReferenceList,
      preferredTypeOfChart: preferredTypeOfChart ?? this.preferredTypeOfChart,
      typeOfCurvesToDisplay: typeOfCurvesToDisplay ?? this.typeOfCurvesToDisplay,
      currentlyLoadingCurves: currentlyLoadingCurves ?? this.currentlyLoadingCurves,
    );
  }

  @override
  List<Object?> get props =>
      [courbesReferenceList, preferredTypeOfChart, typeOfCurvesToDisplay, currentlyLoadingCurves];
}

class CourbesReferenceList extends Equatable {
  final List<EnsCourbeReference> courbesReference;
  final CourbesReferencePeriode periodToDisplay;

  const CourbesReferenceList(this.courbesReference, this.periodToDisplay);

  @override
  List<Object?> get props => [courbesReference, periodToDisplay];
}

enum TypeOfChart { CARNET_SANTE, DYNAMIQUE }

enum TypeOfCurve { PRINCIPALE, SECONDAIRE }

enum CourbesReferencePeriode {
  ZERO_TROIS_ANS('De 0 à 3 ans'),
  UN_DIX_HUIT_ANS('De 1 à 18 ans'),
  ZERO_CINQ_ANS('De 0 à 5 ans'),
  ZERO_DIX_HUIT_ANS('De 0 à 18 ans');

  final String label;

  const CourbesReferencePeriode(this.label);

  DateTime startDate(DateTime birthdate) {
    switch (this) {
      case CourbesReferencePeriode.ZERO_TROIS_ANS:
      case CourbesReferencePeriode.ZERO_CINQ_ANS:
      case CourbesReferencePeriode.ZERO_DIX_HUIT_ANS:
        return birthdate;
      case CourbesReferencePeriode.UN_DIX_HUIT_ANS:
        return birthdate.add(const Duration(days: NUMBER_OF_DAYS_IN_YEAR));
    }
  }

  DateTime endDate(DateTime birthdate) {
    switch (this) {
      case CourbesReferencePeriode.ZERO_TROIS_ANS:
        return birthdate.add(const Duration(days: 3 * NUMBER_OF_DAYS_IN_YEAR));
      case CourbesReferencePeriode.UN_DIX_HUIT_ANS:
        return birthdate.add(const Duration(days: 18 * NUMBER_OF_DAYS_IN_YEAR));
      case CourbesReferencePeriode.ZERO_CINQ_ANS:
        return birthdate.add(const Duration(days: 5 * NUMBER_OF_DAYS_IN_YEAR));
      case CourbesReferencePeriode.ZERO_DIX_HUIT_ANS:
        return birthdate.add(const Duration(days: 18 * NUMBER_OF_DAYS_IN_YEAR));
    }
  }
}

class LoadingCurve extends Equatable {
  final TypeOfCurve typeOfCurve;
  final CourbesReferencePeriode period;

  const LoadingCurve({required this.typeOfCurve, required this.period});

  @override
  List<Object?> get props => [typeOfCurve, period];
}
