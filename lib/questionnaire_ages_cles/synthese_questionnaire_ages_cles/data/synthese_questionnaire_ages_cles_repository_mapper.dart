/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_synthese_questionnaire.query.data.gql.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/domain/models/synthese_questionnaire.dart';

extension SyntheseQuestionnaireAgesClesRepositoryMapper on Gget_questionnaire_syntheseData_getHealthQuizPDF {
  SyntheseQuestionnaire toSyntheseQuestionnaire() {
    final date = DateTime.parse(lastUpdateUserDate);
    final dateUTC = DateTime.utc(date.year, date.month, date.day, date.hour, date.minute, date.second);
    return SyntheseQuestionnaire(
      synthese: EnsFileContent(
        filename: name,
        base64Content: binary.trim(),
        mimeType: mimeType,
        updateDate: dateUTC,
      ),
      responseId: responseId,
    );
  }
}
