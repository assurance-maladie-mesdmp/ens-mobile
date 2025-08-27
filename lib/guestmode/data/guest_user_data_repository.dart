/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/otp_validation.dart';
import 'package:fr_cnamts_ens/user/domain/model/password_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';

class GuestUserDataRepository extends IUserDataRepository {
  @override
  Future<RequestResult<ContactChange>> changeContact(String patientId, ContactChange contactChange) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<PasswordChange>> changePassword(String patientId, PasswordChange passwordChange) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<UserData>> getUserData(String patientId) {
    return Future.value(
      RequestResultSuccess(
        UserData(
          firstName: 'Gabrielle',
          lastName: 'Capanelli',
          mail: 'INS@patient.mssante.fr',
          phoneNumber: null,
          birthDate: _getBirthdate(patientId),
          genre: Genre.FEMME,
          ins: 'XXXXXXXXXXXXXXX',
          inseeCode: '01154',
          cguAcceptedAt: DateTime(2024, 2, 18),
          cguLastPublicationAt: DateTime(2024, 1, 18),
          isOnboardingDone: true,
        ),
      ),
    );
  }

  DateTime _getBirthdate(String patientId) {
    switch (patientId) {
      case '1':
        return DateTime(2023);
      case '2':
        return DateTime(2020);
      case '3':
        return DateTime(2017);
      case '4':
        return DateTime(2011);
      default:
        return DateTime(1985, 1, 4);
    }
  }

  @override
  Future<RequestResult<void>> setOnboardingDone(String patientId, String onBoardingDate) {
    return Future.value(RequestResultError.genericError());
  }

  @override
  Future<RequestResult<OtpValidation>> validateOtp(String patientId, OtpValidation otpValidation) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
