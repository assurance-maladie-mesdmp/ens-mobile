/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/enrolement/domain/disponibilite_identifiant.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsIdentifiantInputValidator implements EnsValidator<String> {
  static const alreadyUsedIdentifiantWithSuggestionsMessage =
      'Cet identifiant est déjà utilisé. Saisir un autre identifiant ou choisir l’une des suggestions suivantes :';
  static const alreadyUsedIdentifiantMessage = 'Cet identifiant est déjà utilisé. Saisir un autre identifiant.';
  static const emptyIdentifiantMessage = 'Ajouter un identifiant';
  static const invalidSizeMessage = 'L\'identifiant doit contenir entre 8 et 100 caractères. Modifier l\'identifiant.';
  static const numeroSecuFormatMessage =
      'L\'identifiant doit être différent du numéro de sécurité sociale. Saisir un autre identifiant.';
  static const ibanFormatMessage = 'L\'identifiant ne peut pas être un IBAN. Saisir un autre identifiant.';
  static const invalidCharacterMessage =
      'Seul les chiffres, les minuscules et les caractères .-_ sont acceptés. Modifier l\'identifiant.';

  final _caracteresAutorisesRegex = RegExp(r'^[\da-z_\-.]+$');
  final _ibanRegex = RegExp(r'^fr76\d{10,28}$');

  final String? numeroSecu;
  final DisponibiliteIdentifiant disponibiliteIdentifiant;

  EnsIdentifiantInputValidator({this.numeroSecu, required this.disponibiliteIdentifiant});

  @override
  String? validate(String? value) {
    if (value.isNullOrTrimEmpty()) {
      return emptyIdentifiantMessage;
    } else if (hasCaracteresInterdits(value!)) {
      return invalidCharacterMessage;
    } else if (value.length < 8 || value.length > 100) {
      return invalidSizeMessage;
    } else if (numeroSecu != null && value == numeroSecu) {
      return numeroSecuFormatMessage;
    } else if (_ibanRegex.hasMatch(value)) {
      return ibanFormatMessage;
    } else if (disponibiliteIdentifiant.suggestions.isNotEmpty) {
      return alreadyUsedIdentifiantWithSuggestionsMessage;
    } else if (disponibiliteIdentifiant.isDisponible == false) {
      return alreadyUsedIdentifiantMessage;
    }
    return null;
  }

  bool hasCaracteresInterdits(String value) => !_caracteresAutorisesRegex.hasMatch(value);
}
