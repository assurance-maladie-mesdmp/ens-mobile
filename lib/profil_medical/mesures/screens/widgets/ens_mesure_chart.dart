/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/screens/options_affichage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/widgets/ens_courbes_reference_selector.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/mesure_history_chart_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_circle_arrow_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsMesureChart extends StatefulWidget {
  final EnsMesureType mesureType;
  final Function(String?)? onValuePressedCallback;

  const EnsMesureChart({super.key, required this.mesureType, this.onValuePressedCallback});

  @override
  State<EnsMesureChart> createState() => _EnsMesureChartState();
}

class _EnsMesureChartState extends State<EnsMesureChart> {
  EnsMesureChartPeriode _currentPeriod = EnsMesureChartPeriode.SEMESTRE;
  LineBarSpot? _selectedPoint;
  bool _isRollingInterval = true;
  late DateTime _startDate;
  late DateTime _endDate;
  bool _shouldDisplayChart = true;
  bool _shouldDisplayFloatingLeftAxis = true;

  @override
  void initState() {
    final now = DateTime.now();
    _endDate = DateTime(now.year, now.month, now.day, 23, 59);
    _startDate = DateTime(now.year, now.month - 6, now.day);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MesureHistoryChartViewModel>(
      converter: (store) => MesureHistoryChartViewModel.from(
        store,
        mesureType: widget.mesureType,
        startDate: _startDate,
        endDate: _endDate,
      ),
      distinct: true,
      onDidChange: (_, vm) {
        setState(() {
          _selectedPoint = null;
        });
        _findFirstNotEmptyPeriodIfNeeded(vm, _currentPeriod);
      },
      onInitialBuild: (vm) => _findFirstNotEmptyPeriodIfNeeded(vm, _currentPeriod),
      builder: (context, vm) => EnsPopScope.shouldPop(
        onScreenClosedInvoked: () {
          setState(() => _shouldDisplayChart = false);
        },
        child: ColoredBox(
          color: vm.typeOfChart == TypeOfChart.CARNET_SANTE && _shouldDisplayChart
              ? const Color(0xFFEFE3F3)
              : EnsColors.neutral100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (vm.typeOfChart == TypeOfChart.CARNET_SANTE)
                _CarnetDeSanteTimeScaleSelector(
                  availablePeriodsInCarnetdeSante: vm.mesureType.availablePeriodsInCarnetdeSante,
                  periodToDisplay: vm.courbesReferencePeriodeToDisplay,
                  updatePeriodToDisplay: vm.updateCourbesReferencePeriodeToDisplay,
                  mesureType: vm.mesureType,
                )
              else
                _TimeScaleSelector(
                  vm: vm,
                  currentPeriod: _currentPeriod,
                  onValuePressedCallback: widget.onValuePressedCallback,
                  updateStateOnTap: _updateStateOnTimeSelectorTap,
                ),
              _PeriodSelector(
                availablePreviousPeriod: vm.availablePreviousPeriod,
                availableNextPeriod: vm.availableNextPeriod,
                periodInfoText: vm.getPeriodInfoText(_isRollingInterval, _currentPeriod),
                handlePreviousPeriodButtonClick: () => _handlePreviousPeriodButtonClick(vm),
                handleNextPeriodButtonClick: () => _handleNextPeriodButtonClick(vm),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 150),
                opacity: _shouldDisplayFloatingLeftAxis && _selectedPoint == null ? 1 : 0,
                child: ColoredBox(
                  color: vm.typeOfChart == TypeOfChart.CARNET_SANTE && _shouldDisplayChart
                      ? const Color(0xFFEFE3F3)
                      : EnsColors.neutral100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: Text(vm.unit, style: EnsTextStyle.text14_w600_normal_body),
                      ),
                    ),
                  ),
                ),
              ),
              if (vm.pointsToDisplay.isNotEmpty)
                GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details) {
                    if (details.primaryVelocity != null && details.primaryVelocity! > 0 && vm.availablePreviousPeriod) {
                      _handlePreviousPeriodButtonClick(vm);
                    } else if (details.primaryVelocity != null &&
                        details.primaryVelocity! < 0 &&
                        vm.availableNextPeriod) {
                      _handleNextPeriodButtonClick(vm);
                    }
                  },
                  child: _Charts(
                    vm: vm,
                    shouldDisplayChart: _shouldDisplayChart,
                    shouldDisplayFloatingLeftAxis: _shouldDisplayFloatingLeftAxis,
                    currentPeriod: _currentPeriod,
                    selectedPoint: _selectedPoint,
                    onValuePressedCallback: (
                      TouchLineBarSpot? newSelectedPoint,
                      String? idOfSelectedPoint,
                    ) {
                      setState(() {
                        _selectedPoint = newSelectedPoint;
                        _shouldDisplayFloatingLeftAxis = !_shouldDisplayFloatingLeftAxis;
                      });
                      widget.onValuePressedCallback?.call(idOfSelectedPoint);
                    },
                  ),
                ),
              if (vm.shouldDisplayCourbeRefInfo && vm.mesureType.hasCourbesReference)
                EnsCourbesReferenceSelector(
                  mesureType: vm.mesureType,
                  onButtonPressedCallback: () => widget.onValuePressedCallback?.call(null),
                ),
              const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
            ],
          ),
        ),
      ),
    );
  }

  void _updateStateOnTimeSelectorTap(
    LineBarSpot? selectedPoint,
    EnsMesureChartPeriode periode,
    bool isRollingInterval,
    DateTime newEndDate,
    DateTime newStartDate,
  ) {
    setState(() {
      _selectedPoint = selectedPoint;
      _currentPeriod = periode;
      _isRollingInterval = isRollingInterval;
      _endDate = newEndDate;
      _startDate = newStartDate;
    });
  }

  void _handlePreviousPeriodButtonClick(MesureHistoryChartViewModel vm) {
    widget.onValuePressedCallback?.call(null);
    DateTime newStartDate;
    DateTime newEndDate;
    switch (_currentPeriod) {
      case EnsMesureChartPeriode.MOIS:
        newStartDate = DateTime(_startDate.year, _startDate.month - 1, 1);
        newEndDate = DateTime(newStartDate.year, newStartDate.month + 1, 0, 23, 59);
      case EnsMesureChartPeriode.SEMESTRE:
        newStartDate = _isRollingInterval
            ? DateTime(_startDate.year, _startDate.month >= 7 ? 7 : 1, 1)
            : DateTime(_startDate.year, _startDate.month - 6, _startDate.day);
        newEndDate = DateTime(newStartDate.year, newStartDate.month + 6, 0, 23, 59);
      case EnsMesureChartPeriode.ANNEE:
        newStartDate = DateTime(_startDate.year - 1, 1, 1);
        newEndDate = DateTime(newStartDate.year + 1, 1, 0, 23, 59);
      default:
        return;
    }
    setState(() {
      if (_isRollingInterval) _isRollingInterval = false;
      _startDate = newStartDate;
      _endDate = newEndDate;
      _selectedPoint = null;
    });
  }

  void _handleNextPeriodButtonClick(MesureHistoryChartViewModel vm) {
    widget.onValuePressedCallback?.call(null);
    final DateTime newStartDate;
    final DateTime newEndDate;
    switch (_currentPeriod) {
      case EnsMesureChartPeriode.MOIS:
        newStartDate = DateTime(_startDate.year, _startDate.month + 1, _startDate.day);
        newEndDate = DateTime(newStartDate.year, newStartDate.month + 1, 0, 23, 59);
      case EnsMesureChartPeriode.SEMESTRE:
        newStartDate = DateTime(_startDate.year, _startDate.month + 6, _startDate.day);
        newEndDate = DateTime(newStartDate.year, newStartDate.month + 6, 0, 23, 59);
      case EnsMesureChartPeriode.ANNEE:
        newStartDate = DateTime(_startDate.year + 1, _startDate.month, _startDate.day);
        newEndDate = DateTime(newStartDate.year + 1, newStartDate.month, 0, 23, 59);
      default:
        return;
    }
    setState(() {
      _startDate = newStartDate;
      _endDate = newEndDate;
      _selectedPoint = null;
    });
  }

  void _findFirstNotEmptyPeriodIfNeeded(MesureHistoryChartViewModel vm, EnsMesureChartPeriode periode) {
    if (vm.pointsToDisplay.isNotEmpty && vm.pointsToDisplay.last.effectiveDate.isBefore(_startDate)) {
      final DateTime newStartDate;
      final DateTime newEndDate;
      final DateTime lastPointDate = vm.points.last.effectiveDate;

      switch (periode) {
        case EnsMesureChartPeriode.MOIS:
          newStartDate = DateTime(lastPointDate.year, lastPointDate.month, 1);
          newEndDate = DateTime(newStartDate.year, newStartDate.month + 1, 0, 23, 59);
        case EnsMesureChartPeriode.SEMESTRE:
          newStartDate = DateTime(lastPointDate.year, lastPointDate.month < 7 ? 1 : 7, 1);
          newEndDate = DateTime(newStartDate.year, newStartDate.month + 6, 0, 23, 59);
        case EnsMesureChartPeriode.ANNEE:
          newStartDate = DateTime(lastPointDate.year, 1, 1);
          newEndDate = DateTime(newStartDate.year + 1, 1, 0, 23, 59);
        default:
          newStartDate = vm.points.first.effectiveDate;
          newEndDate = vm.points.last.effectiveDate;
      }
      setState(() {
        _selectedPoint = null;
        _isRollingInterval = false;
        _endDate = newEndDate;
        _startDate = newStartDate;
      });
    }
  }
}

