/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

abstract class IRandomGenerator {
  String generateRandomString(int length);
}

class RandomGenerator implements IRandomGenerator {
  @override
  String generateRandomString(int length) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(length, (index) => characters[random.nextInt(characters.length)]).join();
  }
}
