/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

extension StringExtension on String {
  String capitalize() {
    return length == 0 ? '' : '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String get titleCase => split(' ').map((e) => e.toLowerCase()).map((word) {
        if (word.isNotEmpty) {
          return word[0].toUpperCase() + word.substring(1);
        }
        return word;
      }).join(' ');

  String capitalizeName() {
    final cap = trim().capitalize();
    final tiretCap = cap.contains('-') ? cap.split('-').map((s) => s.capitalizeName()).join('-') : cap;
    final spaceCap = tiretCap.contains(' ') ? tiretCap.split(' ').map((s) => s.capitalizeName()).join(' ') : tiretCap;
    return spaceCap;
  }

  List<int> indexesOf(String pattern, [int start = 0]) {
    final List<int> indexes = [];
    int currentIndex = start;
    while (currentIndex >= 0 && currentIndex < length) {
      currentIndex = indexOf(pattern, currentIndex);
      if (currentIndex != -1) {
        indexes.add(currentIndex);
        currentIndex += pattern.length;
      }
    }
    return indexes;
  }

  bool isInteger() {
    try {
      int.parse(this);
      return true;
    } catch (e) {
      return false;
    }
  }

  bool isNotNumeric() {
    try {
      double.parse(this);
      return false;
    } catch (e) {
      return true;
    }
  }

  int compareToIgnoringCase(String secondString) => toLowerCase().compareTo(secondString.toLowerCase());

  String formatIns() {
    if (length == 15) {
      return '${substring(0, 1)} ${substring(1, 3)} ${substring(3, 5)} ${substring(5, 7)} ${substring(7, 10)} ${substring(10, 13)} ${substring(13, 15)}';
    }
    return '';
  }

  String formatPhoneNumber() {
    if (substring(0, 2) == '00') {
      return '+${substring(2)}';
    }
    return this;
  }

  String replaceAllDiacritics() {
    return replaceAllMapped(
      RegExp('[À-ž]'),
      (m) => diacriticsMapping[m.group(0)] ?? '',
    );
  }

  String replaceAllDiacriticsWithSameSize() {
    return replaceAllMapped(
      RegExp('[À-ž]'),
      (m) {
        final letter = m.group(0);
        final matchingLetter = diacriticsMapping[letter];
        if (matchingLetter != null && matchingLetter.length == 1) {
          return matchingLetter;
        } else {
          return letter ?? '';
        }
      },
    );
  }

  static const diacriticsMapping = {
    'À': 'A',
    'Á': 'A',
    'Â': 'A',
    'Ã': 'A',
    'Ä': 'A',
    'Å': 'A',
    'Æ': 'AE',
    'Ç': 'C',
    'È': 'E',
    'É': 'E',
    'Ê': 'E',
    'Ë': 'E',
    'Ì': 'I',
    'Í': 'I',
    'Î': 'I',
    'Ï': 'I',
    'Ð': 'D',
    'Ñ': 'N',
    'Ò': 'O',
    'Ó': 'O',
    'Ô': 'O',
    'Õ': 'O',
    'Ö': 'O',
    'Ø': 'O',
    'Ù': 'U',
    'Ú': 'U',
    'Û': 'U',
    'Ü': 'U',
    'Ý': 'Y',
    'Þ': 'TH',
    'ß': 'SS',
    'à': 'a',
    'á': 'a',
    'â': 'a',
    'ã': 'a',
    'ä': 'a',
    'å': 'a',
    'æ': 'ae',
    'ç': 'c',
    'è': 'e',
    'é': 'e',
    'ê': 'e',
    'ë': 'e',
    'ì': 'i',
    'í': 'i',
    'î': 'i',
    'ï': 'i',
    'ð': 'd',
    'ñ': 'n',
    'ò': 'o',
    'ó': 'o',
    'ô': 'o',
    'õ': 'o',
    'ö': 'o',
    'ø': 'o',
    'ù': 'u',
    'ú': 'u',
    'û': 'u',
    'ü': 'u',
    'ý': 'y',
    'þ': 'th',
    'ÿ': 'y',
    'Ā': 'A',
    'ā': 'a',
    'Ă': 'A',
    'ă': 'a',
    'Ą': 'A',
    'ą': 'a',
    'Ć': 'C',
    'ć': 'c',
    'Ĉ': 'C',
    'ĉ': 'c',
    'Ċ': 'C',
    'ċ': 'c',
    'Č': 'C',
    'č': 'c',
    'Ď': 'D',
    'ď': 'd',
    'Đ': 'D',
    'đ': 'd',
    'Ē': 'E',
    'ē': 'e',
    'Ĕ': 'E',
    'ĕ': 'e',
    'Ė': 'E',
    'ė': 'e',
    'Ę': 'E',
    'ę': 'e',
    'Ě': 'E',
    'ě': 'e',
    'Ĝ': 'G',
    'ĝ': 'g',
    'Ğ': 'G',
    'ğ': 'g',
    'Ġ': 'G',
    'ġ': 'g',
    'Ģ': 'G',
    'ģ': 'g',
    'Ĥ': 'H',
    'ĥ': 'h',
    'Ħ': 'H',
    'ħ': 'h',
    'Ĩ': 'I',
    'ĩ': 'i',
    'Ī': 'I',
    'ī': 'i',
    'Ĭ': 'I',
    'ĭ': 'i',
    'Į': 'I',
    'į': 'i',
    'İ': 'I',
    'ı': 'i',
    'Ĳ': 'IJ',
    'ĳ': 'ij',
    'Ĵ': 'J',
    'ĵ': 'j',
    'Ķ': 'K',
    'ķ': 'k',
    'ĸ': 'k',
    'Ĺ': 'L',
    'ĺ': 'l',
    'Ļ': 'L',
    'ļ': 'l',
    'Ľ': 'L',
    'ľ': 'l',
    'Ŀ': 'L',
    'ŀ': 'l',
    'Ł': 'L',
    'ł': 'l',
    'Ń': 'N',
    'ń': 'n',
    'Ņ': 'N',
    'ņ': 'n',
    'Ň': 'N',
    'ň': 'n',
    'ŉ': 'n',
    'Ŋ': 'N',
    'ŋ': 'n',
    'Ō': 'O',
    'ō': 'o',
    'Ŏ': 'O',
    'ŏ': 'o',
    'Ő': 'O',
    'ő': 'o',
    'Œ': 'OE',
    'œ': 'oe',
    'Ŕ': 'R',
    'ŕ': 'r',
    'Ŗ': 'R',
    'ŗ': 'r',
    'Ř': 'R',
    'ř': 'r',
    'Ś': 'S',
    'ś': 's',
    'Ŝ': 'S',
    'ŝ': 's',
    'Ş': 'S',
    'ş': 's',
    'Š': 'S',
    'š': 's',
    'Ţ': 'T',
    'ţ': 't',
    'Ť': 'T',
    'ť': 't',
    'Ŧ': 'T',
    'ŧ': 't',
    'Ũ': 'U',
    'ũ': 'u',
    'Ū': 'U',
    'ū': 'u',
    'Ŭ': 'U',
    'ŭ': 'u',
    'Ů': 'U',
    'ů': 'u',
    'Ű': 'U',
    'ű': 'u',
    'Ų': 'U',
    'ų': 'u',
    'Ŵ': 'W',
    'ŵ': 'w',
    'Ŷ': 'Y',
    'ŷ': 'y',
    'Ÿ': 'Y',
    'Ź': 'Z',
    'ź': 'z',
    'Ż': 'Z',
    'ż': 'z',
    'Ž': 'Z',
    'ž': 'z',
  };

  String truncate(int maxCharacterNumber) {
    final List<String> words = split(' ');
    final StringBuffer name = StringBuffer();

    do {
      name.clear();
      words.removeLast();
      name.write(words.join(' '));
    } while (name.length > maxCharacterNumber && words.isNotEmpty);

    return _removeTrailingComma(name);
  }

  String _removeTrailingComma(StringBuffer name) {
    final nameToDisplay = name.toString();
    if (nameToDisplay.endsWith(',')) {
      name.clear();
      name.write(nameToDisplay.substring(0, nameToDisplay.length - 1));
    }
    return name.toString();
  }

  String addUnderscoreToTag() {
    return toLowerCase().replaceAll(' ', '_').replaceAll('-', '_').replaceAllDiacritics();
  }

  String cleanForComparison() {
    return replaceAllDiacritics().toLowerCase();
  }
}

extension StringNullableExtension on String? {
  bool isNullOrTrimEmpty() {
    return this == null || this!.trim().isEmpty;
  }

  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}
