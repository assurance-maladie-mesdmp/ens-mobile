/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/data/nous_contacter_repository.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support_details.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

part 'nous_contacter_actions.dart';
part 'nous_contacter_middlewares.dart';
part 'nous_contacter_reducers.dart';
part 'nous_contacter_state.dart';
