/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class UserContactChangeState extends Equatable {
  final AllPurposesStatus sendChangeUserContactStatus;
  final AllPurposesStatus validateOtpToChangeUserContactStatus;
  final ContactChange? userContactChange;

  const UserContactChangeState({
    this.sendChangeUserContactStatus = AllPurposesStatus.NOT_LOADED,
    this.validateOtpToChangeUserContactStatus = AllPurposesStatus.NOT_LOADED,
    this.userContactChange,
  });

  bool get isSuccessWithData => sendChangeUserContactStatus.isSuccess() && userContactChange != null;

  UserContactChangeState clone({
    AllPurposesStatus? sendChangeUserContactStatus,
    AllPurposesStatus? validateOtpToChangeUserContactStatus,
    ContactChange? userContactChange,
  }) =>
      UserContactChangeState(
        sendChangeUserContactStatus: sendChangeUserContactStatus ?? this.sendChangeUserContactStatus,
        validateOtpToChangeUserContactStatus:
            validateOtpToChangeUserContactStatus ?? this.validateOtpToChangeUserContactStatus,
        userContactChange: userContactChange ?? this.userContactChange,
      );

  @override
  List<Object?> get props => [sendChangeUserContactStatus, validateOtpToChangeUserContactStatus, userContactChange];
}
