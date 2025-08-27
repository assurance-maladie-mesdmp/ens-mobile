/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';

class DocumentConfidentialityHelper {
  static KindOfConfidentiality getKindOfConfidentiality(List<KindOfConfidentiality>? confidentialites) {
    if (confidentialites != null) {
      if (confidentialites.contains(KindOfConfidentiality.PATIENT_ONLY)) {
        return KindOfConfidentiality.PATIENT_ONLY;
      } else if (confidentialites.contains(KindOfConfidentiality.PATIENT_AND_PS)) {
        return KindOfConfidentiality.PATIENT_AND_PS;
      }
    }
    return KindOfConfidentiality.UNKNOWN;
  }
}
