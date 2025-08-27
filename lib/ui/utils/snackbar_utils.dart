/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';

void showSnackbarSuccess(
  BuildContext context,
  String text, {
  double extraVerticalPadding = 24.0,
  bool withClear = true,
  bool verylongDuration = false,
}) {
  if (withClear) clearSnackbar(context);
  ScaffoldMessenger.of(context).showSnackBar(
    EnsSnackbar.success(
      context: context,
      label: text,
      extraVerticalPadding: extraVerticalPadding,
      veryLongDuration: verylongDuration,
    ),
  );
}

void showSnackbarError(
  BuildContext context,
  String text, {
  double extraVerticalPadding = 24.0,
  bool withClear = true,
  bool verylongDuration = false,
}) {
  if (withClear) clearSnackbar(context);
  ScaffoldMessenger.of(context).showSnackBar(
    EnsSnackbar.error(
      context: context,
      label: text,
      extraVerticalPadding: extraVerticalPadding,
      veryLongDuration: verylongDuration,
    ),
  );
}

void showSnackbarLoading(
  BuildContext context,
  String text, {
  double extraVerticalPadding = 24.0,
  bool withClear = true,
}) {
  if (withClear) clearSnackbar(context);
  ScaffoldMessenger.of(context).showSnackBar(
    EnsSnackbar.loading(
      context: context,
      label: text,
      extraVerticalPadding: extraVerticalPadding,
    ),
  );
}

void showSnackbarInfo(
  BuildContext context,
  String text, {
  double extraVerticalPadding = 24.0,
  bool withClear = true,
  bool verylongDuration = false,
}) {
  if (withClear) clearSnackbar(context);
  ScaffoldMessenger.of(context).showSnackBar(
    EnsSnackbar.info(
      context: context,
      label: text,
      extraVerticalPadding: extraVerticalPadding,
      veryLongDuration: verylongDuration,
    ),
  );
}

void clearSnackbar(BuildContext context, {bool forceUseContext = false}) {
  BuildContext usedContext;
  if (forceUseContext) {
    usedContext = context;
  } else {
    usedContext = BottomNavigationTabsScreen.keySnackbarScaffold.currentContext ?? context;
  }
  ScaffoldMessenger.of(usedContext).removeCurrentSnackBar();
}
