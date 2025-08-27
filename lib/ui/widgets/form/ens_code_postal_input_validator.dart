/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';

class EnsCodePostalInputValidator implements EnsValidator<String> {
  static const emptyFieldMessage = 'Saisir le code postal';
  static const invalidFormat = 'Le code postal doit contenir $exactCharCount caractères';
  static const defaultErrorMessage = 'Cette saisie contient un caractère non autorisé';
  static const exactCharCount = 5;

  final regex = RegExp(r'^\d{5}$');

  @override
  String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return emptyFieldMessage;
    }

    if (value.length != exactCharCount) {
      return invalidFormat;
    }

    if (!regex.hasMatch(value)) {
      return defaultErrorMessage;
    }
    return null;
  }
}
