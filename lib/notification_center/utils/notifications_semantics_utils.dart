/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

String semanticsLecteurDateOuHeure(String elapseTime) {
  return elapseTime.contains('/')
      ? 'Reçus le ${elapseTime.replaceAll(':', 'heures').replaceAll('h', ' heures').replaceAll('min', ' minutes')}'
      : 'Reçus il y a ${elapseTime.replaceAll(':', 'heures').replaceAll('h', ' heures').replaceAll('min', ' minutes')}';
}
