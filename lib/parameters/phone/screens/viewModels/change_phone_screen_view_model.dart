/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_contact_states.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ChangePhoneScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '';

  final EnsPhoneDisplayModel phoneDisplayModel;
  final ChangeContactStatus changeContactStatus;
  final void Function(Indicatif, String) sendChangePhone;

  const ChangePhoneScreenViewModel._internal({
    required this.phoneDisplayModel,
    required this.changeContactStatus,
    required this.sendChangePhone,
  });

  factory ChangePhoneScreenViewModel.fromEnsState(Store<EnsState> store) {
    final mainUserDataState = store.state.userState.mainUserDataState;
    final phone =
        mainUserDataState.isSuccessWithData ? mainUserDataState.userData!.phoneNumber ?? EMPTY_VALUE : EMPTY_VALUE;
    final changeContactStatus = _getChangeContactStatus(store.state.userState.changeContactState);
    final phoneDisplayModel = EnsPhoneDisplayModel.buildDisplayModel(phone);
    return ChangePhoneScreenViewModel._internal(
      phoneDisplayModel: phoneDisplayModel,
      changeContactStatus: changeContactStatus,
      sendChangePhone: (indicatif, phoneSuffix) {
        final phoneNumber = getPhoneNumber(indicatif, phoneSuffix);
        store.dispatch(ChangeContactAction(ContactChange(type: ContactChangeType.PHONE, value: phoneNumber)));
      },
    );
  }

  factory ChangePhoneScreenViewModel.fromEnsInitialState(Store<EnsInitialState> store) {
    final phone = store.state.enrolementState.userContact.unmaskedTelephone ?? EMPTY_VALUE;
    final changeUserContactStatus =
        switch (store.state.enrolementState.userContactChangeState.sendChangeUserContactStatus) {
      AllPurposesStatus.LOADING => ChangeContactStatus.PENDING,
      AllPurposesStatus.SUCCESS => ChangeContactStatus.SUCCESS,
      _ => ChangeContactStatus.NOT_SEND,
    };

    final phoneDisplayModel = EnsPhoneDisplayModel.buildDisplayModel(phone);
    return ChangePhoneScreenViewModel._internal(
      phoneDisplayModel: phoneDisplayModel,
      changeContactStatus: changeUserContactStatus,
      sendChangePhone: (indicatif, phoneSuffix) {
        final phoneNumber = getPhoneNumber(indicatif, phoneSuffix);
        store.dispatch(
          AskToChangeUserContactAction(
            contactChange: ContactChange(type: ContactChangeType.PHONE, value: phoneNumber),
          ),
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

  static String getPhoneNumber(Indicatif indicatif, String phoneSuffix) {
    String phoneNumber = '';
    if (indicatif == Indicatif.PLUS_33 && phoneSuffix[0] == '0') {
      phoneNumber = indicatif.label + phoneSuffix.substring(1);
    } else {
      phoneNumber = indicatif.label + phoneSuffix;
    }
    return phoneNumber;
  }

  @override
  List<Object?> get props => [phoneDisplayModel, changeContactStatus];
}

enum ChangeContactStatus { NOT_SEND, PENDING, ERROR, SUCCESS }