class _Charts extends StatelessWidget {
  final MesureHistoryChartViewModel vm;
  final bool shouldDisplayChart;
  final bool shouldDisplayFloatingLeftAxis;
  final EnsMesureChartPeriode currentPeriod;
  final Function(TouchLineBarSpot?, String?)? onValuePressedCallback;
  final LineBarSpot? selectedPoint;

  const _Charts({
    required this.vm,
    required this.shouldDisplayChart,
    required this.shouldDisplayFloatingLeftAxis,
    required this.currentPeriod,
    required this.selectedPoint,
    this.onValuePressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        children: [
          if (vm.shouldDisplayRefChart)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: _ReferenceChart(
                courbesReferenceToDisplay: vm.courbesReferenceToDisplay,
                shouldDisplayChart: shouldDisplayChart,
                minX: vm.minXForScale,
                minY: vm.minYForScale,
                maxX: vm.maxXForScale,
                maxY: vm.maxYForScale,
              ),
            ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: _MainChart(
              vm: vm,
              currentPeriod: currentPeriod,
              selectedPoint: selectedPoint,
              shouldDisplayChart: shouldDisplayChart,
              onValuePressedCallback: onValuePressedCallback,
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: shouldDisplayFloatingLeftAxis && selectedPoint == null ? 1 : 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: 88,
              child: _FloatingLeftAxis(
                minX: vm.minXForScale,
                minY: vm.minYForScale,
                maxX: vm.maxXForScale,
                maxY: vm.maxYForScale,
              ),
            ),
          ),
          if (vm.shouldDisplayRefChartLegend)
            AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              opacity: shouldDisplayFloatingLeftAxis && selectedPoint == null ? 1 : 0,
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: 48,
                  child: _FloatingRightAxis(
                    courbesReferenceToDisplay: vm.courbesReferenceToDisplay,
                    minX: vm.minXForScale,
                    minY: vm.minYForScale,
                    maxX: vm.maxXForScale,
                    maxY: vm.maxYForScale,
                    mesureType: vm.mesureType,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _MainChart extends StatelessWidget {
  final MesureHistoryChartViewModel vm;
  final EnsMesureChartPeriode currentPeriod;
  final LineBarSpot? selectedPoint;
  final bool shouldDisplayChart;
  final Function(TouchLineBarSpot?, String?)? onValuePressedCallback;

  const _MainChart({
    required this.vm,
    required this.currentPeriod,
    required this.selectedPoint,
    required this.shouldDisplayChart,
    required this.onValuePressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    final bool shouldDisplayPlots = vm.typeOfChart == TypeOfChart.CARNET_SANTE ||
        currentPeriod == EnsMesureChartPeriode.MOIS ||
        currentPeriod == EnsMesureChartPeriode.SEMESTRE;
    return LineChart(
      LineChartData(
        backgroundColor: Colors.transparent,
        showingTooltipIndicators: [
          ShowingTooltipIndicators(selectedPoint != null && shouldDisplayPlots ? [selectedPoint!] : []),
        ],
        lineTouchData: LineTouchData(
          touchSpotThreshold: 25,
          handleBuiltInTouches: false,
          touchCallback: shouldDisplayPlots
              ? (event, lineTouchResponse) {
                  var lineBarSpot = lineTouchResponse?.lineBarSpots?.first;
                  if (event is FlPanDownEvent) {
                    if (lineBarSpot?.x == selectedPoint?.x) {
                      lineBarSpot = null;
                    }
                    final idOfSelectedPoint = vm.pointsToDisplay
                        .firstWhereOrNull(
                          (point) => point.x == lineBarSpot?.x && point.y == lineBarSpot?.y,
                        )
                        ?.id;
                    onValuePressedCallback?.call(lineBarSpot, idOfSelectedPoint);
                  }
                }
              : (event, _) {
                  if (event is FlTapUpEvent) {
                    onValuePressedCallback?.call(null, null);
                  }
                },
          touchTooltipData: shouldDisplayPlots ? _buildTooltip(vm) : const LineTouchTooltipData(),
        ),
        gridData: _buildGrid(),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        maxX: vm.maxXForScale,
        minX: vm.minXForScale,
        minY: vm.minYForScale,
        maxY: vm.maxYForScale,
        lineBarsData: shouldDisplayChart
            ? [
                LineChartBarData(
                  curveSmoothness: 0.1,
                  preventCurveOverShooting: true,
                  aboveBarData: _buildVerticalLineIndicatorForSelectedPoint(vm, shouldDisplayPlots),
                  spots: vm.pointsToDisplay.map((point) => FlSpot(point.x, point.y)).toList(),
                  isCurved: true,
                  barWidth: 3,
                  color: EnsColors.primary,
                  dotData: _buildDots(shouldDisplayPlots, selectedPoint),
                ),
              ]
            : [],
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  FlGridData _buildGrid() => FlGridData(
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: EnsColors.disabled500,
            strokeWidth: 1,
            dashArray: [3, 3],
          );
        },
      );

  LineTouchTooltipData _buildTooltip(MesureHistoryChartViewModel vm) => LineTouchTooltipData(
        fitInsideHorizontally: true,
        fitInsideVertically: true,
        tooltipPadding: const EdgeInsets.all(8),
        getTooltipColor: (LineBarSpot touchedSpot) => EnsColors.primary,
        getTooltipItems: (List<LineBarSpot> spots) {
          return spots.map((spot) {
            final text = spot.spotIndex < vm.pointsToDisplay.length
                ? vm.pointsToDisplay[spot.spotIndex].tooltipFormattedValue
                : '';
            final date = spot.spotIndex < vm.pointsToDisplay.length
                ? vm.pointsToDisplay[spot.spotIndex].tooltipFormattedDate
                : '';
            return LineTooltipItem(
              text,
              EnsTextStyle.text14_w600_normal_light,
              children: [TextSpan(text: '\n$date')],
            );
          }).toList();
        },
        showOnTopOfTheChartBoxArea: true,
      );

  BarAreaData _buildVerticalLineIndicatorForSelectedPoint(MesureHistoryChartViewModel vm, bool shouldDisplayPlots) {
    return BarAreaData(
      color: Colors.transparent,
      show: shouldDisplayPlots,
      spotsLine: BarAreaSpotsLine(
        show: shouldDisplayPlots,
        checkToShowSpotLine: (spot) =>
            selectedPoint != null && selectedPoint!.x == spot.x && selectedPoint!.y == spot.y,
        flLineStyle: const FlLine(color: EnsColors.primary, strokeWidth: 2),
      ),
    );
  }
}

class _FloatingLeftAxis extends StatelessWidget {
  final double? minX;
  final double? maxX;
  final double minY;
  final double maxY;

  const _FloatingLeftAxis({
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: const LineTouchData(enabled: false),
        gridData: const FlGridData(show: false),
        titlesData: _buildTitles(),
        borderData: FlBorderData(show: false),
        maxX: maxX,
        minX: minX,
        minY: minY,
        maxY: maxY,
        lineBarsData: [],
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  FlTitlesData _buildTitles() {
    return FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 60,
          getTitlesWidget: (value, titleMeta) {
            if (titleMeta.max == value || titleMeta.min == value) {
              return Container();
            }
            var stringValue = value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
            if (stringValue.contains('.') && stringValue.endsWith('0')) {
              stringValue = stringValue.substring(0, stringValue.length - 1);
            }
            return Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 40,
                  color: EnsColors.light,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    stringValue.replaceAll('.', ','),
                    style: EnsTextStyle.text14_w600_normal_body,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _FloatingRightAxis extends StatelessWidget {
  final List<EnsCourbeReference> courbesReferenceToDisplay;
  final double? minX;
  final double? maxX;
  final double minY;
  final double maxY;
  final EnsMesureType mesureType;

  const _FloatingRightAxis({
    required this.courbesReferenceToDisplay,
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
    required this.mesureType,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineTouchData: const LineTouchData(enabled: false),
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              interval: 0.01,
              showTitles: true,
              reservedSize: 48,
              getTitlesWidget: (value, titleMeta) {
                EnsCourbeReference? courbe;
                courbe = courbesReferenceToDisplay.firstWhereOrNull((element) {
                  final lastValue = element.points.last.value;
                  return value <= lastValue + 0.005 && value >= lastValue - 0.005;
                });
                if (courbe != null) {
                  return Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: mesureType == EnsMesureType.IMC ? 48 : 28,
                        color: EnsColors.light,
                        padding: EdgeInsets.zero,
                        child: Text(
                          courbe.category.label,
                          style: EnsTextStyle.text10_w700_tertiary.copyWith(color: courbe.category.color),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        maxX: maxX,
        minX: minX,
        minY: minY,
        maxY: maxY,
        lineBarsData: [],
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}

FlDotData _buildDots(bool shouldDisplayPlots, LineBarSpot? selectedPoint) => FlDotData(
      getDotPainter: (_, __, ___, int index) {
        if (!shouldDisplayPlots) {
          return FlDotCirclePainter(color: Colors.transparent, strokeColor: Colors.transparent, radius: 0);
        }
        if (selectedPoint != null && index == selectedPoint.spotIndex) {
          return FlDotCirclePainter(
            color: EnsColors.light,
            strokeColor: EnsColors.primary,
            strokeWidth: 4,
            radius: 4,
          );
        }
        return FlDotCirclePainter(
          color: EnsColors.light,
          strokeColor: EnsColors.primary,
          strokeWidth: 2,
          radius: 2,
        );
      },
    );

class _CarnetDeSanteTimeScaleSelector extends StatelessWidget {
  final List<CourbesReferencePeriode> availablePeriodsInCarnetdeSante;
  final CourbesReferencePeriode? periodToDisplay;
  final Function(CourbesReferencePeriode) updatePeriodToDisplay;
  final EnsMesureType mesureType;

  const _CarnetDeSanteTimeScaleSelector({
    required this.availablePeriodsInCarnetdeSante,
    required this.periodToDisplay,
    required this.updatePeriodToDisplay,
    required this.mesureType,
  });

  @override
  Widget build(BuildContext context) {
    final buttons = <Widget>[
      ...availablePeriodsInCarnetdeSante.map(
        (period) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: StoreConnector<EnsState, AnalyticsViewModel>(
            converter: (store) => AnalyticsViewModel(store),
            distinct: true,
            builder: (_, vm) => _CarnetDeSanteTimeScaleSelectorButton(
              period: period,
              periodToDisplay: periodToDisplay,
              updatePeriodToDisplay: updatePeriodToDisplay,
              tagOnClick: () => _tagCarnetDeSanteTimeScaleSelectorButtonClick(vm, mesureType, period),
            ),
          ),
        ),
      ),
      _TypeOfChartSettingsButton(mesureType),
    ];

    return Container(
      color: EnsColors.light,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ScrollviewWithScrollbar(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: buttons),
          ),
        ),
      ),
    );
  }

  void _tagCarnetDeSanteTimeScaleSelectorButtonClick(
    AnalyticsViewModel vm,
    EnsMesureType mesureType,
    CourbesReferencePeriode period,
  ) {
    if (mesureType == EnsMesureType.TAILLE || mesureType == EnsMesureType.POIDS) {
      String tagName;
      switch (period) {
        case CourbesReferencePeriode.ZERO_TROIS_ANS:
          tagName = 'button_visualiser_période_0a3ans_';
        case CourbesReferencePeriode.UN_DIX_HUIT_ANS:
          tagName = 'button_visualiser_période_1a18ans_';
        default:
          tagName = '';
      }
      tagName += mesureType.label.toLowerCase();
      vm.tagAction(
        EnsTag(
          name: tagName,
          category: EnsAnalyticsCategory.CLICK,
          level1: 'profil_medical',
          level2: 'mesures',
          level3: mesureType.tagHistoriqueLevel3,
        ),
      );
    }
  }
}

class _CarnetDeSanteTimeScaleSelectorButton extends StatelessWidget {
  final CourbesReferencePeriode period;
  final CourbesReferencePeriode? periodToDisplay;
  final Function(CourbesReferencePeriode) updatePeriodToDisplay;
  final Function() tagOnClick;

  const _CarnetDeSanteTimeScaleSelectorButton({
    required this.period,
    required this.periodToDisplay,
    required this.updatePeriodToDisplay,
    required this.tagOnClick,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: EnsInkWell(
        color: periodToDisplay == period ? EnsColors.neutral200 : EnsColors.light,
        onTap: () {
          tagOnClick();
          updatePeriodToDisplay(period);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            period.label,
            style: EnsTextStyle.text14_w700_normal_primary,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _TimeScaleSelector extends StatelessWidget {
  final MesureHistoryChartViewModel vm;
  final EnsMesureChartPeriode currentPeriod;
  final Function(String?)? onValuePressedCallback;
  final Function(LineBarSpot?, EnsMesureChartPeriode, bool, DateTime, DateTime) updateStateOnTap;

  const _TimeScaleSelector({
    required this.vm,
    required this.currentPeriod,
    required this.updateStateOnTap,
    this.onValuePressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    final buttons = [
      ...EnsMesureChartPeriode.values.map(
        (val) => _TimeScaleSelectorButton(
          vm: vm,
          periode: val,
          currentPeriod: currentPeriod,
          updateStateOnTap: updateStateOnTap,
          onValuePressedCallback: onValuePressedCallback,
        ),
      ),
      if (vm.mesureType.hasCourbesReference) _TypeOfChartSettingsButton(vm.mesureType),
    ];
    return ColoredBox(
      color: EnsColors.light,
      child: ScrollviewWithScrollbar(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width - 64),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: buttons),
        ),
      ),
    );
  }
}

class _TimeScaleSelectorButton extends StatelessWidget {
  final MesureHistoryChartViewModel vm;
  final EnsMesureChartPeriode periode;
  final EnsMesureChartPeriode currentPeriod;
  final Function(String?)? onValuePressedCallback;
  final Function(LineBarSpot?, EnsMesureChartPeriode, bool, DateTime, DateTime) updateStateOnTap;

  const _TimeScaleSelectorButton({
    required this.vm,
    required this.periode,
    required this.currentPeriod,
    this.onValuePressedCallback,
    required this.updateStateOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: EnsInkWell(
        color: periode == currentPeriod ? EnsColors.neutral200 : EnsColors.light,
        onTap: () => _handleTimeScaleSelectorButtonClicked(context, vm, periode),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            periode.label,
            style: EnsTextStyle.text14_w700_normal_primary,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  void _handleTimeScaleSelectorButtonClicked(
    BuildContext context,
    MesureHistoryChartViewModel vm,
    EnsMesureChartPeriode period,
  ) {
    onValuePressedCallback?.call(null);
    _tagPeriodeClick(context, vm, period);
    final now = DateTime.now();
    DateTime newEndDate = period != EnsMesureChartPeriode.TOUT
        ? DateTime(now.year, now.month, now.day, 23, 59)
        : vm.points.last.effectiveDate;
    DateTime newStartDate;
    switch (period) {
      case EnsMesureChartPeriode.MOIS:
        newStartDate = DateTime(newEndDate.year, newEndDate.month - 1, newEndDate.day);
      case EnsMesureChartPeriode.SEMESTRE:
        newStartDate = DateTime(newEndDate.year, newEndDate.month - 6, newEndDate.day);
      case EnsMesureChartPeriode.ANNEE:
        newStartDate = DateTime(newEndDate.year - 1, newEndDate.month, newEndDate.day);
      case EnsMesureChartPeriode.TOUT:
        newStartDate = vm.points.first.effectiveDate;
    }
    if (newStartDate == newEndDate) {
      newStartDate = newStartDate.subtract(const Duration(days: 1));
      newEndDate = newEndDate.add(const Duration(days: 1));
    }
    updateStateOnTap(null, period, true, newEndDate, newStartDate);
  }

  void _tagPeriodeClick(BuildContext context, MesureHistoryChartViewModel vm, EnsMesureChartPeriode periode) {
    String periodeTagLabel = 'button_periode_';
    String mesureTypeTagLabel = 'historique_';
    switch (periode) {
      case EnsMesureChartPeriode.MOIS:
        periodeTagLabel += 'mois';
      case EnsMesureChartPeriode.SEMESTRE:
        periodeTagLabel += 'semestre';
      case EnsMesureChartPeriode.ANNEE:
        periodeTagLabel += 'annee';
      case EnsMesureChartPeriode.TOUT:
        periodeTagLabel += 'tout';
    }
    switch (vm.mesureType) {
      case EnsMesureType.POIDS:
        mesureTypeTagLabel += 'poids';
      case EnsMesureType.TAILLE:
        mesureTypeTagLabel += 'taille';
      case EnsMesureType.IMC:
        mesureTypeTagLabel += 'IMC';
      case EnsMesureType.PERIMETRE_CRANIEN:
        mesureTypeTagLabel += 'perimetre_cranien';
      default:
    }
    context.tagAction(
      EnsTag(
        name: periodeTagLabel,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: mesureTypeTagLabel,
      ),
    );
  }
}

class _ReferenceChart extends StatelessWidget {
  final List<EnsCourbeReference> courbesReferenceToDisplay;
  final bool shouldDisplayChart;
  final double? minX;
  final double? maxX;
  final double minY;
  final double maxY;

  const _ReferenceChart({
    required this.courbesReferenceToDisplay,
    required this.shouldDisplayChart,
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        backgroundColor: Colors.transparent,
        showingTooltipIndicators: [],
        lineTouchData: const LineTouchData(enabled: false),
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        maxX: maxX,
        minX: minX,
        minY: minY,
        maxY: maxY,
        betweenBarsData: courbesReferenceToDisplay.any((courbeRef) => courbeRef.typeOfCurve == TypeOfCurve.PRINCIPALE)
            ? [
                BetweenBarsData(
                  fromIndex: _startIndexForBetweenBarData,
                  toIndex: _endIndexForBetweenBarData,
                  color: EnsColors.light,
                ),
              ]
            : [],
        lineBarsData: shouldDisplayChart
            ? courbesReferenceToDisplay
                .map(
                  (courbeRef) => LineChartBarData(
                    curveSmoothness: 0.1,
                    preventCurveOverShooting: true,
                    spots: courbeRef.points.map((point) => FlSpot(point.date.toDouble(), point.value)).toList(),
                    isCurved: true,
                    barWidth: courbeRef.typeOfCurve == TypeOfCurve.PRINCIPALE ? 2 : 1,
                    color: courbeRef.category.color,
                    dotData: _buildDots(false, null),
                    dashArray: _getDashArrayForSecondaryRefCurve(courbeRef.category),
                  ),
                )
                .toList()
            : [],
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  int get _startIndexForBetweenBarData => courbesReferenceToDisplay.indexWhere(
        (courbe) => [
          CourbeReferenceCategory.SDNEG2,
          CourbeReferenceCategory.BMI17,
          CourbeReferenceCategory.C3,
        ].contains(courbe.category),
      );

  int get _endIndexForBetweenBarData => courbesReferenceToDisplay.indexWhere(
        (courbe) => [
          CourbeReferenceCategory.SDPOS2,
          CourbeReferenceCategory.BMI25,
          CourbeReferenceCategory.C97,
        ].contains(courbe.category),
      );

  List<int>? _getDashArrayForSecondaryRefCurve(CourbeReferenceCategory type) {
    switch (type) {
      case CourbeReferenceCategory.SDPOS3:
      case CourbeReferenceCategory.SDNEG3:
      case CourbeReferenceCategory.BMI16:
      case CourbeReferenceCategory.BMI35:
      case CourbeReferenceCategory.C1:
      case CourbeReferenceCategory.C99:
        return [2, 2];
      case CourbeReferenceCategory.SDNEG1:
      case CourbeReferenceCategory.SDPOS1:
      case CourbeReferenceCategory.BMI18_5:
      case CourbeReferenceCategory.BMI30:
      case CourbeReferenceCategory.BMI23:
      case CourbeReferenceCategory.BMI27:
      case CourbeReferenceCategory.C10:
      case CourbeReferenceCategory.C25:
      case CourbeReferenceCategory.C75:
      case CourbeReferenceCategory.C90:
        return [4, 3];
      case CourbeReferenceCategory.SDMED:
      case CourbeReferenceCategory.SDPOS2:
      case CourbeReferenceCategory.SDNEG2:
      case CourbeReferenceCategory.BMI17:
      case CourbeReferenceCategory.BMI25:
      case CourbeReferenceCategory.C3:
      case CourbeReferenceCategory.C50:
      case CourbeReferenceCategory.C97:
      case CourbeReferenceCategory.UNKNOWN:
        return null;
    }
  }
}

class _PeriodSelector extends StatelessWidget {
  final bool availablePreviousPeriod;
  final bool availableNextPeriod;
  final String periodInfoText;
  final Function() handlePreviousPeriodButtonClick;
  final Function() handleNextPeriodButtonClick;

  const _PeriodSelector({
    required this.availablePreviousPeriod,
    required this.availableNextPeriod,
    required this.periodInfoText,
    required this.handlePreviousPeriodButtonClick,
    required this.handleNextPeriodButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: EnsColors.light,
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: availablePreviousPeriod,
            child: EnsCircleArrowButton(
              onTap: handlePreviousPeriodButtonClick,
              direction: ArrowDirection.LEFT,
              backgroundColor: EnsColors.primary,
            ),
          ),
          Expanded(
            child: Text(
              periodInfoText,
              style: EnsTextStyle.text14_w600_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: availableNextPeriod,
            child: EnsCircleArrowButton(
              onTap: handleNextPeriodButtonClick,
              direction: ArrowDirection.RIGHT,
              backgroundColor: EnsColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _TypeOfChartSettingsButton extends StatelessWidget {
  final EnsMesureType mesureType;

  const _TypeOfChartSettingsButton(this.mesureType);

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      borderRadius: BorderRadius.circular(24),
      onTap: () {
        Navigator.pushNamed(context, OptionsAffichageScreen.routeName, arguments: mesureType);
      },
      child: const Padding(
        padding: EdgeInsets.all(4),
        child: EnsSvg(EnsImages.ic_settings, color: EnsColors.primary),
      ),
    );
  }
}
