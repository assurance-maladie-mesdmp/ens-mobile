/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsMesureChartPoint extends Equatable {
  final String id;
  final double x;
  final double y;
  final String tooltipFormattedValue;
  final String tooltipFormattedDate;
  final DateTime effectiveDate;

  const EnsMesureChartPoint({
    required this.id,
    required this.x,
    required this.y,
    required this.tooltipFormattedValue,
    required this.tooltipFormattedDate,
    required this.effectiveDate,
  });

  EnsMesureChartPoint clone({
    double? x,
    double? y,
    String? tooltipFormattedValue,
    String? tooltipFormattedDate,
    DateTime? effectiveDate,
  }) =>
      EnsMesureChartPoint(
        id: id,
        x: x ?? this.x,
        y: y ?? this.y,
        tooltipFormattedValue: tooltipFormattedValue ?? this.tooltipFormattedValue,
        tooltipFormattedDate: tooltipFormattedDate ?? this.tooltipFormattedDate,
        effectiveDate: effectiveDate ?? this.effectiveDate,
      );

  @override
  List<Object?> get props => [id, x, y, tooltipFormattedValue, tooltipFormattedDate, effectiveDate];
}
