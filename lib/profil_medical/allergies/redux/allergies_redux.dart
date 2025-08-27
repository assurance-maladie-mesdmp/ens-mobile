/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/allergies_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'allergies_actions.dart';
part 'allergies_middlewares.dart';
part 'allergies_reducers.dart';
part 'allergies_states.dart';
