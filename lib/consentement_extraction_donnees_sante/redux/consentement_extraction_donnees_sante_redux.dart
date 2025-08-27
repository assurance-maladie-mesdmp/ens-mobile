/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/data/consentement_extraction_donnees_sante_repository.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'consentement_extraction_donnees_sante_actions.dart';
part 'consentement_extraction_donnees_sante_middlewares.dart';
part 'consentement_extraction_donnees_sante_reducers.dart';
part 'consentement_extraction_donnees_sante_states.dart';
