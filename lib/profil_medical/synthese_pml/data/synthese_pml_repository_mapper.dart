/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_synthese_pml.query.data.gql.dart';

class SynthesePmlRepositoryMapper {
  static EnsFileContent toEnsFileContent(Gget_synthese_pmlData_getMedicalSynthesisPDF exportToPdfModel) {
    return EnsFileContent(
      filename: exportToPdfModel.name,
      base64Content: exportToPdfModel.binary.trim(),
      mimeType: exportToPdfModel.mimeType,
    );
  }
}
