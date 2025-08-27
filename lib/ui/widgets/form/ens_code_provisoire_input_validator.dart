/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsCodeProvisoireInputValidator implements EnsValidator<String> {
  static const CODE_PROVISOIRE_LENGTH = 12;

  final _codeProvisoireRegex = RegExp(r'^[\dA-Za-z]{12}$');
  final defaultMessage = 'Cette saisie contient un caractère non autorisé';
  final lengthInvalideMessage = 'Le code doit contenir 12 caractères';

  @override
  String? validate(String? value) {
    if (value.isNullOrTrimEmpty() || value!.length != CODE_PROVISOIRE_LENGTH) {
      return lengthInvalideMessage;
    }
    if (!_codeProvisoireRegex.hasMatch(value)) {
      return defaultMessage;
    }
    return null;
  }
}
