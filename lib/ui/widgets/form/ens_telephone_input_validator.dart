/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsTelephoneInputValidator implements EnsValidator<String> {
  final _telephoneRegex = RegExp('^\\+?[0-9]+');
  static const emptyMessage = 'Saisir un numéro de téléphone';
  static const badFormatMessage =
      'Saisir un numéro de téléphone au bon format (seul les chiffres et le caractère \"+\" sont acceptés';

  final bool isRequired;

  EnsTelephoneInputValidator({required this.isRequired});

  @override
  String? validate(String? value) {
    if (value.isNullOrEmpty()) {
      return isRequired ? emptyMessage : null;
    }
    if (!_telephoneRegex.hasMatch(value!)) {
      return badFormatMessage;
    }
    return null;
  }
}
