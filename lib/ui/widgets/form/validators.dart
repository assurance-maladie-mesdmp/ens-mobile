/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

const _SPECIAL_CHARACTERS_TO_AVOID = '[<>"«»=()+\'‘`.,;:&?!\[\\]{}|/%@~^§¤²µ\\\\]';
const _SPECIAL_CHARACTERS_ERROR_WORDING = 'Les caractères spéciaux (ex :  < > " . \' ; = etc) ne sont pas autorisés.';

String? requiredLimitedTextFieldValidator(
  String? value, {
  int maxCharacters = 100,
  String nullErrorMessage = 'Ce champ est obligatoire',
}) {
  if (value.isNullOrTrimEmpty()) {
    return nullErrorMessage;
  } else {
    return limitCharactersFieldValidator(
      value: value,
      maxCharacters: maxCharacters,
      errorMessage: 'le champ est limité à $maxCharacters caractères',
    );
  }
}

String? textFieldValidator({
  String? value,
  String fieldLabel = 'le nom',
  int maxLength = 50,
  bool isSpecialCharAllowed = false,
  bool isRequired = true,
}) {
  if (isRequired && (value.isNullOrTrimEmpty())) {
    return 'Saisir ${fieldLabel.toLowerCase()}';
  } else if (!isRequired && (value.isNullOrTrimEmpty())) {
    return null;
  } else if (maxLength != -1 && value!.length > maxLength) {
    return '$fieldLabel est limité à $maxLength caractères'.capitalize();
  } else if (!isSpecialCharAllowed && value!.contains(RegExp(_SPECIAL_CHARACTERS_TO_AVOID))) {
    return _SPECIAL_CHARACTERS_ERROR_WORDING;
  }
  return null;
}

String? requiredFolderNameTextFieldValidator(
  String? value, [
  int maxLength = 50,
  List<String> alreadyExistingDossierNames = const [],
]) {
  if (value == null || value.isEmpty) {
    return 'Saisir le nom du dossier';
  } else if (maxLength != -1 && value.length > maxLength) {
    return 'Le nom du dossier est limité à $maxLength caractères';
  } else if (alreadyExistingDossierNames.contains(value.toLowerCase())) {
    return USE_OTHER_DOSSIER_NAME_ERROR;
  } else if (value.contains(RegExp(_SPECIAL_CHARACTERS_TO_AVOID))) {
    return _SPECIAL_CHARACTERS_ERROR_WORDING;
  }
  return null;
}

String? requiredFirstNameTextFieldValidator(
  String? value, {
  int maxLength = 50,
  String nullErrorMessage = 'Ajouter un prénom',
}) {
  if (value == null || value.isEmpty) {
    return nullErrorMessage;
  } else if (maxLength != -1 && value.length > maxLength) {
    return 'Nom limité à $maxLength caractères';
  }
  return null;
}

String? limitCharactersFieldValidator({String? value, required int maxCharacters, required String errorMessage}) {
  if (value != null && value.length > maxCharacters) {
    return errorMessage;
  }
  return null;
}

String? requiredFieldValidator<T>(T? value, {String errorText = 'Compléter le champ'}) {
  if (value == null || (value is String && value.isEmpty)) {
    return errorText;
  }
  return null;
}

String? requiredFieldValidatorWithoutMessage<T>(T? value) {
  if (value == null || (value is String && value.isEmpty)) {
    return '';
  }
  return null;
}

String? isPasswordValidValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Ajouter un mot de passe';
  } else if (passwordRequirement9CharactersValidator(value) != null ||
      passwordRequirementSpecialCharacterValidator(value) != null ||
      passwordRequirementDigitValidator(value) != null ||
      passwordRequirementUpperCaseValidator(value) != null ||
      passwordRequirementLowerCaseValidator(value) != null) {
    return '';
  }
  return null;
}

String? isConfirmPasswordEqualValidator(String? confirmationPassword, String? password) {
  if (confirmationPassword == null || confirmationPassword.isEmpty) {
    return 'Ajouter un mot de passe';
  } else if (confirmationPassword != password) {
    return 'Le nouveau mot de passe et la confirmation doivent être identiques.';
  }
  return null;
}

String? passwordRequirement9CharactersValidator(String? value) {
  if (value != null && value.length < 9) {
    return '';
  }
  return null;
}

