/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messages_pannes/data/messages_pannes_repository.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

part 'messages_pannes_actions.dart';
part 'messages_pannes_middlewares.dart';
part 'messages_pannes_reducers.dart';
part 'messages_pannes_states.dart';
