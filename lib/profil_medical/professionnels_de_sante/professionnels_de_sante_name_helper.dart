/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class ProfessionnelsDeSanteInformationHelper {
  static String capitalizeFirstLetter(String input) {
    if (input.isEmpty) {
      return input;
    }

    final String firstLetter = input[0].toUpperCase();
    final String remaining = input.length > 1 ? input.substring(1).toLowerCase() : '';
    return firstLetter + remaining;
  }

  static String capitalizeAsNames(String input) {
    if (input.isEmpty) {
      return input;
    }

    final List<String> words = input.split(' ');

    final List<String> capitalizedWords = words.map((word) {
      final List<String> hyphenatedParts = word.split('-');
      final List<String> capitalizedParts = hyphenatedParts.map((part) {
        return capitalizeFirstLetter(part);
      }).toList();
      return capitalizedParts.join('-');
    }).toList();

    return capitalizedWords.join(' ');
  }
}
