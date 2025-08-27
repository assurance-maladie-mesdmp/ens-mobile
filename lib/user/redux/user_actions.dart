/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/domain/model/otp_validation.dart';
import 'package:fr_cnamts_ens/user/domain/model/password_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_model.dart';

class InitEnsUserAction {}

class ProcessEnsUserAction {
  final EnsUser? ensUser;

  ProcessEnsUserAction(this.ensUser);
}

class InvalidateCacheAction {}

class FetchUserDataAction {
  final bool force;
  final bool isOverridingProfile;

  FetchUserDataAction({this.force = true, this.isOverridingProfile = false});
}

class ProcessUserDataSuccessAction {
  final UserData userData;
  final bool isOverridingProfile;

  ProcessUserDataSuccessAction(this.userData, {this.isOverridingProfile = false});
}

class ProcessUserDataErrorAction {}

class UpdateEmailAction {
  final String email;

  UpdateEmailAction(this.email);
}

class UpdatePhoneNumberAction {
  final String phoneNumber;

  UpdatePhoneNumberAction(this.phoneNumber);
}

class ProcessCurrentProfileDataAction {
  final EnsProfil profile;
  final RequestResult<UserData> result;

  ProcessCurrentProfileDataAction(this.profile, this.result);
}

class ChangeContactAction {
  final ContactChange contactChange;

  ChangeContactAction(this.contactChange);
}

class ProcessChangeContactSuccessAction {
  final ContactChange contactChange;

  ProcessChangeContactSuccessAction(this.contactChange);
}

class ProcessChangeContactErrorAction {}

class ChangePasswordAction {
  final PasswordChange passwordChange;

  ChangePasswordAction(this.passwordChange);
}

class ProcessChangePasswordSuccessAction {
  final PasswordChange passwordChange;

  ProcessChangePasswordSuccessAction(this.passwordChange);
}

class ProcessChangePasswordErrorAction {}

class ValidateOtpAction {
  final OtpValidation otpValidation;

  ValidateOtpAction(this.otpValidation);
}

class ProcessValidateOtpSuccessAction {}

class ProcessValidateOtpErrorAction {}

class FinalizeChangeContactAction {}

class SetFirstConnexionOnboardingDoneAction {
  final String onboardingDate;

  SetFirstConnexionOnboardingDoneAction(this.onboardingDate);
}

class ChangeProfileAction {
  final EnsProfil profile;

  ChangeProfileAction(this.profile);
}

class ReInitStateForPatientIdAction {
  final EnsProfil profile;

  ReInitStateForPatientIdAction(this.profile);
}

class StoreUsernameAction {
  final EnsUser? user;

  StoreUsernameAction(this.user);
}
