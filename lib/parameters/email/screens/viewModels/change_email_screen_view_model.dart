/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_contact_states.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ChangeEmailScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '';
  final String userMail;
  final ChangeContactStatus changeContactStatus;
  final void Function(String) sendChangeEmail;

  const ChangeEmailScreenViewModel._internal({
    required this.userMail,
    required this.changeContactStatus,
    required this.sendChangeEmail,
  });

  factory ChangeEmailScreenViewModel.fromEnsState(Store<EnsState> store) {
    final mainUserDataState = store.state.userState.mainUserDataState;
    final email = mainUserDataState.isSuccessWithData ? mainUserDataState.userData!.mail ?? EMPTY_VALUE : EMPTY_VALUE;
    final changeContactStatus = _getChangeContactStatus(store.state.userState.changeContactState);
    return ChangeEmailScreenViewModel._internal(
      userMail: email,
      changeContactStatus: changeContactStatus,
      sendChangeEmail: (String email) => store.dispatch(
        ChangeContactAction(ContactChange(type: ContactChangeType.MAIL, value: email)),
      ),
    );
  }

  factory ChangeEmailScreenViewModel.fromEnsInitialState(Store<EnsInitialState> store) {
    final email = store.state.enrolementState.userContact.unmaskedEmail ?? EMPTY_VALUE;
    final changeUserContactStatus =
        switch (store.state.enrolementState.userContactChangeState.sendChangeUserContactStatus) {
      AllPurposesStatus.LOADING => ChangeContactStatus.PENDING,
      AllPurposesStatus.SUCCESS => ChangeContactStatus.SUCCESS,
      _ => ChangeContactStatus.NOT_SEND,
    };

    return ChangeEmailScreenViewModel._internal(
      userMail: email,
      changeContactStatus: changeUserContactStatus,
      sendChangeEmail: (email) {
        store.dispatch(
          AskToChangeUserContactAction(contactChange: ContactChange(type: ContactChangeType.MAIL, value: email)),
        );
      },
    );
  }

  static ChangeContactStatus _getChangeContactStatus(ChangeContactState changeContactState) {
    if (changeContactState.status.isNotLoaded()) return ChangeContactStatus.NOT_SEND;
    if (changeContactState.status.isLoading()) return ChangeContactStatus.PENDING;
    if (changeContactState.isSuccessWithData) return ChangeContactStatus.SUCCESS;
    return ChangeContactStatus.ERROR;
  }

  @override
  List<Object?> get props => [userMail, changeContactStatus];
}

enum ChangeContactStatus { NOT_SEND, PENDING, SUCCESS, ERROR }
