/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toShortMonth() => DateFormat('LLL', EnsDateUtils.frenchLocale).format(this).capitalize();

  String toExpliciteMonth() => DateFormat('LLLL', EnsDateUtils.frenchLocale).format(this).capitalize();

  String toExpliciteDateWithYear() =>
      DateFormat('EEEE d LLLL yyyy', EnsDateUtils.frenchLocale).format(this).capitalize();

  String toExpliciteDateWithoutWeekDay() => DateFormat('dd MMMM yyyy', EnsDateUtils.frenchLocale).format(this);

  String toHour() => '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  EnsDate toEnsDate() =>
      EnsDate(day: day.toString().padLeft(2, '0'), month: month.toString().padLeft(2, '0'), year: year.toString());

  DateTime addYear(int numberOfYeartoAdd) {
    return DateTime(year + numberOfYeartoAdd, month, day, hour, minute, second, microsecond, microsecond);
  }

  bool isToday() {
    final now = clock.now().toLocal();
    return year == now.year && month == now.month && day == now.day;
  }

  bool isBetweenNowAndDate(DateTime futureDate) {
    final now = clock.now().toLocal();
    return isAfter(now) && isBefore(futureDate);
  }

  bool isBetweenStartAndEndDate(DateTime startDate, DateTime endDate) {
    return isAfter(startDate) && isBefore(endDate);
  }

  bool isThisYear() {
    final now = clock.now().toLocal();
    return year == now.year;
  }
}
