/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/data/agenda_repository.dart';
import 'package:fr_cnamts_ens/agenda/domain/agenda_domain_error.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande_extension.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/home/redux/home_examen_recommandes_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:intl/intl.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'agenda_actions.dart';
part 'agenda_middleware.dart';
part 'agenda_states.dart';
part 'examens_actions.dart';
part 'examens_middleware.dart';
part 'examens_reducer.dart';
part 'rappel_middleware.dart';
part 'rappels_actions.dart';
part 'rappels_reducer.dart';
part 'rendez_vous_actions.dart';
part 'rendez_vous_middleware.dart';
part 'rendez_vous_reducers.dart';
