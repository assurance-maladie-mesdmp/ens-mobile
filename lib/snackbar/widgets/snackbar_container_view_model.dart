/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_generic_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:redux/redux.dart';

class SnackbarContainerViewModel extends Equatable {
  final String? text;
  final SnackbarType? type;
  final double? extraVerticalPadding;
  final bool? veryLongDuration;
  final bool hideSnackbar;
  final int containerCount;
  final bool isDocumentsFloatingButtonDisplayed;
  final void Function() markSnackbarDisplayed;

  const SnackbarContainerViewModel._internal({
    this.text,
    this.type,
    this.extraVerticalPadding,
    this.veryLongDuration,
    required this.hideSnackbar,
    required this.containerCount,
    required this.isDocumentsFloatingButtonDisplayed,
    required this.markSnackbarDisplayed,
  });

  factory SnackbarContainerViewModel.fromEnsInitialState(Store<EnsInitialState> store) {
    final snackbarState = store.state.snackbarContainerState.snackbarState;
    final containerCount = store.state.snackbarContainerState.containerCount;

    if (snackbarState is SnackbarStateDisplay) {
      return SnackbarContainerViewModel._internal(
        text: snackbarState.text,
        type: snackbarState.type,
        extraVerticalPadding: snackbarState.extraVerticalPadding,
        veryLongDuration: snackbarState.veryLongDuration,
        hideSnackbar: false,
        containerCount: containerCount,
        isDocumentsFloatingButtonDisplayed: false,
        markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
      );
    } else if (snackbarState is SnackbarStateHide) {
      return SnackbarContainerViewModel._internal(
        text: null,
        type: null,
        extraVerticalPadding: null,
        hideSnackbar: true,
        containerCount: containerCount,
        isDocumentsFloatingButtonDisplayed: false,
        markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
      );
    }
    return SnackbarContainerViewModel._internal(
      text: null,
      type: null,
      extraVerticalPadding: null,
      hideSnackbar: false,
      containerCount: containerCount,
      isDocumentsFloatingButtonDisplayed: false,
      markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
    );
  }

  factory SnackbarContainerViewModel.fromEnsState(Store<EnsState> store) {
    final snackbarState = store.state.snackbarContainerState.snackbarState;
    final containerCount = store.state.snackbarContainerState.containerCount;

    final isFloatingButtonDisplayed = _isDocumentsFloatingButtonDisplayed(store.state);
    if (snackbarState is SnackbarStateDisplay) {
      return SnackbarContainerViewModel._internal(
        text: snackbarState.text,
        type: snackbarState.type,
        extraVerticalPadding: snackbarState.extraVerticalPadding,
        veryLongDuration: snackbarState.veryLongDuration,
        hideSnackbar: false,
        containerCount: containerCount,
        isDocumentsFloatingButtonDisplayed: isFloatingButtonDisplayed,
        markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
      );
    } else if (snackbarState is SnackbarStateHide) {
      return SnackbarContainerViewModel._internal(
        text: null,
        type: null,
        extraVerticalPadding: null,
        hideSnackbar: true,
        containerCount: containerCount,
        isDocumentsFloatingButtonDisplayed: isFloatingButtonDisplayed,
        markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
      );
    }
    return SnackbarContainerViewModel._internal(
      text: null,
      type: null,
      extraVerticalPadding: null,
      hideSnackbar: false,
      containerCount: containerCount,
      isDocumentsFloatingButtonDisplayed: isFloatingButtonDisplayed,
      markSnackbarDisplayed: () => _markSnackbarDisplayed(store),
    );
  }

  static void _markSnackbarDisplayed(Store<EnsGenericState> store) {
    store.dispatch(const SnackBarDisplayedAction());
  }

  static bool _isDocumentsFloatingButtonDisplayed(EnsState state) {
    bool isFloatingButtonDisplayed = false;
    final documentsListState = state.documentsState.documentsListState;
    if (documentsListState.status.isSuccess()) {
      final dossiersRepresentations = DocumentsSelectors.getDossiersRepresentations(state);
      isFloatingButtonDisplayed = state.documentsState.editionStatus is! DocumentEditionUploading &&
          (dossiersRepresentations.length > 1 || dossiersRepresentations[0].documentIds.isNotEmpty) &&
          state.displayMainAppBar;
    }
    return isFloatingButtonDisplayed;
  }

  @override
  List<Object?> get props => [
        text,
        type,
        extraVerticalPadding,
        veryLongDuration,
        hideSnackbar,
        containerCount,
        isDocumentsFloatingButtonDisplayed,
      ];
}
