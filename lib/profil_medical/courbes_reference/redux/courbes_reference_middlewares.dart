/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/data/courbes_reference_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class CourbesReferenceMiddlewares {
  final ICourbesReferenceRepository courbesReferenceRepository;

  CourbesReferenceMiddlewares(this.courbesReferenceRepository);

  static List<Middleware<EnsState>> create(ICourbesReferenceRepository courbesReferenceRepository) {
    final middlewares = CourbesReferenceMiddlewares(courbesReferenceRepository);

    return [
      TypedMiddleware<EnsState, FetchCourbesReferenceAction>(middlewares._onFetchCourbesReferenceAction).call,
      TypedMiddleware<EnsState, UpdatePreferredTypeOfChartAction>(middlewares._onUpdatePreferredTypeOfChartAction).call,
    ];
  }

  Future<void> _onFetchCourbesReferenceAction(
    Store<EnsState> store,
    FetchCourbesReferenceAction action,
    NextDispatcher next,
  ) async {
    final courbesReferenceState = store.state.courbesReferenceState;
    RequestResult<List<EnsCourbeReference>> result;
    next(action);
    final birthdate = UserSelectors.getBirthdateOrNow(store.state);
    final shouldDisplayRefChart = !(store.state.userState.isMainProfile &&
        store.state.courbesReferenceState.preferredTypeOfChart[action.mesureType] == TypeOfChart.DYNAMIQUE);
    if (action.mesureType.hasCourbesReference && shouldDisplayRefChart) {
      final courbesReferenceListState = courbesReferenceState.courbesReferenceList[action.mesureType];
      for (final period in action.periods) {
        final typesOfUnavailableCurves = _typesOfUnavailableCurves(
          courbesReferenceListState,
          action.typesOfCurveToFetch,
          period,
        );
        if (typesOfUnavailableCurves.isNotEmpty) {
          result = await courbesReferenceRepository.getCourbesReferenceForMeasureType(
            typesOfUnavailableCurves,
            action.mesureType,
            birthdate,
            period,
            store.state.userState.currentProfile?.sexe ?? Genre.HOMME,
          );
        } else {
          result = RequestResultSuccess(const []);
        }
        store.dispatch(
          ProcessFetchedCourbesReferenceAction(
            mesureType: action.mesureType,
            result: result,
            period: period,
            fetchedTypesOfCurve: action.typesOfCurveToFetch,
          ),
        );
      }
    }
  }

  List<TypeOfCurve> _typesOfUnavailableCurves(
    CourbesReferenceList? courbesReferenceListState,
    List<TypeOfCurve> typesOfCurveToFetch,
    CourbesReferencePeriode period,
  ) {
    if (courbesReferenceListState == null) {
      return typesOfCurveToFetch;
    }
    final List<TypeOfCurve> unavailableCurves = [];
    for (final curveType in typesOfCurveToFetch) {
      if (courbesReferenceListState.courbesReference
          .where((courbe) => courbe.periode == period)
          .every((courbe) => courbe.typeOfCurve != curveType)) {
        unavailableCurves.add(curveType);
      }
    }
    return unavailableCurves;
  }

  Future<void> _onUpdatePreferredTypeOfChartAction(
    Store<EnsState> store,
    UpdatePreferredTypeOfChartAction action,
    NextDispatcher next,
  ) async {
    next(action);

    if (action.typeOfChart == TypeOfChart.CARNET_SANTE) {
      store.dispatch(
        FetchCourbesReferenceAction(
          mesureType: action.mesureType,
          typesOfCurveToFetch: store.state.courbesReferenceState.typeOfCurvesToDisplay,
          periods: [action.mesureType.availablePeriodsInCarnetdeSante.first],
        ),
      );
    } else {
      store.dispatch(
        FetchCourbesReferenceAction(
          mesureType: action.mesureType,
          typesOfCurveToFetch: store.state.courbesReferenceState.typeOfCurvesToDisplay,
          periods: action.mesureType.availablePeriodsInCarnetdeSante,
        ),
      );
    }
  }
}
