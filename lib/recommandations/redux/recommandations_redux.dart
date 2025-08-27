/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/redux/prevention_redux.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'recommandations_actions.dart';
part 'recommandations_middlewares.dart';
part 'recommandations_reducers.dart';
part 'recommandations_states.dart';
