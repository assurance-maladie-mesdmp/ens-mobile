/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:collection';

class CodePostaux extends ListBase<String> {
  List<String> list = [];

  CodePostaux(this.list);

  @override
  int get length => list.length;

  @override
  set length(int newLength) => list.length = newLength;

  @override
  String operator [](int index) => list[index];

  @override
  void operator []=(int index, String value) => list[index] = value;

  String firstOrEmpty() {
    if (list.isEmpty) {
      return '';
    } else {
      return list.first;
    }
  }
}
