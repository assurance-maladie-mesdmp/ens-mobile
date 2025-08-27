/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

extension DisplayModelMapping on Rappel {
  RappelItemDisplayModel toDisplayModel(LocaleHelper localeHelper) => RappelItemDisplayModel(
        id: id,
        titre: title,
        jour: EnsDateUtils.formatDayPlainTextMonthAndYearWithHelper(date, localeHelper),
        heure: EnsDateUtils.formatHHmmWithHelper(date, localeHelper),
        date: date,
        commentaire: comment,
      );
}
