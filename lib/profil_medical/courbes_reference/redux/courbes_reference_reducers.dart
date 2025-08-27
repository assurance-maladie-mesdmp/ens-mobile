/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:redux/redux.dart';

class CourbesReferenceReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchCourbesReferenceAction>(CourbesReferenceReducers._onFetchCourbesReferenceAction)
            .call,
        TypedReducer<EnsState, ProcessFetchedCourbesReferenceAction>(
          CourbesReferenceReducers._onProcessLoadedCourbesReferenceAction,
        ).call,
        TypedReducer<EnsState, InitPreferredTypeOfChartAction>(
          CourbesReferenceReducers._onInitPreferredTypeOfChartAction,
        ).call,
        TypedReducer<EnsState, AddTypeOfCurveToDisplayAction>(
          CourbesReferenceReducers._onAddTypeOfCurveToDisplayAction,
        ).call,
        TypedReducer<EnsState, RemoveTypeOfCurveToDisplayAction>(
          CourbesReferenceReducers._onRemoveTypeOfCurveToDisplayAction,
        ).call,
        TypedReducer<EnsState, UpdatePreferredTypeOfChartAction>(
          CourbesReferenceReducers._onUpdatePreferredTypeOfChartAction,
        ).call,
      ];

  static EnsState _onFetchCourbesReferenceAction(EnsState state, FetchCourbesReferenceAction action) {
    final courbesReferenceState = state.courbesReferenceState;
    final CourbesReferenceList? courbesReferenceListForMesureType =
        courbesReferenceState.courbesReferenceList[action.mesureType];
    final Map<EnsMesureType, List<LoadingCurve>> currentlyLoadingCurves =
        Map.from(state.courbesReferenceState.currentlyLoadingCurves);
    final currentlyLoadingCurvesForMesureType = currentlyLoadingCurves[action.mesureType];
    final List<LoadingCurve> loadingCurves =
        currentlyLoadingCurvesForMesureType != null ? List.from(currentlyLoadingCurvesForMesureType) : [];

    for (final typeOfCurve in action.typesOfCurveToFetch) {
      for (final period in action.periods) {
        if (courbesReferenceListForMesureType == null ||
            !courbesReferenceListForMesureType.courbesReference
                .any((curve) => curve.typeOfCurve == typeOfCurve && curve.periode == period)) {
          loadingCurves.add(LoadingCurve(typeOfCurve: typeOfCurve, period: period));
        }
      }
    }
    currentlyLoadingCurves[action.mesureType] = loadingCurves;
    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(currentlyLoadingCurves: currentlyLoadingCurves),
    );
  }

  static EnsState _onProcessLoadedCourbesReferenceAction(EnsState state, ProcessFetchedCourbesReferenceAction action) {
    final Map<EnsMesureType, CourbesReferenceList> newCourbesReferenceList =
        Map.from(state.courbesReferenceState.courbesReferenceList);
    final Map<EnsMesureType, List<LoadingCurve>> newLoadingCurves =
        Map.from(state.courbesReferenceState.currentlyLoadingCurves);

    action.result.onSuccess((successResult) {
      final currentCourbesReferenceListState = newCourbesReferenceList[action.mesureType];
      final List<EnsCourbeReference> currentFetchedCourbesReferenceForMesureType =
          currentCourbesReferenceListState != null ? currentCourbesReferenceListState.courbesReference : [];
      newCourbesReferenceList[action.mesureType] = CourbesReferenceList(
        [...currentFetchedCourbesReferenceForMesureType, ...successResult],
        action.period,
      );
      if (newLoadingCurves[action.mesureType] != null && newLoadingCurves[action.mesureType]!.isNotEmpty) {
        for (final typeOfCurve in action.fetchedTypesOfCurve) {
          newLoadingCurves[action.mesureType]!.removeWhere(
            (loadingCurve) => loadingCurve.period == action.period && loadingCurve.typeOfCurve == typeOfCurve,
          );
        }
      }
    });

    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(
        courbesReferenceList: newCourbesReferenceList,
        currentlyLoadingCurves: newLoadingCurves,
      ),
    );
  }

  static EnsState _onInitPreferredTypeOfChartAction(EnsState state, InitPreferredTypeOfChartAction action) {
    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(
        preferredTypeOfChart: {
          for (final mesure in EnsMesureType.values.where((element) => element.hasCourbesReference))
            mesure: action.typeOfChart,
        },
      ),
    );
  }

  static EnsState _onAddTypeOfCurveToDisplayAction(EnsState state, AddTypeOfCurveToDisplayAction action) {
    final List<TypeOfCurve> typeOfCurvesToDisplay = List.from(state.courbesReferenceState.typeOfCurvesToDisplay);
    typeOfCurvesToDisplay.add(action.typeOfCurve);

    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(typeOfCurvesToDisplay: typeOfCurvesToDisplay),
    );
  }

  static EnsState _onRemoveTypeOfCurveToDisplayAction(EnsState state, RemoveTypeOfCurveToDisplayAction action) {
    final List<TypeOfCurve> typeOfCurvesToDisplay = List.from(state.courbesReferenceState.typeOfCurvesToDisplay);
    typeOfCurvesToDisplay.remove(action.typeOfCurve);

    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(typeOfCurvesToDisplay: typeOfCurvesToDisplay),
    );
  }

  static EnsState _onUpdatePreferredTypeOfChartAction(EnsState state, UpdatePreferredTypeOfChartAction action) {
    final newPreferredTypeOfChart =
        Map<EnsMesureType, TypeOfChart>.from(state.courbesReferenceState.preferredTypeOfChart);
    newPreferredTypeOfChart[action.mesureType] = action.typeOfChart;
    return state.clone(
      courbesReferenceState: state.courbesReferenceState.clone(preferredTypeOfChart: newPreferredTypeOfChart),
    );
  }
}
