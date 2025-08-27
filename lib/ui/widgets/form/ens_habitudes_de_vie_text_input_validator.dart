/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

class EnsHabitudesDeVieTextInputValidator {
  String? validate(String? value, List<TextInputConstraints> constraints) {
    if (value != null && value.isNotEmpty) {
      for (final constraint in constraints) {
        final exp = RegExp(constraint.regexp ?? '');
        if (!exp.hasMatch(value)) {
          return constraint.errorMessage;
        }
        if (constraint.rangeMin != null && constraint.rangeMax != null) {
          if (double.parse(value) < constraint.rangeMin! || double.parse(value) > constraint.rangeMax!) {
            return constraint.errorMessage;
          }
        }
      }
    }
    return null;
  }
}
