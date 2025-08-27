/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';

class InterruptionServiceHelper {
  static void showSnackbarOnInterruption(
    BuildContext context, {
    InterruptionServiceConnexionMode connexionMode = InterruptionServiceConnexionMode.CONNECTE,
    required String? interruptionServiceSnackbarMessage,
    required void Function() onNotInterrompu,
  }) {
    if (interruptionServiceSnackbarMessage != null) {
      switch (connexionMode) {
        case InterruptionServiceConnexionMode.CONNECTE:
          StoreProvider.of<EnsState>(context).dispatch(DisplaySnackbarAction.error(interruptionServiceSnackbarMessage));
        case InterruptionServiceConnexionMode.NON_CONNECTE:
          StoreProvider.of<EnsInitialState>(context)
              .dispatch(DisplaySnackbarAction.error(interruptionServiceSnackbarMessage));
      }
    } else {
      onNotInterrompu.call();
    }
  }
}

enum InterruptionServiceConnexionMode { CONNECTE, NON_CONNECTE }
