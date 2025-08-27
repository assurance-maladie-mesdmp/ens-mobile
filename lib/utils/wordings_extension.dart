/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

extension WordingsExtension on String {
  String resolveWith({required bool isProfilPrincipal}) {
    return WordingsExtension._resolveReplace(isProfilPrincipal: isProfilPrincipal, input: this);
  }

  static String _resolveReplace({required bool isProfilPrincipal, required String input}) {
    if (isProfilPrincipal) {
      return input
          .replaceAll(' sa ', ' ma ')
          .replaceAll(' son ', ' mon ')
          .replaceAll(' ses ', ' mes ')
          .replaceAll('Sa ', 'Ma ')
          .replaceAll('Son ', 'Mon ')
          .replaceAll('Ses ', 'Mes ');
    } else {
      return input
          .replaceAll(' ma ', ' sa ')
          .replaceAll(' mon ', ' son ')
          .replaceAll(' mes ', ' ses ')
          .replaceAll(' vos ', ' ses ')
          .replaceAll(' votre ', ' sa ') //FIXME: la valeur par défaut est au féminin
          .replaceAll('Ma ', 'Sa ')
          .replaceAll('Mon ', 'Son ')
          .replaceAll('Mes ', 'Ses ');
    }
  }
}
