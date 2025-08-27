/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

class DisplaySnackbarAction extends Equatable {
  final SnackbarType type;
  final String text;
  final double? extraVerticalPadding;
  final bool? skipAutoDismiss;

  const DisplaySnackbarAction(this.type, this.text, [this.extraVerticalPadding, this.skipAutoDismiss]);

  const DisplaySnackbarAction.loading(String text, {double? extraVerticalPadding})
      : this(SnackbarType.LOADING, text, extraVerticalPadding);

  const DisplaySnackbarAction.success(String text, {double? extraVerticalPadding, bool? verylongDuration})
      : this(SnackbarType.SUCCESS, text, extraVerticalPadding, verylongDuration);

  const DisplaySnackbarAction.error(String text, {double? extraVerticalPadding, bool? verylongDuration})
      : this(SnackbarType.ERROR, text, extraVerticalPadding, verylongDuration);

  const DisplaySnackbarAction.info(String text, {double? extraVerticalPadding})
      : this(SnackbarType.INFO, text, extraVerticalPadding);

  const DisplaySnackbarAction.unavailableInGuestMode({double? extraVerticalPadding})
      : this(SnackbarType.INFO, GUEST_MODE_ERROR_MESSAGE, extraVerticalPadding);

  const DisplaySnackbarAction.unavailableAsAidant(String aideName, {double? extraVerticalPadding})
      : this(SnackbarType.INFO, 'Cette action est uniquement disponible pour $aideName', extraVerticalPadding);

  @override
  List<Object?> get props => [type, text, extraVerticalPadding, skipAutoDismiss];
}

class SnackBarDisplayedAction {
  const SnackBarDisplayedAction();
}

class HideSnackBarAction {
  const HideSnackBarAction();
}

class RegisterContainerAction {}

class UnregisterContainerAction {}

enum SnackbarType { LOADING, SUCCESS, ERROR, INFO }
