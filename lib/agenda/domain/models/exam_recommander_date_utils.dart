/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';

class ExamRecommanderDateUtils {
  static bool hasExamPeriodeStartedOrIsStartingThisYear(DateTime examStartDate, DateTime examEndDate) {
    final now = clock.now().toLocal();
    final startOfTheNextYear = DateTime(now.year + 1, 1, 1);
    final isInActivePeriodeForExam = now.isBetweenStartAndEndDate(examStartDate, examEndDate);
    final isExamStartingInTheRestOfYear = examStartDate.isBetweenNowAndDate(startOfTheNextYear);

    return isInActivePeriodeForExam || isExamStartingInTheRestOfYear;
  }
}
