/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:redux/redux.dart';

class EnsCourbesReferenceSelectorViewModel extends AnalyticsViewModel with EquatableMixin {
  final bool isPrincipalButtonActive;
  final bool isDetailedButtonActive;
  final bool shouldDisplayDetailedButton;
  final List<LoadingCurve> loadingCurves;
  final void Function(TypeOfCurve) toggleDisplayStatusForCurvesOfType;

  const EnsCourbesReferenceSelectorViewModel._internal(
    super.store, {
    required this.isPrincipalButtonActive,
    required this.isDetailedButtonActive,
    required this.shouldDisplayDetailedButton,
    required this.loadingCurves,
    required this.toggleDisplayStatusForCurvesOfType,
  });

  factory EnsCourbesReferenceSelectorViewModel(Store<EnsState> store, EnsMesureType mesureType) {
    final typeOfCurvesToDisplay = store.state.courbesReferenceState.typeOfCurvesToDisplay;
    final age = int.tryParse(store.state.userState.currentProfile?.age ?? '');
    return EnsCourbesReferenceSelectorViewModel._internal(
      store,
      isPrincipalButtonActive: typeOfCurvesToDisplay.contains(TypeOfCurve.PRINCIPALE),
      isDetailedButtonActive: typeOfCurvesToDisplay.contains(TypeOfCurve.SECONDAIRE),
      shouldDisplayDetailedButton: mesureType != EnsMesureType.IMC || (age != null && age >= 2),
      loadingCurves: store.state.courbesReferenceState.currentlyLoadingCurves[mesureType] ?? [],
      toggleDisplayStatusForCurvesOfType: (TypeOfCurve typeOfCurve) => _toggleDisplayStatusForCurvesOfType(
        store,
        typeOfCurve,
        mesureType,
      ),
    );
  }

  bool isCurveTypeLoading(TypeOfCurve type) => loadingCurves.any((curve) => curve.typeOfCurve == type);

  @override
  List<Object?> get props => [
        isPrincipalButtonActive,
        isDetailedButtonActive,
        loadingCurves,
        shouldDisplayDetailedButton,
      ];
}

void _toggleDisplayStatusForCurvesOfType(Store<EnsState> store, TypeOfCurve typeOfCurve, EnsMesureType mesureType) {
  final courbesReferenceState = store.state.courbesReferenceState;
  final courbesReferenceListState = courbesReferenceState.courbesReferenceList[mesureType];
  if (courbesReferenceState.typeOfCurvesToDisplay.contains(typeOfCurve)) {
    store.dispatch(RemoveTypeOfCurveToDisplayAction(typeOfCurve));
  } else {
    List<CourbesReferencePeriode> periods = [mesureType.availablePeriodsInCarnetdeSante.first];
    if (courbesReferenceListState != null) {
      periods = courbesReferenceState.preferredTypeOfChart[mesureType] == TypeOfChart.CARNET_SANTE
          ? [courbesReferenceListState.periodToDisplay]
          : mesureType.availablePeriodsInCarnetdeSante;
    }
    store.dispatch(AddTypeOfCurveToDisplayAction(typeOfCurve));
    store.dispatch(
      FetchCourbesReferenceAction(
        mesureType: mesureType,
        typesOfCurveToFetch: [typeOfCurve],
        periods: periods,
      ),
    );
  }
}
