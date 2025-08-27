/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';

class SignalementHelper {
  static void showSnackbarOnLimitExceeded(
    BuildContext context, {
    required bool isLimitExceeded,
    required void Function() onLimitNotExceeded,
  }) {
    if (isLimitExceeded) {
      StoreProvider.of<EnsState>(context).dispatch(
        const DisplaySnackbarAction.error('Vous avez dépassé le nombre de demandes autorisées'),
      );
    } else {
      onLimitNotExceeded.call();
    }
  }
}
