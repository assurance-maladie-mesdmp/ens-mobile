/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_contact_states.dart';
import 'package:fr_cnamts_ens/user/redux/states/change_password_states.dart';
import 'package:fr_cnamts_ens/user/redux/states/main_user_data_states.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

class UserReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessEnsUserAction>(UserReducers._onProcessEnsUserAction).call,
        TypedReducer<EnsState, ProcessUserDataSuccessAction>(UserReducers._onProcessUserDataSuccessAction).call,
        TypedReducer<EnsState, ProcessUserDataErrorAction>(UserReducers._onProcessUserDataErrorAction).call,
        TypedReducer<EnsState, UpdateEmailAction>(UserReducers._onUpdateEmailAction).call,
        TypedReducer<EnsState, UpdatePhoneNumberAction>(UserReducers._onUpdatePhoneNumberAction).call,
        TypedReducer<EnsState, ProcessCurrentProfileDataAction>(UserReducers._onProcessCurrentProfileDataAction).call,
        TypedReducer<EnsState, ChangeContactAction>(UserReducers._onChangeContactAction).call,
        TypedReducer<EnsState, ProcessChangeContactSuccessAction>(
          UserReducers._onProcessChangeContactSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessChangeContactErrorAction>(UserReducers._onProcessChangeContactErrorAction).call,
        TypedReducer<EnsState, ChangePasswordAction>(UserReducers._onChangePasswordAction).call,
        TypedReducer<EnsState, ProcessChangePasswordSuccessAction>(
          UserReducers._onProcessChangePasswordSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessChangePasswordErrorAction>(UserReducers._onProcessChangePasswordErrorAction).call,
        TypedReducer<EnsState, ValidateOtpAction>(UserReducers._onValidateOtpAction).call,
        TypedReducer<EnsState, ProcessValidateOtpSuccessAction>(UserReducers._onProcessValidateOtpSuccessAction).call,
        TypedReducer<EnsState, ProcessValidateOtpErrorAction>(UserReducers._onProcessValidateOtpErrorAction).call,
        TypedReducer<EnsState, FinalizeChangeContactAction>(UserReducers._onFinalizeChangeContactAction).call,
        TypedReducer<EnsState, SetFirstConnexionOnboardingDoneAction>(
          UserReducers._onSetFirstConnexionOnboardingDoneAction,
        ).call,
        TypedReducer<EnsState, ReInitStateForPatientIdAction>(UserReducers._onReInitStateForPatientIdAction).call,
        TypedReducer<EnsState, UserLoggedOutAction>(UserReducers._onUserLoggedOutAction).call,
      ];

  static EnsState _onProcessEnsUserAction(EnsState state, ProcessEnsUserAction action) {
    final newUserState = state.userState.clone(currentEnsUser: action.ensUser);
    return state.clone(userState: newUserState);
  }

  static EnsState _onUpdateEmailAction(EnsState state, UpdateEmailAction action) {
    final mainUserDataState = state.userState.mainUserDataState;
    if (mainUserDataState.isSuccessWithData) {
      return state.clone(
        userState: state.userState.clone(
          mainUserDataState: mainUserDataState.clone(
            userData: mainUserDataState.userData!.clone(mail: action.email),
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onUpdatePhoneNumberAction(EnsState state, UpdatePhoneNumberAction action) {
    final mainUserDataState = state.userState.mainUserDataState;
    if (mainUserDataState.isSuccessWithData) {
      return state.clone(
        userState: state.userState.clone(
          mainUserDataState: mainUserDataState.clone(
            userData: mainUserDataState.userData!.clone(phoneNumber: action.phoneNumber),
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessUserDataSuccessAction(EnsState state, ProcessUserDataSuccessAction action) {
    final userData = action.userData;
    return state.clone(
      userState: state.userState.clone(
        mainUserDataState: state.userState.mainUserDataState.clone(
          status: AllPurposesStatus.SUCCESS,
          userData: userData,
        ),
        currentProfile: action.isOverridingProfile
            ? EnsProfil(
                patientId: state.userState.currentEnsUser?.idNat ?? '',
                prenom: userData.firstName,
                nom: userData.lastName,
                couleur: EnsColors.primary,
                dateNaissance: userData.birthDate,
                sexe: userData.genre,
                ins: userData.ins,
                codeInsee: userData.inseeCode,
                isOnboardingTermine: userData.isOnboardingDone,
              )
            : state.userState.currentProfile,
      ),
    );
  }

  static EnsState _onProcessUserDataErrorAction(EnsState state, ProcessUserDataErrorAction action) {
    return state.clone(
      userState: state.userState.clone(
        mainUserDataState: const MainUserDataState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessCurrentProfileDataAction(EnsState state, ProcessCurrentProfileDataAction action) {
    late EnsProfil profile;
    action.result.onSuccess((successResult) {
      profile = EnsProfil(
        patientId: action.profile.patientId,
        nom: action.profile.nom,
        prenom: action.profile.prenom,
        couleur: action.profile.couleur,
        dateNaissance: successResult.birthDate,
        sexe: successResult.genre,
        ins: successResult.ins,
        codeInsee: successResult.inseeCode,
        isOnboardingTermine: successResult.isOnboardingDone,
      );
    }).onError((error) {
      profile = EnsProfil(
        patientId: action.profile.patientId,
        nom: action.profile.nom,
        prenom: action.profile.prenom,
        couleur: action.profile.couleur,
        ins: action.profile.ins,
      );
    });
    return state.clone(userState: state.userState.clone(currentProfile: profile));
  }

  static EnsState _onChangeContactAction(EnsState state, ChangeContactAction action) {
    return state.clone(
      userState: state.userState.clone(
        changeContactState: const ChangeContactState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessChangeContactSuccessAction(EnsState state, ProcessChangeContactSuccessAction action) {
    return state.clone(
      userState: state.userState.clone(
        changeContactState: ChangeContactState(
          status: AllPurposesStatus.SUCCESS,
          contactChange: action.contactChange,
        ),
      ),
    );
  }

  static EnsState _onProcessChangeContactErrorAction(EnsState state, ProcessChangeContactErrorAction action) {
    return state.clone(
      userState: state.userState.clone(
        changeContactState: const ChangeContactState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onChangePasswordAction(EnsState state, ChangePasswordAction action) {
    return state.clone(
      userState: state.userState.clone(
        changePasswordState: const ChangePasswordState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessChangePasswordSuccessAction(EnsState state, ProcessChangePasswordSuccessAction action) {
    return state.clone(
      userState: state.userState.clone(
        changePasswordState: ChangePasswordState(
          status: AllPurposesStatus.SUCCESS,
          passwordChange: action.passwordChange,
        ),
      ),
    );
  }

  static EnsState _onProcessChangePasswordErrorAction(EnsState state, ProcessChangePasswordErrorAction action) {
    return state.clone(
      userState: state.userState.clone(
        changePasswordState: const ChangePasswordState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onValidateOtpAction(EnsState state, ValidateOtpAction action) {
    return state.clone(userState: state.userState.clone(validateOtpStatus: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessValidateOtpSuccessAction(EnsState state, ProcessValidateOtpSuccessAction action) {
    return state.clone(userState: state.userState.clone(validateOtpStatus: AllPurposesStatus.SUCCESS));
  }

  static EnsState _onProcessValidateOtpErrorAction(EnsState state, ProcessValidateOtpErrorAction action) {
    return state.clone(userState: state.userState.clone(validateOtpStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onFinalizeChangeContactAction(EnsState state, FinalizeChangeContactAction action) {
    return state.clone(
      userState: state.userState.clone(
        changeContactState: const ChangeContactState(status: AllPurposesStatus.NOT_LOADED),
        validateOtpStatus: AllPurposesStatus.NOT_LOADED,
      ),
    );
  }

  static EnsState _onSetFirstConnexionOnboardingDoneAction(
    EnsState state,
    SetFirstConnexionOnboardingDoneAction action,
  ) {
    final currentProfile = state.userState.currentProfile;
    if (currentProfile != null) {
      return state.clone(
        userState: state.userState.clone(
          currentProfile: currentProfile.clone(isOnboardingDoneOptional: Optional.of(true)),
        ),
      );
    }
    return state;
  }

  static EnsState _onReInitStateForPatientIdAction(EnsState state, ReInitStateForPatientIdAction action) {
    return state.cloneForNewCurrentProfile(action.profile);
  }

  static EnsState _onUserLoggedOutAction(EnsState state, UserLoggedOutAction action) {
    return state.reset();
  }
}
