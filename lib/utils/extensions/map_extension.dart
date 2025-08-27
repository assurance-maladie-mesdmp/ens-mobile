/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

extension MapListExtension<K, V> on Map<K, List<V>> {
  Map<K, List<V>> concat(Map<K, List<V>> other) {
    other.forEach((key, value) {
      if (containsKey(key)) {
        this[key]!.addAll(value);
      } else {
        this[key] = value;
      }
    });
    return this;
  }
}
