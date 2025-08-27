/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/guestmode/widgets/bottom_sheet_guest_mode.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';

class GuestModeHelper {
  static void showUnavailableSnackbarIfGuestMode({
    required BuildContext context,
    required VoidCallback onAuthenticatedMode,
  }) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      StoreProvider.of<EnsState>(context).dispatch(const DisplaySnackbarAction.unavailableInGuestMode());
    } else {
      onAuthenticatedMode();
    }
  }

  static void showGuestModeBottomSheetWithConnexionIfGuestMode({
    required BuildContext context,
    required VoidCallback onAuthenticatedMode,
    bool shouldUseCallbackOnGuestMode = false,
  }) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      displayGuestModeBottomSheetWithConnexion(
        context,
        onTapPositiveButton: shouldUseCallbackOnGuestMode ? onAuthenticatedMode : null,
      );
    } else {
      onAuthenticatedMode();
    }
  }

  static void showGuestModeBottomSheetIfGuestModeOrUseCallback({
    required BuildContext context,
    required VoidCallback onAuthenticatedMode,
  }) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      displayGuestModeBottomSheet(context);
    } else {
      onAuthenticatedMode();
    }
  }
}
