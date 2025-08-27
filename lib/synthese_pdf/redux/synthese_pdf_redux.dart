/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:clock/clock.dart';
import 'package:ens_plugin/file_bridge.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/files/data/file_storage.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/data/synthese_pml_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/viewModels/synthese_document_view_model_helper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/data/synthese_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/delay_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'synthese_pdf_actions.dart';
part 'synthese_pdf_middlewares.dart';
part 'synthese_pdf_reducers.dart';
part 'synthese_pdf_states.dart';
