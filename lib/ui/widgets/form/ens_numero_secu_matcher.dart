/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text_validator.dart';

void numeroSecuMatcher(
  String value,
  void Function(String) onValidate,
) {
  final regexNumeroSecuriteSociale = RegExp(r'([12][0-9]([AB])?\d{11}\d{2})');
  final matchNumeroSecuriteSociale = regexNumeroSecuriteSociale.firstMatch(value);
  if (matchNumeroSecuriteSociale != null) {
    final numeroSecuriteSocialeAValider = matchNumeroSecuriteSociale.group(0)!;
    final validate = EnsNumeroSecuInputTextValidator().validate(numeroSecuriteSocialeAValider);
    if (validate == null) {
      onValidate(numeroSecuriteSocialeAValider);
    }
  }
}
