/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:dlibphonenumber/dlibphonenumber.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsTelephoneWithIndicatifInputValidator implements EnsValidator<String> {
  final RegExp _telephoneRegex = RegExp('^\\+?[0-9]+');
  final PhoneNumberUtil _phoneNumberUtil = PhoneNumberUtil.instance;
  static const emptyMessage = 'Ajouter un numéro de téléphone';
  static const badFormatMessage = 'Format invalide, vérifier le format du numéro';
  static const badNumberMessage = 'Saisir un numéro de téléphone valide.';

  final Indicatif indicatif;
  final bool isRequired;

  EnsTelephoneWithIndicatifInputValidator({required this.indicatif, required this.isRequired});

  @override
  String? validate(String? value) {
    if (value.isNullOrEmpty()) {
      return isRequired ? emptyMessage : null;
    }
    if (!_telephoneRegex.hasMatch(value!.replaceAll(' ', ''))) {
      return badFormatMessage;
    }

    if (value.startsWith('0')) {
      if (value.length != indicatif.maxLength) {
        return badFormatMessage;
      }
    } else {
      if (value.length != indicatif.maxLength - 1) {
        return badFormatMessage;
      }
    }

    if (acceptedPrefixForIndicatif[indicatif]!.any((pattern) => value.startsWith(pattern))) {
      final phoneNumber = _phoneNumberUtil.parse('${indicatif.label}$value', null);
      if (!_phoneNumberUtil.isValidNumber(phoneNumber)) {
        return badNumberMessage;
      }
      return null;
    } else {
      return badFormatMessage;
    }
  }
}
