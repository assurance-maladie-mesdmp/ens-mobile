/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_states.dart';
import 'package:fr_cnamts_ens/user/cgu/redux/cgu_redux.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_model.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_contact_states.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_password_states.dart';
import 'package:fr_cnamts_ens/user/redux/states/main_user_data_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class UserState extends Equatable {
  final EnsUser? currentEnsUser;
  final EnsProfil? currentProfile;
  final MainUserDataState mainUserDataState;
  final ChangeContactState changeContactState;
  final ChangePasswordState changePasswordState;
  final AllPurposesStatus validateOtpStatus;
  final AcceptCguState acceptCguState;
  final AppRatingState appRatingState;

  const UserState({
    this.currentEnsUser,
    this.currentProfile,
    this.mainUserDataState = const MainUserDataState(),
    this.changeContactState = const ChangeContactState(),
    this.changePasswordState = const ChangePasswordState(),
    this.validateOtpStatus = AllPurposesStatus.NOT_LOADED,
    this.acceptCguState = AcceptCguState.TO_ACCEPT,
    this.appRatingState = const AppRatingState(shouldDisplayAppRating: false),
  });

  UserState clone({
    EnsUser? currentEnsUser,
    EnsProfil? currentProfile,
    MainUserDataState? mainUserDataState,
    ChangeContactState? changeContactState,
    ChangePasswordState? changePasswordState,
    AllPurposesStatus? validateOtpStatus,
    AcceptCguState? acceptCguState,
    AppRatingState? appRatingState,
  }) {
    return UserState(
      currentEnsUser: currentEnsUser ?? this.currentEnsUser,
      currentProfile: currentProfile ?? this.currentProfile,
      mainUserDataState: mainUserDataState ?? this.mainUserDataState,
      changeContactState: changeContactState ?? this.changeContactState,
      changePasswordState: changePasswordState ?? this.changePasswordState,
      validateOtpStatus: validateOtpStatus ?? this.validateOtpStatus,
      acceptCguState: acceptCguState ?? this.acceptCguState,
      appRatingState: appRatingState ?? this.appRatingState,
    );
  }

  String get connectedUserPatientId => currentEnsUser?.idNat ?? '';

  String get currentProfilePatientId {
    return currentProfile?.patientId ?? currentEnsUser?.idNat ?? '';
  }

  DateTime? get currentProfileBirthdate => currentProfile?.dateNaissance;

  DateTime get currentProfileBirthdateOrNow => currentProfile?.dateNaissance ?? DateTime.now();

  bool get isMainProfile => currentProfile?.patientId == currentEnsUser?.idNat;

  @override
  List<Object?> get props => [
        currentEnsUser,
        currentProfile,
        mainUserDataState,
        changeContactState,
        changePasswordState,
        validateOtpStatus,
        acceptCguState,
        appRatingState,
      ];
}
