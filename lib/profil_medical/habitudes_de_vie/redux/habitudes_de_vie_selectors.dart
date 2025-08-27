/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';

class HabitudesDeVieSelectors {
  const HabitudesDeVieSelectors._();

  static HabitudeDeVieCategoryCode? getCategoryCodeFromItemId(EnsState state, String itemId) {
    final habitudeDeVieAnswer = state.habitudesDeVieState.habitudesDeVieAnswersState.answers;
    HabitudeDeVieCategoryCode? code;
    habitudeDeVieAnswer.forEach((key, value) {
      if (value.any((item) => item.id == itemId)) {
        code = key;
      }
    });
    return code;
  }
}
