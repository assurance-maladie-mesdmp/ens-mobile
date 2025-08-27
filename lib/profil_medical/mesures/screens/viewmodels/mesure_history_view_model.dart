/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/last_mesures_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/empty_mesure.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

abstract class MesureHistoryViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store<EnsState> _store;
  final EnsMesureType mesureType;
  final ScreenStatus historyStatus;
  final AllPurposesStatus lastMesuresStatus;

  const MesureHistoryViewModel._(
    this._store, {
    required this.mesureType,
    required this.historyStatus,
    required this.lastMesuresStatus,
  }) : super(_store);

  factory MesureHistoryViewModel.from(
    Store<EnsState> store, {
    required EnsMesureType mesureType,
    LocaleHelper localeHelper = const LocaleHelper(),
  }) {
    final lastMesuresStatus = store.state.mesuresState.lastMesuresState.status;
    final mesureState = store.state.mesuresState.mesureStatesByType[mesureType];
    final mesure = mesureState?.mesure;
    ScreenStatus historyStatus = ScreenStatus.LOADING;
    String? meanInfoForGlucose;

    if (mesureState == null || mesure == null) {
      // Ne doit jamais arriver mais c'est là au cas où
      return MesureHistoryViewModelUnknown._(store, mesureType, lastMesuresStatus: lastMesuresStatus);
    }
    final mesureHistoryState = mesureState.mesureHistoryState;

    if (mesureHistoryState.status.isSuccess()) {
      historyStatus = ScreenStatus.SUCCESS;
    } else if (mesureHistoryState.status.isError()) {
      historyStatus = ScreenStatus.ERROR;
    }

    if (mesure.type == EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX || mesure.type == EnsMesureType.GLUCOSE_INTERSTITIEL) {
      final numberOfDaysComment =
          mesure.lastValue?.comments.firstWhereOrNull((comment) => comment.type == 'NUMBER_OF_DAYS');
      if (numberOfDaysComment != null) {
        meanInfoForGlucose = numberOfDaysComment.value != 'Autre'
            ? numberOfDaysComment.value.split(' ').first
            : numberOfDaysComment.extraValue;
      }
    }

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final bool shouldDisplayInfoButton;
    if (profilType.isAdult) {
      shouldDisplayInfoButton = mesureType != EnsMesureType.TAILLE &&
          mesureType != EnsMesureType.POIDS &&
          mesureType != EnsMesureType.PERIMETRE_CRANIEN;
    } else {
      shouldDisplayInfoButton = mesureType.hasCourbesReference;
    }

    final title = mesure.label;
    final lastValue = mesure.lastValue;
    if (lastValue == null) {
      return MesureHistoryViewModelEmpty._(
        store,
        mesureType,
        title: title,
        shouldDisplayAddButton: mesure.permissions.canAddValue,
        shouldDisplayInfoButton: shouldDisplayInfoButton,
        emptyMesure: EmptyMesureDisplayModel.from(store.state, mesure),
        historyStatus: historyStatus,
        lastMesuresStatus: lastMesuresStatus,
      );
    }
    return MesureHistoryViewModelWithValues._(
      store,
      mesureType,
      title: title,
      shouldDisplayAddButton: mesure.permissions.canAddValue,
      shouldDisplayInfoButton: shouldDisplayInfoButton,
      lastMesure: LastMesureDisplayModel.from(mesure, localeHelper, meanInfoForGlucose),
      historyStatus: historyStatus,
      lastMesuresStatus: lastMesuresStatus,
    );
  }

  void loadData() {
    if (lastMesuresStatus.isNotSuccess()) {
      loadLastMesures();
    } else {
      loadHistory();
    }
  }

  void loadLastMesures() {
    _store.dispatch(const FetchLastMesuresAction());
  }

  void loadHistory() {
    _store.dispatch(FetchMesureDataAction(mesureType));
  }

  void loadCourbes() {
    final birthdate = UserSelectors.getBirthdateOrNow(_store.state);

    final periodToFetch = mesureType.availablePeriodsInCarnetdeSante.firstWhereOrNull(
      (period) => period.endDate(birthdate).isAfter(clock.now()),
    );
    if (periodToFetch != null) {
      _store.dispatch(
        FetchCourbesReferenceAction(
          mesureType: mesureType,
          typesOfCurveToFetch: _store.state.courbesReferenceState.typeOfCurvesToDisplay,
          periods: [
            mesureType.availablePeriodsInCarnetdeSante.firstWhere(
              (period) => period.endDate(birthdate).isAfter(clock.now()),
            ),
          ],
        ),
      );
    }
  }

  bool get shouldDisplayChart =>
      mesureType == EnsMesureType.POIDS ||
      mesureType == EnsMesureType.TAILLE ||
      mesureType == EnsMesureType.IMC ||
      mesureType == EnsMesureType.PERIMETRE_CRANIEN;

  @override
  List<Object?> get props => [mesureType, historyStatus, lastMesuresStatus];
}

class MesureHistoryViewModelUnknown extends MesureHistoryViewModel {
  const MesureHistoryViewModelUnknown._(super.store, EnsMesureType mesureType, {required super.lastMesuresStatus})
      : super._(mesureType: mesureType, historyStatus: ScreenStatus.ERROR);
}

abstract class MesureHistoryViewModelExisting extends MesureHistoryViewModel {
  final String title;
  final bool shouldDisplayAddButton;
  final bool shouldDisplayInfoButton;

  const MesureHistoryViewModelExisting._(
    super.store,
    EnsMesureType mesureType, {
    required this.title,
    required this.shouldDisplayAddButton,
    required this.shouldDisplayInfoButton,
    required super.historyStatus,
    required super.lastMesuresStatus,
  }) : super._(mesureType: mesureType);

  @override
  List<Object?> get props => [
        ...super.props,
        title,
        shouldDisplayAddButton,
        shouldDisplayInfoButton,
      ];
}

class MesureHistoryViewModelEmpty extends MesureHistoryViewModelExisting {
  final EmptyMesureDisplayModel emptyMesure;

  const MesureHistoryViewModelEmpty._(
    super.store,
    super.mesureType, {
    required super.title,
    required super.shouldDisplayAddButton,
    required super.shouldDisplayInfoButton,
    required this.emptyMesure,
    required super.historyStatus,
    required super.lastMesuresStatus,
  }) : super._();

  @override
  List<Object?> get props => [...super.props, emptyMesure];
}

class MesureHistoryViewModelWithValues extends MesureHistoryViewModelExisting {
  final LastMesureDisplayModel lastMesure;

  const MesureHistoryViewModelWithValues._(
    super.store,
    super.mesureType, {
    required super.title,
    required super.shouldDisplayAddButton,
    required super.shouldDisplayInfoButton,
    required this.lastMesure,
    required super.historyStatus,
    required super.lastMesuresStatus,
  }) : super._();

  void deleteMesureTarget() {
    final targetedValue = _store.state.mesuresState.mesureStatesByType[mesureType]?.mesure.targetedValue;
    if (targetedValue != null) {
      _store.dispatch(DeleteMesureTargetAction(targetedValue.id));
    }
  }

  @override
  List<Object?> get props => [...super.props, lastMesure];
}
