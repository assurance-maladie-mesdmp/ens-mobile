/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_container_view_model.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

class SnackbarContainer extends StatefulWidget {
  final Widget child;

  const SnackbarContainer({super.key, required this.child});

  @override
  State<SnackbarContainer> createState() => SnackbarContainerWidgetState();
}

// Must be stateful to work
// ignore: unnecessary_statefull_widget
class SnackbarContainerWidgetState extends State<SnackbarContainer> {
  int? containerCount;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, SnackbarContainerViewModel>(
      converter: (store) => SnackbarContainerViewModel.fromEnsState(store),
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
          final extraVerticalPadding = (vm.extraVerticalPadding ?? 24.0) + _getExtraPadding(context, vm);
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
                if (EnsModuleContainer.currentInjector.isGuestMode()) {
                  showSnackbarInfo(
                    context,
                    GUEST_MODE_ERROR_MESSAGE,
                    extraVerticalPadding: extraVerticalPadding,
                  );
                } else {
                  showSnackbarError(
                    context,
                    text,
                    extraVerticalPadding: extraVerticalPadding,
                  );
                }
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

  double _getExtraPadding(BuildContext context, SnackbarContainerViewModel vm) {
    const navbarBottomHeight = 48.0;
    final isBottomNavigationTabsScreen = ModalRoute.of(context)?.settings.name == '/';
    if (isBottomNavigationTabsScreen) {
      final bottomNavigationBarIndex =
          (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)
              ?.currentIndex;
      if (_isHomeOrPmlScreen(bottomNavigationBarIndex)) {
        return max(0, MediaQuery.of(context).padding.bottom - navbarBottomHeight);
      } else if (_isDocumentsScreen(bottomNavigationBarIndex)) {
        if (vm.isDocumentsFloatingButtonDisplayed) {
          return 0;
        } else {
          return max(0, MediaQuery.of(context).padding.bottom - navbarBottomHeight);
        }
      } else if (_isMessagesScreen(bottomNavigationBarIndex)) {
        return 0;
      }
    }
    return 0;
  }

  bool _isHomeOrPmlScreen(int? bottomNavigationBarIndex) {
    return bottomNavigationBarIndex == BottomTabs.HOME.position || bottomNavigationBarIndex == BottomTabs.PML.position;
  }

  bool _isDocumentsScreen(int? bottomNavigationBarIndex) {
    return bottomNavigationBarIndex == BottomTabs.DOCUMENTS.position;
  }

  bool _isMessagesScreen(int? bottomNavigationBarIndex) {
    return bottomNavigationBarIndex == BottomTabs.MESSAGES.position;
  }
}
