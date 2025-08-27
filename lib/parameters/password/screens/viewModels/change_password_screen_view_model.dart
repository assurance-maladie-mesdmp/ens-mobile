/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/password_change.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_password_states.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:redux/redux.dart';

class ChangePasswordScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store<EnsState> _store;
  final ChangePasswordStatus changePasswordStatus;

  const ChangePasswordScreenViewModel._internal(
    this._store, {
    required this.changePasswordStatus,
  }) : super(_store);

  factory ChangePasswordScreenViewModel(Store<EnsState> store) {
    final changePasswordStatus = _getChangePasswordStatus(store.state.userState.changePasswordState);
    return ChangePasswordScreenViewModel._internal(store, changePasswordStatus: changePasswordStatus);
  }

  static ChangePasswordStatus _getChangePasswordStatus(ChangePasswordState changePasswordState) {
    if (changePasswordState.status.isNotLoaded()) return ChangePasswordStatus.NOT_SEND;
    if (changePasswordState.status.isLoading()) return ChangePasswordStatus.PENDING;
    if (changePasswordState.isSuccessWithData) return ChangePasswordStatus.SUCCESS;
    return ChangePasswordStatus.ERROR;
  }

  void sendChangePassword(String currentPassword, String newPassword) {
    _store.dispatch(ChangePasswordAction(PasswordChange(currentPassword: currentPassword, newPassword: newPassword)));
  }

  @override
  List<Object?> get props => [changePasswordStatus];
}

enum ChangePasswordStatus { NOT_SEND, PENDING, ERROR, SUCCESS }
