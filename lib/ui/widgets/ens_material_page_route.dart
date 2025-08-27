/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_container.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_initial_container.dart';

MaterialPageRoute ensMaterialPageRoute({
  required Widget child,
  required RouteSettings settings,
  bool fullscreenDialog = false,
  bool isInitialRoute = false,
}) =>
    MaterialPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (_) => isInitialRoute ? SnackbarInitialContainer(child: child) : SnackbarContainer(child: child),
      settings: settings,
    );
