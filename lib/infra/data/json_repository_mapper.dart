/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

List<T> fromJsonList<T>(dynamic json, {required T Function(Map<String, dynamic> item) mapper}) {
  if (json is List<dynamic>) {
    return json.map((item) {
      if (item is Map<String, dynamic>) {
        return mapper(item);
      }
      throw const FormatException();
    }).toList();
  }
  throw const FormatException();
}

T fromJsonObject<T>(dynamic json, {required T Function(Map<String, dynamic> item) mapper}) {
  if (json is Map<String, dynamic>) {
    return mapper(json);
  }
  throw const FormatException();
}
