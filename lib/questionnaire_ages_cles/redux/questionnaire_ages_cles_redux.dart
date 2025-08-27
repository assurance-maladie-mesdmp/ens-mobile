/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/question.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/questionnaire.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/questionnaire_age_cle_code.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/user_answers.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_selectors.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'questionnaire_ages_cles_actions.dart';
part 'questionnaire_ages_cles_middlewares.dart';
part 'questionnaire_ages_cles_reducers.dart';
part 'questionnaire_ages_cles_states.dart';
