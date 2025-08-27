/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class EnrolementSelectors {
  const EnrolementSelectors._();

  static bool isEnrolementAd(DateTime birthDate) {
    final age = DateTime.now().difference(birthDate).inDays ~/ 365;
    return age < 18;
  }
}
