/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsNumeroSecuInputTextValidator implements EnsValidator<String> {
  static const _NUMERO_SECU_LENGTH = 15;
  final _nirRegex = RegExp(r'^([12])\d{2}(0[1-9]|1[0-2])(2[AB]|[0-9]{2})\d{6}\d{2}$');

  final defaultNumeroSecuMessage = 'Format invalide, vérifier le format du numéro de sécurité sociale';
  final emptyNumeroSecuMessage = 'Saisir le numéro de sécurité sociale';
  final invalidNbOfCharacterNumeroSecuMessage =
      'Le numéro de sécurité sociale doit contenir $_NUMERO_SECU_LENGTH caractères';

  @override
  String? validate(String? value) {
    if (value.isNullOrTrimEmpty()) {
      return emptyNumeroSecuMessage;
    }

    if (value!.length != _NUMERO_SECU_LENGTH) {
      return invalidNbOfCharacterNumeroSecuMessage;
    }

    if (!_nirRegex.hasMatch(value) || !_isCleNumeroSecuValide(value)) {
      return defaultNumeroSecuMessage;
    }

    return null;
  }

  bool _isCleNumeroSecuValide(String numeroSecu) {
    int numeroSecuBaseNumber;
    int numeroSecuControlKey;

    final numeroSecuToCheck = numeroSecu.replaceFirst('2A', '19').replaceFirst('2B', '18');

    try {
      numeroSecuBaseNumber = int.parse(numeroSecuToCheck.substring(0, 13));
      numeroSecuControlKey = int.parse(numeroSecuToCheck.substring(13));
    } catch (e) {
      return false;
    }
    final expectedKey = 97 - (numeroSecuBaseNumber % 97);
    return numeroSecuControlKey == expectedKey;
  }
}
