/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:ens_plugin/file_bridge.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/documents/data/documents_repository.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_domain_error.dart';
import 'package:fr_cnamts_ens/documents/domain/documents_interactor.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_item_sorting_method.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/redux/dossiers_selectors.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge_wrapper.dart';
import 'package:fr_cnamts_ens/files/data/file_storage.dart';
import 'package:fr_cnamts_ens/files/data/pdf_generator.dart';
import 'package:fr_cnamts_ens/files/domain/file_preprocessor.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_multi_page_result.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/files/redux/files_states.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/secure_storage/data/secure_storage_repository.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/delay_helper.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:intl/intl.dart';
import 'package:optional/optional.dart';
import 'package:optional/optional_internal.dart';
import 'package:redux/redux.dart';
import 'package:share_plus/share_plus.dart';

part 'documents_actions.dart';
part 'documents_middlewares.dart';
part 'documents_reducers.dart';
part 'documents_states.dart';
part 'dossier_status.dart';
