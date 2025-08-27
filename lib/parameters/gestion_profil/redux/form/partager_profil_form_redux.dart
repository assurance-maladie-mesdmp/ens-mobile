/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_repository.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_form_status.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_second_gestionnaire_data.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'partager_profil_form_actions.dart';
part 'partager_profil_form_middlewares.dart';
part 'partager_profil_form_reducers.dart';
part 'partager_profil_form_state.dart';
