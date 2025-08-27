/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:core';

import 'package:intl/intl.dart';

class AjoutAdHelper {
  static String getAdProfilAddedText(int adsActivatedLength) {
    return Intl.plural(
      adsActivatedLength,
      one: 'Le profil suivant a bien été ajouté',
      other: 'Les profils suivants ont bien été ajoutés',
    );
  }

  static String getAdProfilNotAddedText(int adsNotActivatedLength) {
    return Intl.plural(
      adsNotActivatedLength,
      one: 'Le profil suivant n’a pas été ajouté',
      other: 'Les profils suivants n’ont pas été ajoutés',
    );
  }

  static String getClickToConsultText(int adsActivatedLength) {
    return Intl.plural(
      adsActivatedLength,
      one: 'Cliquez sur le profil ci-dessous pour le consulter.',
      other: 'Cliquez sur un profil ci-dessous pour le consulter.',
    );
  }

  static String getErrorText(int adsNotActivatedLength) {
    return Intl.plural(
      adsNotActivatedLength,
      other:
          'En raison d’une erreur technique, les profils suivants n’ont pas été ajoutés. Veuillez réessayer ultérieurement.',
      one: 'En raison d’une erreur technique, le profil suivant n’a pas été ajouté. Veuillez réessayer ultérieurement.',
    );
  }
}
