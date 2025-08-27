/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_chart_point.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class MesureHistoryChartViewModel extends Equatable {
  final EnsMesureType mesureType;
  final List<EnsMesureChartPoint> pointsToDisplay;
  final List<EnsMesureChartPoint> points;
  final String unit;
  final DateTime startDate;
  final DateTime endDate;
  final bool availablePreviousPeriod;
  final bool availableNextPeriod;
  final TypeOfChart typeOfChart;
  final List<EnsCourbeReference> courbesReference;
  final List<EnsCourbeReference> courbesReferenceToDisplay;
  final CourbesReferencePeriode? courbesReferencePeriodeToDisplay;
  final DateTime birthdate;
  final bool isAyantDroit;
  final Function(CourbesReferencePeriode) updateCourbesReferencePeriodeToDisplay;

  bool get shouldDisplayCourbeRefInfo => isAyantDroit || typeOfChart != TypeOfChart.DYNAMIQUE;

  bool get shouldDisplayRefChart => shouldDisplayCourbeRefInfo && courbesReferenceToDisplay.isNotEmpty;

  bool get shouldDisplayRefChartLegend =>
      shouldDisplayRefChart && courbesReferenceToDisplay.any((curve) => curve.points.isNotEmpty);

  const MesureHistoryChartViewModel._internal({
    required this.pointsToDisplay,
    required this.points,
    required this.unit,
    required this.mesureType,
    required this.startDate,
    required this.endDate,
    required this.availablePreviousPeriod,
    required this.availableNextPeriod,
    required this.typeOfChart,
    required this.courbesReference,
    required this.courbesReferenceToDisplay,
    required this.courbesReferencePeriodeToDisplay,
    required this.birthdate,
    required this.updateCourbesReferencePeriodeToDisplay,
    required this.isAyantDroit,
  });

  factory MesureHistoryChartViewModel.from(
    Store<EnsState> store, {
    required EnsMesureType mesureType,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    final mesureState = store.state.mesuresState.mesureStatesByType[mesureType]!;
    final mesureHistoryState = mesureState.mesureHistoryState;
    final courbesReferenceState = store.state.courbesReferenceState;
    final courbesReferenceListState = courbesReferenceState.courbesReferenceList[mesureType];
    final birthdate = UserSelectors.getBirthdateOrNow(store.state);
    final TypeOfChart preferredTypeOfChart = mesureType.hasCourbesReference
        ? courbesReferenceState.preferredTypeOfChart[mesureType] ?? TypeOfChart.DYNAMIQUE
        : TypeOfChart.DYNAMIQUE;

    final List<EnsCourbeReference> courbesReference = [];
    final List<EnsCourbeReference> courbesReferenceToDisplay = [];

    List<EnsMesureValue> values = [];
    bool availablePreviousPeriod = false;
    bool availableNextPeriod = false;
    CourbesReferencePeriode? courbesReferencePeriodeToDisplay =
        mesureType.availablePeriodsInCarnetdeSante.firstWhereOrNull(
              (period) => period.endDate(birthdate).isAfter(clock.now()),
            ) ??
            mesureType.availablePeriodsInCarnetdeSante.firstOrNull;

    if (courbesReferenceListState != null) {
      courbesReference.addAll(courbesReferenceListState.courbesReference);
      courbesReferencePeriodeToDisplay = courbesReferenceListState.periodToDisplay;
      courbesReferenceToDisplay.addAll(
        _getCourbesReferenceToDisplay(
          courbesReference: courbesReference,
          typesOfCurvesToDisplay: courbesReferenceState.typeOfCurvesToDisplay,
          courbesReferencePeriod: courbesReferencePeriodeToDisplay,
          startDate: preferredTypeOfChart == TypeOfChart.DYNAMIQUE ? startDate : null,
          endDate: preferredTypeOfChart == TypeOfChart.DYNAMIQUE ? endDate : null,
        ),
      );
    }

    if (courbesReferencePeriodeToDisplay != null &&
        preferredTypeOfChart == TypeOfChart.CARNET_SANTE &&
        courbesReference.isNotEmpty) {
      startDate = courbesReferencePeriodeToDisplay.startDate(birthdate);
      endDate = courbesReferencePeriodeToDisplay.endDate(birthdate);
    }

    if (mesureHistoryState.status.isSuccess()) {
      values = mesureHistoryState.mesureHistory;
    }

    final points = values
        .map(
          (value) => EnsMesureChartPoint(
            id: value.id,
            x: value.effectiveDate.millisecondsSinceEpoch.toDouble(),
            y: value.metrics[0].value,
            tooltipFormattedValue: '${value.metrics[0].value.toString().replaceAll('.', ',')} ${value.unit}',
            tooltipFormattedDate: EnsDateUtils.formatDayAndPlainTextMonth(value.effectiveDate),
            effectiveDate: value.effectiveDate,
          ),
        )
        .toList();

    final pointsToDisplay = _getPointsForPeriod(startDate, endDate, points);

    if (points.isNotEmpty && preferredTypeOfChart != TypeOfChart.CARNET_SANTE) {
      availablePreviousPeriod = points.any((point) => point.effectiveDate.isBefore(startDate));
      availableNextPeriod = points.any((point) => point.effectiveDate.isAfter(endDate));
    }

    return MesureHistoryChartViewModel._internal(
      unit: values.isNotEmpty ? values.first.unit : '',
      pointsToDisplay: pointsToDisplay,
      points: points,
      mesureType: mesureType,
      startDate: startDate,
      endDate: endDate,
      availablePreviousPeriod: availablePreviousPeriod,
      availableNextPeriod: availableNextPeriod,
      typeOfChart: preferredTypeOfChart,
      courbesReference: courbesReference,
      courbesReferenceToDisplay: courbesReferenceToDisplay,
      courbesReferencePeriodeToDisplay: courbesReferencePeriodeToDisplay,
      birthdate: birthdate,
      updateCourbesReferencePeriodeToDisplay: (CourbesReferencePeriode newPeriod) =>
          _updateCourbesReferencePeriodeToDisplay(store, mesureType, newPeriod),
      isAyantDroit: ProfilsUtils.getCurrentProfilType(store.state).isAd,
    );
  }

  String getPeriodInfoText(bool isRollingInterval, EnsMesureChartPeriode periode) {
    final start = startDate;
    final end = endDate;
    if (periode == EnsMesureChartPeriode.TOUT) {
      final startDateYear = pointsToDisplay.first.effectiveDate.year;
      final endDateYear = pointsToDisplay.last.effectiveDate.year;
      return startDateYear == endDateYear ? startDateYear.toString() : '$startDateYear - $endDateYear';
    }
    if (typeOfChart == TypeOfChart.CARNET_SANTE && courbesReference.isNotEmpty) {
      return '${DateFormat('MMMM y', EnsDateUtils.frenchLocale).format(start.toLocal()).capitalize()} à ${DateFormat('MMMM y', EnsDateUtils.frenchLocale).format(
            end.toLocal(),
          ).toLowerCase()}';
    }
    if (isRollingInterval) {
      return '${DateFormat('dd MMMM y', EnsDateUtils.frenchLocale).format(start.toLocal()).capitalizeName()} - ${DateFormat(
        'dd MMMM y',
        EnsDateUtils.frenchLocale,
      ).format(end.toLocal()).capitalizeName()}';
    }
    switch (periode) {
      case EnsMesureChartPeriode.MOIS:
        return DateFormat('MMMM y', EnsDateUtils.frenchLocale).format(start.toLocal()).capitalize();
      case EnsMesureChartPeriode.SEMESTRE:
        return '${DateFormat('MMMM', EnsDateUtils.frenchLocale).format(start.toLocal()).capitalize()} - ${DateFormat('MMMM y', EnsDateUtils.frenchLocale).format(
              end.toLocal(),
            ).capitalize()}';
      case EnsMesureChartPeriode.ANNEE:
        return DateFormat('y', EnsDateUtils.frenchLocale).format(start.toLocal());
      default:
        return '';
    }
  }

  double get maxYForScale {
    final minY = _minYForScale;
    final maxY = _maxYForScale;
    return minY == maxY ? maxY * 1.25 : maxY;
  }

  double get _maxYForScale {
    if (pointsToDisplay.length == 1 && courbesReferenceToDisplay.isEmpty) {
      return pointsToDisplay.first.y * 1.25;
    }
    double maxValue = pointsToDisplay.reduce((value, element) => element.y > value.y ? element : value).y;
    if (courbesReferenceToDisplay.isNotEmpty && courbesReferenceToDisplay.any((curve) => curve.points.isNotEmpty)) {
      maxValue = max(maxValue, _maxYInCourbesReference());
    }
    final minValue = _minYForScale;

    return maxValue + (maxValue - minValue) * 0.4;
  }

  double _maxYInCourbesReference() {
    return courbesReferenceToDisplay
        .reduce((value, element) => element.points.last.value > value.points.last.value ? element : value)
        .points
        .last
        .value;
  }

  double get minYForScale {
    final minY = _minYForScale;
    final maxY = _maxYForScale;
    return minY == maxY ? minY * 0.75 : minY;
  }

  double get _minYForScale {
    if (pointsToDisplay.length == 1 && courbesReferenceToDisplay.isEmpty) {
      return pointsToDisplay.first.y * 0.75;
    }
    final minValue = pointsToDisplay.reduce((value, element) => element.y < value.y ? element : value).y;
    return courbesReferenceToDisplay.isNotEmpty && courbesReferenceToDisplay.any((curve) => curve.points.isNotEmpty)
        ? min(minValue, _minYInCourbesReference())
        : minValue;
  }

  double _minYInCourbesReference() {
    return courbesReferenceToDisplay
        .reduce((value, element) => element.points.first.value < value.points.first.value ? element : value)
        .points
        .first
        .value;
  }

  double? get maxXForScale {
    if (courbesReferencePeriodeToDisplay != null &&
        typeOfChart == TypeOfChart.CARNET_SANTE &&
        courbesReference.isNotEmpty) {
      return courbesReferencePeriodeToDisplay!.endDate(birthdate).millisecondsSinceEpoch.toDouble();
    }
    return endDate.millisecondsSinceEpoch.toDouble();
  }

  double? get minXForScale {
    if (courbesReferencePeriodeToDisplay != null &&
        typeOfChart == TypeOfChart.CARNET_SANTE &&
        courbesReference.isNotEmpty) {
      return courbesReferencePeriodeToDisplay!.startDate(birthdate).millisecondsSinceEpoch.toDouble();
    }
    return startDate.millisecondsSinceEpoch.toDouble();
  }

  static List<EnsMesureChartPoint> _getPointsForPeriod(
    DateTime startDate,
    DateTime endDate,
    List<EnsMesureChartPoint> points,
  ) {
    points.sort((pointA, pointB) => pointA.effectiveDate.compareTo(pointB.effectiveDate));

    final pointsForPeriod = points.where((point) {
      final pointDateMillis = point.effectiveDate.millisecondsSinceEpoch;
      return pointDateMillis >= startDate.millisecondsSinceEpoch && pointDateMillis <= endDate.millisecondsSinceEpoch;
    }).toList();

    final EnsMesureChartPoint? previousPoint =
        points.where((point) => point.effectiveDate.isBefore(startDate)).lastOrNull;
    final EnsMesureChartPoint? nextPoint = points.where((point) => point.effectiveDate.isAfter(endDate)).firstOrNull;

    if (previousPoint != null) {
      pointsForPeriod.insert(
        0,
        previousPoint.clone(
          x: min(
            startDate.millisecondsSinceEpoch -
                ((endDate.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) / 3),
            previousPoint.x,
          ),
        ),
      );
    }
    if (nextPoint != null) {
      pointsForPeriod.add(
        nextPoint.clone(
          x: max(
            endDate.millisecondsSinceEpoch + ((endDate.millisecondsSinceEpoch - startDate.millisecondsSinceEpoch) / 3),
            nextPoint.x,
          ),
        ),
      );
    }
    return pointsForPeriod;
  }

  int getIndexForPoint(String id) => points.indexWhere((point) => point.id == id);

  @override
  List<Object?> get props => [
        unit,
        pointsToDisplay,
        points,
        mesureType,
        startDate,
        endDate,
        availablePreviousPeriod,
        availableNextPeriod,
        typeOfChart,
        courbesReference,
        courbesReferenceToDisplay,
        courbesReferencePeriodeToDisplay,
        birthdate,
        isAyantDroit,
      ];
}

