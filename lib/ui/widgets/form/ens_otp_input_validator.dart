/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsOtpInputValidator implements EnsValidator<String> {
  static const OTP_LENGTH = 6;

  final _otpRegex = RegExp(r'^\d{6}$');
  final emptyOtpMessage = 'Saisir un code à usage unique';
  final formatInvalideMessage = 'Saisir un code valide';
  final otpInvalideMessage = 'Vérifier le code à usage unique et réessayer';

  @override
  String? validate(String? value) {
    if (value.isNullOrTrimEmpty()) {
      return emptyOtpMessage;
    }
    if (!_otpRegex.hasMatch(value!)) {
      return formatInvalideMessage;
    }
    return null;
  }
}
