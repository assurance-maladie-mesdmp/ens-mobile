/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';

extension ExamenRecommandeExtension on ExamenRecommande {
  String toChipLabel() {
    if (status == ExamenStatus.NON_REALISE && startDate.isBefore(clock.now()) && endDate.isAfter(clock.now())) {
      return 'Non réalisé ce jour';
    } else {
      return toLabel();
    }
  }

  String toLabel() {
    return status.label;
  }

  Color toStatusBackgroundColor() {
    return status.color;
  }
}

extension ExamenIdExtension on String {
  String toLabel() {
    return contains('DEPISTAGE') ? 'Dépistage' : 'Examen médical';
  }
}
