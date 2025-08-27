/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/data/antecedents_familiaux_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'antecedents_familiaux_actions.dart';
part 'antecedents_familiaux_middlewares.dart';
part 'antecedents_familiaux_reducers.dart';
part 'antecedents_familiaux_states.dart';
