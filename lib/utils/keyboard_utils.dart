/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

class KeyboardUtils {
  static TextInputType getQuestionKeyboardType({
    required List<TextInputConstraints> constraints,
    bool isMultiline = false,
  }) {
    if (constraints.any((constraint) => constraint.rangeMin != null || constraint.rangeMax != null)) {
      return TextInputType.number;
    } else if (constraints
        .any((constraint) => constraint.regexp != null && !RegExp(constraint.regexp!).hasMatch('a'))) {
      return const TextInputType.numberWithOptions(decimal: true);
    } else if (isMultiline) {
      return TextInputType.multiline;
    } else {
      return TextInputType.text;
    }
  }
}
