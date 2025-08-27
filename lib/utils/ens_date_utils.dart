/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

// ignore_for_file: non_constant_identifier_names

import 'package:date_format/date_format.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:intl/intl.dart';

class EnsDateUtils {
  static final _YYYYMMDDHHmmssSSS = [yyyy, '-', mm, '-', dd, 'T', HH, ':', nn, ':', ss, '.', SSS];
  static final _HHmm = [HH, ':', nn];
  static final _YYYYMMDD = [yyyy, '-', mm, '-', dd];
  static final _DMYYYY = [d, ' ', M, ' ', yyyy];
  static final _ddmmyyyy = [dd, '/', mm, '/', yyyy];
  static final _ddmmyyyyHHmm = [dd, '/', mm, '/', yyyy, ' ', HH, ':', nn];
  static final _ddmmyyyyHHmmss = [dd, '/', mm, '/', yyyy, ' ', HH, ':', nn, ':', ss];
  static final _dMMMMyyyy = [d, ' ', MM, ' ', yyyy];

  static final _gmtFormat = DateFormat('EEE, d MMM yyyy HH:mm:ss');

  static const frenchLocale = 'fr_FR';

  static final minimalInputDate = DateTime(1900);
  static final maximalInputDate = DateTime(5000);

  static String formatdMMMMyyyy(DateTime dateTime) {
    return formatDate(dateTime.toLocal(), _dMMMMyyyy, locale: const FrenchDateLocale());
  }

  static String formatYYYYMMDD(DateTime dateTime) {
    return formatDate(dateTime, _YYYYMMDD);
  }

  static String formatYYYYMMDDHHmmssSSS(DateTime dateTime) {
    return '${formatDate(dateTime, _YYYYMMDDHHmmssSSS)}+02:00';
  }

  static String formatHHmm(DateTime dateTime) {
    return formatDate(dateTime.toLocal(), _HHmm, locale: const FrenchDateLocale());
  }

  static String formatHHmmWithHelper(DateTime dateTime, LocaleHelper localeHelper) {
    return formatDate(localeHelper.toLocal(dateTime), _HHmm, locale: const FrenchDateLocale());
  }

  static String formatddmmyyyy(DateTime dateTime) {
    return formatDate(dateTime, _ddmmyyyy);
  }

  static String formatddmmyyyyHHmm(DateTime dateTime) {
    return formatDate(dateTime, _ddmmyyyyHHmm);
  }

  static String formatddmmyyyyHHmmss(DateTime dateTime) {
    return formatDate(dateTime, _ddmmyyyyHHmmss);
  }

  static String formatdMyyyy(DateTime dateTime) {
    return formatDate(dateTime, _DMYYYY);
  }

  static String formatFullDateWithTime(DateTime dateTime) {
    return '${formatDayPlainTextMonthAndYear(dateTime)} • ${formatHHmm(dateTime)}';
  }

  static String formatFullDateWithTimeA11y(DateTime dateTime) {
    return '${formatSimpleDayPlainTextMonthAndYear(dateTime)} ${_formatHourAndMinuteForA11y(dateTime)}';
  }

  static String _formatHourAndMinuteForA11y(DateTime dateTime) {
    final heures = DateFormat('HH', frenchLocale).format(dateTime.toLocal());
    final minute = DateFormat('m', frenchLocale).format(dateTime.toLocal());
    return 'à $heures heures${dateTime.minute == 0 ? '' : ' $minute'}';
  }

  static String formatDDMMYYYYFromYYYYMMDD(String date) {
    final temp = date.split('-');
    if (temp.length == 3) {
      return '${temp[2]}/${temp[1]}/${temp[0]}';
    } else {
      return '';
    }
  }

  static DateTime parseDateTimeWithFallback(String dateStr, DateTime defaultDate) {
    try {
      return _gmtFormat.parse(dateStr);
    } catch (e) {
      try {
        return DateTime.parse(dateStr);
      } catch (e) {
        return defaultDate;
      }
    }
  }

  static String formatDayAndPlainTextMonth(DateTime dateTime) =>
      DateFormat('dd MMMM', frenchLocale).format(dateTime.toLocal());

  static String formatDayPlainTextMonthAndYear(DateTime dateTime) =>
      DateFormat('dd MMMM y', frenchLocale).format(dateTime.toLocal());

  static String formatSimpleDayPlainTextMonthAndYear(DateTime dateTime) =>
      DateFormat('d MMMM y', frenchLocale).format(dateTime.toLocal());

  static String formatDayPlainTextMonthAndYearWithHelper(DateTime dateTime, LocaleHelper localehelper) =>
      DateFormat('dd MMMM y', frenchLocale).format(localehelper.toLocal(dateTime));

  static String formatPlainDayPlainTextMonthAndYearWithHelper(DateTime dateTime, LocaleHelper localehelper) =>
      DateFormat('EEEE dd MMMM y', frenchLocale).format(localehelper.toLocal(dateTime));

  static String formatPlainDayPlainTextMonthAndYear(DateTime dateTime) =>
      DateFormat('EEEE dd MMMM y', frenchLocale).format(dateTime.toLocal());

  static String formatPlainTextMonthAndYear(DateTime dateTime) =>
      DateFormat('MMMM y', frenchLocale).format(dateTime.toLocal());

  static String formatPlainTextMonth(DateTime dateTime) => DateFormat('MMMM', frenchLocale).format(dateTime.toLocal());

  static String formatddmmyyyyNullable(DateTime? dateTime) {
    if (dateTime != null) {
      return formatDate(dateTime, _ddmmyyyy);
    }
    return '';
  }

  static String formatInterval(DateTime? start, DateTime? end) {
    if (start != null) {
      if (end != null) {
        return 'Du ${formatddmmyyyy(start)} au ${formatddmmyyyy(end)}';
      } else {
        return 'Depuis le ${formatddmmyyyy(start)}';
      }
    } else {
      if (end != null) {
        return 'Jusqu\'au ${formatddmmyyyy(end)}';
      } else {
        return '';
      }
    }
  }

  static int compareToNullable(DateTime? date1, DateTime? date2) {
    if (date1 == null) {
      if (date2 == null) {
        return 0;
      }
      return 1;
    }
    if (date2 == null) {
      return -1;
    }
    return date1.compareTo(date2);
  }

  static int getNumberOfDaysBetween(DateTime from, DateTime to) {
    final dayFrom = DateTime(from.year, from.month, from.day);
    final dayTo = DateTime(to.year, to.month, to.day);
    return (dayTo.difference(dayFrom).inHours / 24).round();
  }
}
