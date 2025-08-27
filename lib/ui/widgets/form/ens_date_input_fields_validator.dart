/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/bool_extensions.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

enum EnsDateValidityStatus {
  VALID,
  MISSING_YEAR,
  INCOMPLETE_YEAR,
  INCORRECT_YEAR,
  INCOMPLETE_MONTH,
  INCORRECT_MONTH,
  INCOMPLETE_DAY,
  INCORRECT_DAY,
  MISSING_MONTH,
  LATER_DATE,
  UNREAL_DAY,
}

class EnsDateInputFieldsValidator implements EnsValidator<EnsDate> {
  static final _regexpYear = RegExp('^19\\d{2}|2\\d{3}\$');
  static final _regexpMonth = RegExp('^(?:0[1-9]|1[0-2]|[1-9]{1})\$');
  static final _regexpDay = RegExp('^(?:0[1-9]|1\\d|2\\d|3[0-1]|[1-9]{1})\$');

  static EnsDateValidityStatus? _getYearValidityStatus(String? yearStr) {
    if (yearStr == null) {
      return EnsDateValidityStatus.MISSING_YEAR;
    }
    if (yearStr.length < 4) {
      return EnsDateValidityStatus.INCOMPLETE_YEAR;
    }
    if (yearStr.isNotNumeric() || (int.parse(yearStr) < 1900)) {
      return EnsDateValidityStatus.INCORRECT_YEAR;
    }
    if (_regexpYear.hasMatch(yearStr).not) {
      return EnsDateValidityStatus.INCORRECT_YEAR;
    }
    return null;
  }

  static EnsDateValidityStatus? _getMonthValidityStatus(DateTime reference, String? monthStr, String yearStr) {
    if (monthStr.isNullOrEmpty().not) {
      if (monthStr!.length < 2) {
        return EnsDateValidityStatus.INCOMPLETE_MONTH;
      }
      if (monthStr.isNotNumeric() || int.parse(monthStr) < 1 || int.parse(monthStr) > 12) {
        return EnsDateValidityStatus.INCORRECT_MONTH;
      }
      if (DateTime(int.parse(yearStr), int.parse(monthStr)).isAfter(reference)) {
        return EnsDateValidityStatus.LATER_DATE;
      }
      if (_regexpMonth.hasMatch(monthStr).not) {
        return EnsDateValidityStatus.INCORRECT_MONTH;
      }
    }
    return null;
  }

  static EnsDateValidityStatus? _getDayValidityStatus(DateTime reference, String? dayStr) {
    if (dayStr.isNullOrEmpty().not) {
      if (dayStr!.length < 2) {
        return EnsDateValidityStatus.INCOMPLETE_DAY;
      }
      if (dayStr.isNotNumeric() || int.parse(dayStr) < 1 || int.parse(dayStr) > 31) {
        return EnsDateValidityStatus.INCORRECT_DAY;
      }
      if (_regexpDay.hasMatch(dayStr).not) {
        return EnsDateValidityStatus.INCORRECT_DAY;
      }
    }
    return null;
  }

  static EnsDateValidityStatus determineValidityStatus(EnsDate date) {
    final now = DateTime.now().toLocal();

    var tmpResult = _getYearValidityStatus(date.year);
    if (tmpResult != null) {
      return tmpResult;
    }

    tmpResult = _getMonthValidityStatus(now, date.month, date.year!);
    if (tmpResult != null) {
      return tmpResult;
    }

    tmpResult = _getDayValidityStatus(now, date.day);
    if (tmpResult != null) {
      return tmpResult;
    }

    if (date.day.isNullOrEmpty().not && date.month.isNullOrEmpty()) {
      return EnsDateValidityStatus.MISSING_MONTH;
    }
    if (date.day.isNullOrEmpty().not && date.month.isNullOrEmpty().not) {
      if (date.toDateTime()!.isAfter(now)) {
        return EnsDateValidityStatus.LATER_DATE;
      }
    }
    if (date.year != null && date.month != null && date.day != null && date.isRealDay().not) {
      return EnsDateValidityStatus.UNREAL_DAY;
    }
    return EnsDateValidityStatus.VALID;
  }

  static EnsDateValidityStatus determineYearValidityStatus(EnsDate date) {
    if (date.year == null) {
      return EnsDateValidityStatus.MISSING_YEAR;
    }
    if (date.year!.length < 4) {
      return EnsDateValidityStatus.INCOMPLETE_YEAR;
    }
    if (date.year!.isNotNumeric() ||
        (int.parse(date.year!) < 1900 || int.parse(date.year!) > clock.now().toLocal().year)) {
      return EnsDateValidityStatus.INCORRECT_YEAR;
    }
    if (_regexpYear.hasMatch(date.year!).not) {
      return EnsDateValidityStatus.INCORRECT_YEAR;
    }
    return EnsDateValidityStatus.VALID;
  }

  @override
  String? validate(EnsDate? value, {DateTime? anteriorDate, String? anteriorDateErrorText}) {
    if (value != null) {
      switch (determineValidityStatus(value)) {
        case EnsDateValidityStatus.MISSING_YEAR:
          return 'Saisir une année';
        case EnsDateValidityStatus.INCOMPLETE_YEAR:
          return 'Saisir une année valide';
        case EnsDateValidityStatus.INCORRECT_YEAR:
          return 'Saisir une année entre ${EnsDateUtils.minimalInputDate.year} et ${DateTime.now().year}';
        case EnsDateValidityStatus.INCOMPLETE_MONTH:
          return 'Saisir un mois';
        case EnsDateValidityStatus.INCORRECT_MONTH:
          return 'Saisir un mois entre 01 et 12';
        case EnsDateValidityStatus.INCOMPLETE_DAY:
          return 'Saisir un jour entre 01 et 31';
        case EnsDateValidityStatus.INCORRECT_DAY:
          return 'Saisir un jour valide';
        case EnsDateValidityStatus.MISSING_MONTH:
          return 'Saisir un mois';
        case EnsDateValidityStatus.LATER_DATE:
          return 'Saisir une date antérieure à la date du jour';
        case EnsDateValidityStatus.UNREAL_DAY:
          return 'Saisir un jour calendaire';
        case EnsDateValidityStatus.VALID:
          final month = value.month != null ? int.parse(value.month!) : 1;
          final day = value.day != null ? int.parse(value.day!) : 1;
          final dateTime = DateTime(int.parse(value.year!), month, day);
          if (anteriorDate != null) {
            if (anteriorDate.isAfter(dateTime)) {
              return anteriorDateErrorText ?? 'Saisir une date de début antérieure à la date de fin';
            }
          }
          return null;
      }
    } else {
      return 'Saisir une année';
    }
  }
}
