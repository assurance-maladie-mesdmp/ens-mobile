/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class FetchCourbesReferenceAction extends Equatable {
  final EnsMesureType mesureType;
  final List<TypeOfCurve> typesOfCurveToFetch;
  final List<CourbesReferencePeriode> periods;

  const FetchCourbesReferenceAction({
    required this.mesureType,
    required this.typesOfCurveToFetch,
    required this.periods,
  });

  @override
  List<Object?> get props => [mesureType, typesOfCurveToFetch, periods];
}

class ProcessFetchedCourbesReferenceAction {
  final EnsMesureType mesureType;
  final RequestResult<List<EnsCourbeReference>> result;
  final CourbesReferencePeriode period;
  final List<TypeOfCurve> fetchedTypesOfCurve;

  const ProcessFetchedCourbesReferenceAction({
    required this.mesureType,
    required this.result,
    required this.period,
    required this.fetchedTypesOfCurve,
  });
}

class InitPreferredTypeOfChartAction {
  final TypeOfChart typeOfChart;

  const InitPreferredTypeOfChartAction(this.typeOfChart);
}

class UpdatePreferredTypeOfChartAction {
  final TypeOfChart typeOfChart;
  final EnsMesureType mesureType;

  const UpdatePreferredTypeOfChartAction({required this.typeOfChart, required this.mesureType});
}

class AddTypeOfCurveToDisplayAction {
  final TypeOfCurve typeOfCurve;

  const AddTypeOfCurveToDisplayAction(this.typeOfCurve);
}

class RemoveTypeOfCurveToDisplayAction {
  final TypeOfCurve typeOfCurve;

  const RemoveTypeOfCurveToDisplayAction(this.typeOfCurve);
}
