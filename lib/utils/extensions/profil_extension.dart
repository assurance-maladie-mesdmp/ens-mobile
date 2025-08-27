/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class ProfilExtensionUtils {
  static String _getMainFirstName(String? firstName) {
    return firstName?.trim().capitalizeName().split(' ').first ?? '';
  }

  static String _getUserDisplayableName(String? firstName, String? lastName) {
    final formattedFirstName = _getMainFirstName(firstName);
    final formattedLastName = lastName?.capitalizeName() ?? '';
    return '$formattedFirstName $formattedLastName'.trim();
  }
}

extension ProfilExtension on EnsProfil? {
  String get nomComplet => ProfilExtensionUtils._getUserDisplayableName(this?.prenom, this?.nom);

  String get mainFirstName => ProfilExtensionUtils._getMainFirstName(this?.prenom);
}

extension ProfilRattacheExtension on EnsProfilRattache {
  String get nomComplet => ProfilExtensionUtils._getUserDisplayableName(firstName, lastName);
}

extension UserDataExtension on UserData {
  String get nomComplet => ProfilExtensionUtils._getUserDisplayableName(firstName, lastName);
}
