/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/data/historique_activites_repository.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/mes_activites_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnel_de_sante_traces_by_id.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnels_de_sante_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/services_synchronises_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'historique_activites_actions.dart';
part 'historique_activites_middlewares.dart';
part 'historique_activites_reducers.dart';
part 'historique_activites_states.dart';
