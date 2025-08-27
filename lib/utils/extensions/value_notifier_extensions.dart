/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';

extension ValueNotifierExtension on ValueNotifier<EnsDate?> {
  bool isNull() {
    return value == null || (value!.day == null && value!.month == null && value!.year == null);
  }
}
