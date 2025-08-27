/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';

class EnsHospitalisationDurationInputValidator implements EnsValidator<String> {
  final _duration = RegExp(r'^\d+$');
  static const int invalidDuration = -1;
  static const maxCharacters = 3;
  static const maxCharactersMessage = 'Champ limité à $maxCharacters caractères';
  static const badFormatMessage = 'Saisir une durée de séjour valide';

  @override
  String? validate(String? value) {
    if (value == null) {
      return null;
    } else if (value.length > maxCharacters) {
      return maxCharactersMessage;
    } else if (!_duration.hasMatch(value)) {
      return badFormatMessage;
    }
    return null;
  }
}