void _updateCourbesReferencePeriodeToDisplay(
  Store<EnsState> store,
  EnsMesureType mesureType,
  CourbesReferencePeriode newPeriod,
) {
  store.dispatch(
    FetchCourbesReferenceAction(
      mesureType: mesureType,
      typesOfCurveToFetch: store.state.courbesReferenceState.typeOfCurvesToDisplay,
      periods: [newPeriod],
    ),
  );
}

Iterable<EnsCourbeReference> _getCourbesReferenceToDisplay({
  required List<EnsCourbeReference> courbesReference,
  required List<TypeOfCurve> typesOfCurvesToDisplay,
  required CourbesReferencePeriode courbesReferencePeriod,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final curves = courbesReference.where(
    (courbeRef) =>
        typesOfCurvesToDisplay.contains(courbeRef.typeOfCurve) &&
        (startDate != null || courbeRef.periode == courbesReferencePeriod),
  );
  if (startDate == null || endDate == null) {
    return curves;
  }
  final curvesForPeriod = curves
      .map(
        (curve) => curve.clone(
          points: curve.points
              .where(
                (point) =>
                    point.date >= startDate.subtract(const Duration(days: 1)).millisecondsSinceEpoch &&
                    point.date <= endDate.add(const Duration(days: 1)).millisecondsSinceEpoch,
              )
              .toList(),
        ),
      )
      .where((curve) => curve.points.isNotEmpty);

  return typesOfCurvesToDisplay
      .map(
        (typeOfCurve) =>
            _mergeCurvesOfSameCategory(curvesForPeriod.where((curve) => curve.typeOfCurve == typeOfCurve), typeOfCurve),
      )
      .expand((e) => e);
}

Iterable<EnsCourbeReference> _mergeCurvesOfSameCategory(Iterable<EnsCourbeReference> curves, TypeOfCurve typeOfCurve) {
  final List<CourbeReferenceCategory> categories = [];
  for (final curve in curves) {
    if (!categories.contains(curve.category)) {
      categories.add(curve.category);
    }
  }
  return categories.map(
    (category) {
      final points = curves
          .where((curve) => curve.category == category)
          .map((filteredCurve) => filteredCurve.points)
          .expand((e) => e)
          .toList()
        ..sort((a, b) => a.date.compareTo(b.date));
      return EnsCourbeReference(
        mesureType: curves.first.mesureType,
        category: category,
        typeOfCurve: typeOfCurve,
        periode: CourbesReferencePeriode.ZERO_DIX_HUIT_ANS,
        points: points,
      );
    },
  );
}

enum EnsMesureChartPeriode { MOIS, SEMESTRE, ANNEE, TOUT }

extension EnsMesureChartPeriodeExtension on EnsMesureChartPeriode {
  String get label {
    switch (this) {
      case EnsMesureChartPeriode.MOIS:
        return 'Mois';
      case EnsMesureChartPeriode.SEMESTRE:
        return 'Semestre';
      case EnsMesureChartPeriode.ANNEE:
        return 'Année';
      case EnsMesureChartPeriode.TOUT:
        return 'Tout';
    }
  }
}
