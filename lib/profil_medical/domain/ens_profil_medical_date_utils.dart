/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:intl/intl.dart';

class EnsProfilMedicalDateUtils {
  static String formatTimeInterval(EnsDate startDate, EnsDate? endDate) {
    final StringBuffer date = StringBuffer('');
    if (endDate?.year == null) {
      date.write('Depuis ');
      if (startDate.day != null) {
        date.write('le ${startDate.day} ');
      }
      if (startDate.month != null) {
        date.write('${toPlainTextMonth(startDate.month!)} ');
      }
      date.write(startDate.year);
    } else {
      if (startDate.day != null) {
        date.write('Du ${startDate.day} ${toPlainTextMonth(startDate.month!)} ${startDate.year} ');
      } else if (startDate.month != null) {
        if (startDate.month == '04') {
          date.write('D\'${toPlainTextMonth(startDate.month!)} ${startDate.year} ');
        } else {
          date.write('De ${toPlainTextMonth(startDate.month!)} ${startDate.year} ');
        }
      } else {
        date.write('De ${startDate.year} ');
      }
      if (endDate?.day != null) {
        date.write('au ${endDate!.day} ${toPlainTextMonth(endDate.month!)} ${endDate.year}');
      } else if (endDate?.month != null) {
        date.write('à ${toPlainTextMonth(endDate!.month!)} ${endDate.year}');
      } else {
        date.write('à ${endDate?.year}');
      }
    }
    return date.toString();
  }

  static String getEpisodeSanteTimeInterval(MonHistoireDeSanteEpisodeMaladie episode) {
    final startDateArray = episode.startDate.split('-');
    final EnsDate startDate = EnsDate(
      day: episode.hasOnlyMonthAndYearInStartDate || episode.hasOnlyYearInStartDate ? null : startDateArray[2],
      month: episode.hasOnlyYearInStartDate ? null : startDateArray[1],
      year: startDateArray[0],
    );
    EnsDate? endDate;
    if (episode.endDate != null) {
      final endDateArray = episode.endDate!.split('-');
      endDate = EnsDate(
        day: episode.hasOnlyMonthAndYearInEndDate || episode.hasOnlyYearInEndDate ? null : endDateArray[2],
        month: episode.hasOnlyYearInEndDate ? null : endDateArray[1],
        year: endDateArray[0],
      );
    }
    return EnsProfilMedicalDateUtils.formatTimeInterval(startDate, endDate);
  }

  static String formatTimeAndDurationForAdmission(EnsDate startDate, EnsHospitalisationDuration? duration) {
    if (duration?.unit == EnsHospitalisationDurationUnit.UNKNOWN) {
      return 'Durée d\'hospitalisation inconnue';
    }
    final StringBuffer date = StringBuffer('Admission ');
    if (startDate.day != null) {
      date.write('le ${startDate.day}/${startDate.month}/${startDate.year}');
    } else {
      date.write('en ');
      if (startDate.month != null) {
        date.write('${toPlainTextMonth(startDate.month!)} ');
      }
      date.write(startDate.year);
    }
    if (duration != null && duration.duration != null && duration.duration != 0) {
      date.write(
        ' \u2022 ${formatDuration(duration)}',
      );
    }
    return date.toString();
  }

  static String formatDateWithPlainTextMonth(EnsDate? date) {
    String formattedDate = '';
    if (date != null) {
      if (date.day != null) {
        formattedDate += '${date.day!} ';
      }
      if (date.month != null) {
        formattedDate += '${toPlainTextMonth(date.month!)} ';
      }
      if (date.year != null) {
        formattedDate += date.year!;
      }
    }
    return formattedDate;
  }

  static String formatDuration(EnsHospitalisationDuration duration) {
    if (duration.duration == null || duration.unit == null) {
      return '';
    }
    return '${duration.duration!.toStringAsFixed(0)} ${Intl.plural(duration.duration!, one: duration.unit!.singularLabel, other: duration.unit!.pluralLabel)}';
  }

  static String toPlainTextMonth(String number) {
    return _monthNumberToText[number]!;
  }

  static final Map<String, String> _monthNumberToText = {
    '01': 'janvier',
    '02': 'février',
    '03': 'mars',
    '04': 'avril',
    '05': 'mai',
    '06': 'juin',
    '07': 'juillet',
    '08': 'août',
    '09': 'septembre',
    '10': 'octobre',
    '11': 'novembre',
    '12': 'décembre',
  };
}
