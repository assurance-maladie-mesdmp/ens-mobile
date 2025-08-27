/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsEmailInputValidator implements EnsValidator<String> {
  final _emailRegex = RegExp(r'^[a-zA-Z0-9._\-ÀàÂâÄäÉéÈèÊêËëÏïÎîÔôÖöùÛûÜüŸÿÇçÆæŒœ]+@[a-zA-Z0-9.-]+\.[a-zAA-Z]{2,}$');
  static const emptyMessage = 'Saisir une adresse e-mail';
  static const badFormatMessage = 'Saisir une adresse e-mail valide';

  final bool isRequired;

  EnsEmailInputValidator({required this.isRequired});

  @override
  String? validate(String? value) {
    if (value.isNullOrEmpty()) {
      return isRequired ? emptyMessage : null;
    }
    if (!_emailRegex.hasMatch(value!)) {
      return badFormatMessage;
    }
    return null;
  }
}