String? passwordRequirementSpecialCharacterValidator(String? value) {
  final specialCharacterRegExp = RegExp(r"""[&~"#('\-_`{[|`^@)=}+%*$£¨!§/:;.?,éèêëàâä]""");
  if (value == null || !value.contains(specialCharacterRegExp)) {
    return '';
  }
  return null;
}

String? passwordRequirementDigitValidator(String? value) {
  final digitRegExp = RegExp('\\d');
  if (value == null || !value.contains(digitRegExp)) {
    return '';
  }
  return null;
}

String? passwordRequirementUpperCaseValidator(String? value) {
  final upperCaseCharacterRegExp = RegExp('[A-Z]');
  if (value == null || !value.contains(upperCaseCharacterRegExp)) {
    return '';
  }
  return null;
}

String? passwordRequirementLowerCaseValidator(String? value) {
  final lowerCaseCharacterRegExp = RegExp('[a-z]');
  if (value == null || !value.contains(lowerCaseCharacterRegExp)) {
    return '';
  }
  return null;
}

String? mesureMetricInputValidator(String? value, List<EnsMesureConstraint> metricConstraints) {
  if (value == null) {
    return '';
  }
  for (final constraint in metricConstraints) {
    if (!constraint.validate(value)) {
      return constraint.message;
    }
  }
  return null;
}

String? bloodPressureSpecificMetricInputValidator({String? systolicValue, String? diastolicValue}) {
  if (systolicValue == null || diastolicValue == null) {
    return '';
  }
  if (systolicValue != '' && diastolicValue != '' && double.parse(systolicValue) <= double.parse(diastolicValue)) {
    return 'Saisir une valeur de tension artérielle systolique strictement supérieure à la tension artérielle diastolique';
  }
  return null;
}

String? noHtmlTagsValidator(String? value) {
  final RegExp regexp = RegExp('<[^0-9 ]');
  if (value != null && regexp.hasMatch(value)) {
    return 'La saisie de balises HTML n\'est pas autorisée.';
  }
  return null;
}

String? noMoreCharactersEnteredFieldValidator(String? value, String? errorText) {
  if (value == null || value.isEmpty) {
    return errorText;
  }
  return null;
}

void scanNumeroSerieValidator(
  TypeCarteVitale typeCarteVitale,
  String numeroSerie,
  String numeroSecuriteSociale,
  void Function(String) onValidate,
) {
  final regexNumeroSerie = typeCarteVitale.isAvecPhoto() ? RegExp(r'8025000002(\d{11})') : RegExp(r'\d{8,13}');
  final matchNumeroSerie = regexNumeroSerie.firstMatch(numeroSerie);
  if (matchNumeroSerie != null) {
    final numeroSerieAValider = typeCarteVitale.isAvecPhoto() ? matchNumeroSerie.group(1)! : matchNumeroSerie.group(0)!;

    final validate = numeroSerieValidatorConstraints(numeroSerieAValider, numeroSecuriteSociale, typeCarteVitale);
    if (validate == null) {
      onValidate(numeroSerieAValider);
    }
  }
}

String? numeroSerieValidatorConstraints(String? value, String? numeroSecuriteSociale, TypeCarteVitale typeCarteVitale) {
  final digitRegExp = RegExp(r'^[0-9]+$');
  final regexDateFormat = RegExp(r'^(0[1-9]|[12][0-9]|3[01])(0[1-9]|1[0-2])(19|20)\d{2}$');
  const numeroTechniqueRegimeSecu = '80250000025';

  if (value.isNullOrTrimEmpty()) {
    return 'Saisir le numéro de série';
  }
  if (!digitRegExp.hasMatch(value!)) {
    return 'Saisir uniquement des chiffres';
  }
  if (typeCarteVitale.isAvecPhoto() && value.length != 11) {
    return 'Format invalide, le numéro de série doit contenir 11 chiffres';
  }
  if (typeCarteVitale.isSansPhoto() && (value.length < 8 || value.length > 13)) {
    return 'Format invalide, le numéro de série doit contenir entre 8 et 13 chiffres';
  }
  if (regexDateFormat.firstMatch(value) != null) {
    return 'Format invalide, le numéro de série ne doit pas être une date';
  }
  if (numeroSecuriteSociale != null && numeroSecuriteSociale.contains(value)) {
    return 'Format invalide, le numéro de série ne doit pas être identique au numéro de sécurité sociale';
  }
  if (numeroTechniqueRegimeSecu.contains(value)) {
    return 'Format invalide, le numéro de série ne doit pas être le numéro technique du régime de sécurité sociale';
  }
  return null;
}
