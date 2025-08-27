/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_actions.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class NotificationReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessDecryptedAction>(NotificationReducers._onProcessDecryptedAction).call,
      ];

  static EnsState _onProcessDecryptedAction(EnsState state, ProcessDecryptedAction action) {
    return state.clone(
      notificationState: NotificationState(
        status: AllPurposesStatus.SUCCESS,
        decryptedPatientId: action.decryptedPatientId,
      ),
    );
  }
}
