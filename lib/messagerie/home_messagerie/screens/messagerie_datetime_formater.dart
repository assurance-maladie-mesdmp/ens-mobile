/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:intl/intl.dart';

class MessagerieDateTimeFormatter {
  final LocaleHelper localeHelper;

  MessagerieDateTimeFormatter(this.localeHelper);

  String formatForMessagerie(DateTime date) {
    final now = localeHelper.toLocal(clock.now());
    final localDate = localeHelper.toLocal(date);

    if (isSameDay(now, date)) {
      return DateFormat('HH:mm', EnsDateUtils.frenchLocale).format(localDate);
    }
    if (isSameDay(now.subtract(const Duration(days: 1)), date)) {
      return 'Hier ${DateFormat('HH:mm', EnsDateUtils.frenchLocale).format(localDate)}';
    }
    if (date.year == now.year) {
      return DateFormat('dd MMM', EnsDateUtils.frenchLocale).format(localDate);
    }
    return DateFormat('dd/MM/yy', EnsDateUtils.frenchLocale).format(localDate);
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }
}

class LocaleHelper {
  const LocaleHelper();

  DateTime toLocal(DateTime date) {
    return date.toLocal();
  }

  DateTime toUtc(DateTime date) {
    return date.toUtc();
  }
}
