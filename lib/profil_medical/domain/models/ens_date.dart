/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsDate extends Equatable {
  final String? day;
  final String? month;
  final String? year;

  const EnsDate({this.day, this.month, this.year});

  EnsDate.fromDateTime(DateTime dateTime)
      : day = dateTime.day < 10 ? '0${dateTime.day}' : dateTime.day.toString(),
        month = dateTime.month < 10 ? '0${dateTime.month}' : dateTime.month.toString(),
        year = dateTime.year.toString();

  @override
  List<Object?> get props => [day, month, year];

  DateTime? toDateTime() {
    if (day == null || month == null || year == null) {
      return null;
    }
    final int startDay = int.tryParse(day!) ?? 1;
    final int startMonth = int.tryParse(month!) ?? 1;
    final int startYear = int.tryParse(year!) ?? 1;
    return DateTime(startYear, startMonth, startDay);
  }

  DateTime? toDateTimeYear() {
    if (year == null) {
      return null;
    }
    final int startDay = int.tryParse(day ?? '') ?? 1;
    final int startMonth = int.tryParse(month ?? '') ?? 1;
    final int startYear = int.tryParse(year!) ?? 1;
    return DateTime(startYear, startMonth, startDay);
  }

  int compareTo(EnsDate date) {
    if (year == null || date.year == null) {
      return 0;
    }
    final startDate = toDateTimeYear();
    final endDate = date.toDateTimeYear();
    if (startDate == null || endDate == null) {
      return 0;
    }
    return startDate.compareTo(endDate);
  }

  bool isRealDay() {
    if (year == null || month == null || day == null) {
      return false;
    }
    final intDay = int.parse(day!);
    final intMonth = int.parse(month!);
    final intYear = int.parse(year!);
    final dateTime = DateTime(intYear, intMonth, intDay);
    return dateTime.day == intDay && dateTime.month == intMonth && dateTime.year == intYear;
  }
}
