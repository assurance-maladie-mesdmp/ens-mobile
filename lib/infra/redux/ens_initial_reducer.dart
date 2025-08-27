/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/redux/initial_auth_reducers.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_reducers.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_initial_reducers.dart';
import 'package:redux/redux.dart';

final ensInitialReducer = combineReducers<EnsInitialState>([
  ...InitialAuthReducers.createAuthReducers(),
  ...InitialPrivacyReducers.createPrivacyReducers(),
  ...MessagesPannesReducers.createOffline(),
  ...ReceiveSharingReducers.create(),
  ...EnrolementReducers.create(),
  ...SnackbarInitialReducers.create(),
  ...DeveloppeurOutilsReducers.create(),
  ...InterruptionServicesReducer.createOffLine(),
]);
