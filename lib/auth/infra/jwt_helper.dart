/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:jwt_decoder/jwt_decoder.dart';

/*
    Ce fichier à été modifié pour des raisons de sécurité.
*/

class JwtHelper {
  static String extractIdNatFromIdEns(String accessToken) {
    try {
      final accessTokenDecoded = JwtDecoder.decode(accessToken);
      final idEns = accessTokenDecoded['***'] as String?;
      if (idEns != null) {
        return idEns;
      } else {
        final idNat = accessTokenDecoded['***'] as String;
        return idNat.split('***').first;
      }
    } catch (e) {
      return '';
    }
  }

  static String extractUsername(String idToken) {
    try {
      return JwtDecoder.decode(idToken)['***'] as String;
    } catch (e) {
      return '';
    }
  }
}
