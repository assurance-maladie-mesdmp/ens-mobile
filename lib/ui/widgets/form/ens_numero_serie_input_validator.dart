/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsNumeroSerieInputValidator implements EnsValidator<String> {
  static const NUMERO_SERIE_SANS_PHOTO_MIN_LENGTH = 8;
  static const NUMERO_SERIE_SANS_PHOTO_MAX_LENGTH = 13;
  static const NUMERO_SERIE_AVEC_PHOTO_LENGTH = 11;
  final _digitRegExp = RegExp(r'^[0-9]+$');
  final _numeroSerieSansPhotoRegex = RegExp(r'^\d{8,13}$');
  final _numeroSerieAvecPhotoRegex = RegExp(r'^\d{11}$');

  final defaultNumeroSerieMessage = 'Format invalide';
  final emptyNumeroSerieMessage = 'Saisir le numéro de série';
  final caracteresInvalidesMessage = 'Saisir uniquement des chiffres';
  final lengthAvecPhotoInvalideMessage = 'Format invalide, le numéro de série doit contenir 11 chiffres';
  final lengthSansPhotoInvalideMessage = 'Format invalide, le numéro de série doit contenir entre 8 et 13 chiffres';

  final TypeCarteVitale _typeCarteVitale;

  EnsNumeroSerieInputValidator(this._typeCarteVitale);

  @override
  String? validate(String? value) {
    if (value.isNullOrTrimEmpty()) {
      return emptyNumeroSerieMessage;
    }
    if (!_digitRegExp.hasMatch(value!)) {
      return caracteresInvalidesMessage;
    }
    if (_typeCarteVitale.isAvecPhoto()) {
      return _validateAvecPhoto(value);
    }
    if (_typeCarteVitale.isSansPhoto()) {
      return _validateSansPhoto(value);
    }
    return null;
  }

  String? _validateAvecPhoto(String value) {
    if (value.length != 11) {
      return lengthAvecPhotoInvalideMessage;
    }
    if (!_numeroSerieAvecPhotoRegex.hasMatch(value)) {
      return defaultNumeroSerieMessage;
    }

    return null;
  }

  String? _validateSansPhoto(String value) {
    if (value.length < 8 || value.length > 13) {
      return lengthSansPhotoInvalideMessage;
    }
    if (!_numeroSerieSansPhotoRegex.hasMatch(value)) {
      return defaultNumeroSerieMessage;
    }
    return null;
  }
}
