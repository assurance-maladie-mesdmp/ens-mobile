/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';

class SnackbarContainerState extends Equatable {
  final SnackbarState snackbarState;
  final int containerCount;

  const SnackbarContainerState({required this.snackbarState, required this.containerCount});

  @override
  List<Object?> get props => [snackbarState, containerCount];
}

abstract class SnackbarState extends Equatable {
  const SnackbarState._();

  const factory SnackbarState.empty() = SnackbarStateEmpty._;

  const factory SnackbarState.hide() = SnackbarStateHide._;

  const factory SnackbarState.display(
    SnackbarType type,
    String text, [
    double? extraVerticalPadding,
    bool? veryLongDuration,
  ]) = SnackbarStateDisplay._;
}

class SnackbarStateEmpty extends SnackbarState {
  const SnackbarStateEmpty._() : super._();

  @override
  List<Object?> get props => [];
}

class SnackbarStateHide extends SnackbarState {
  const SnackbarStateHide._() : super._();

  @override
  List<Object?> get props => [];
}

class SnackbarStateDisplay extends SnackbarState {
  final SnackbarType type;
  final String text;
  final double? extraVerticalPadding;
  final bool? veryLongDuration;

  const SnackbarStateDisplay._(this.type, this.text, [this.extraVerticalPadding, this.veryLongDuration]) : super._();

  @override
  List<Object?> get props => [type, text, extraVerticalPadding, veryLongDuration];
}
