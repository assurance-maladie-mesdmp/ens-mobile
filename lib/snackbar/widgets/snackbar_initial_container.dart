/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_container_view_model.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';

class SnackbarInitialContainer extends StatefulWidget {
  final Widget child;

  const SnackbarInitialContainer({super.key, required this.child});

  @override
  State<SnackbarInitialContainer> createState() => _SnackbarContainerState();
}

// Must be stateful to work
// ignore: unnecessary_statefull_widget
class _SnackbarContainerState extends State<SnackbarInitialContainer> {
  int? containerCount;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, SnackbarContainerViewModel>(
      converter: (store) => SnackbarContainerViewModel.fromEnsInitialState(store),
      distinct: true,
      onInit: (store) {
        containerCount = store.state.snackbarContainerState.containerCount + 1;
        store.dispatch(RegisterContainerAction());
      },
      onDispose: (store) {
        store.dispatch(UnregisterContainerAction());
      },
      onWillChange: (_, vm) {
        if (containerCount != null && containerCount! >= vm.containerCount) {
          final text = vm.text;
          final extraVerticalPadding = vm.extraVerticalPadding ?? 24.0;
          final veryLongDuration = vm.veryLongDuration ?? false;
          if (text != null) {
            SemanticsService.announce(text, TextDirection.ltr);
            vm.markSnackbarDisplayed();
            switch (vm.type) {
              case SnackbarType.LOADING:
                showSnackbarLoading(context, text, extraVerticalPadding: extraVerticalPadding);
              case SnackbarType.SUCCESS:
                showSnackbarSuccess(
                  context,
                  text,
                  extraVerticalPadding: extraVerticalPadding,
                  verylongDuration: veryLongDuration,
                );
              case SnackbarType.ERROR:
                showSnackbarError(
                  context,
                  text,
                  extraVerticalPadding: extraVerticalPadding,
                  verylongDuration: veryLongDuration,
                );
              case SnackbarType.INFO:
                showSnackbarInfo(context, text, extraVerticalPadding: extraVerticalPadding);
              case null:
                break;
            }
          } else if (vm.hideSnackbar) {
            clearSnackbar(context);
          }
        }
      },
      builder: (context, vm) => widget.child,
    );
  }
}
