/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class SelectTypeCarteVitaleAction {
  final TypeCarteVitale typeCarteVitale;

  SelectTypeCarteVitaleAction(this.typeCarteVitale);
}

class FetchUserContactAction {
  final DateTime birthDate;
  final String numeroSecu;
  final String numeroSerieCarteVitale;
  final String? numeroSecuAd;

  FetchUserContactAction({
    required this.birthDate,
    required this.numeroSecu,
    required this.numeroSerieCarteVitale,
    this.numeroSecuAd,
  });
}

class AskToChangeUserContactAction {
  final ContactChange contactChange;

  AskToChangeUserContactAction({required this.contactChange});
}

class _ProcessAskToChangeUserContactAction {
  final bool otpSent;

  _ProcessAskToChangeUserContactAction({required this.otpSent});
}

class VerifyOtpToUpdateUserContactAction {
  final ContactChangeType type;
  final String otp;

  VerifyOtpToUpdateUserContactAction({required this.type, required this.otp});
}

class _ProcessVerifyOtpToUpdateUserContactAction {
  final bool otpValidated;

  _ProcessVerifyOtpToUpdateUserContactAction({required this.otpValidated});
}

class FinalizeChangeToUserContactAction {}

class ResetValidateOtpToChangeUserContactStatusAction {}

class _ProcessFetchUserContactSuccessAction {
  final GetUserContactResponse getUserContactsResponse;

  _ProcessFetchUserContactSuccessAction(this.getUserContactsResponse);
}

class _ProcessUserContactSansCoordonneesAction {
  _ProcessUserContactSansCoordonneesAction();
}

class _ProcessFetchUserContactErrorAction {
  final EnrolementDomainError domainError;

  _ProcessFetchUserContactErrorAction({required this.domainError});
}

class SendCodeProvisoireAction {
  final TypeContactCodeProvisoire typeContactCodeProvisoire;

  SendCodeProvisoireAction({required this.typeContactCodeProvisoire});
}

class _ProcessSendCodeProvisoireSuccessAction {}

class _ProcessSendCodeProvisoireErrorAction {
  final bool isErrorTimedOut;

  _ProcessSendCodeProvisoireErrorAction({required this.isErrorTimedOut});
}

class ValidationCodeProvisoireAction {
  final String codeProvisoire;

  ValidationCodeProvisoireAction({required this.codeProvisoire});
}

class _ProcessValidationCodeProvisoireSuccessAction {
  final EnrolementCarteVitaleData enrolementVitalCardData;

  _ProcessValidationCodeProvisoireSuccessAction({required this.enrolementVitalCardData});
}

class _ProcessValidationCodeProvisoireErrorAction {
  final EnrolementDomainError domainError;

  _ProcessValidationCodeProvisoireErrorAction({required this.domainError});
}

class CreateAccountAction {
  final String identifiant;
  final String motDeAPasse;

  CreateAccountAction({required this.identifiant, required this.motDeAPasse});
}

class _ProcessCreateAccountSuccessAction {}

class _ProcessCreateAccountErrorAction {
  final bool isErrorTimedOut;

  _ProcessCreateAccountErrorAction({required this.isErrorTimedOut});
}

class AcceptCGUAction {}

class _ProcessAcceptCGUSuccessAction {}

class _ProcessAcceptCGUErrorAction {
  final bool isErrorTimedOut;

  _ProcessAcceptCGUErrorAction({required this.isErrorTimedOut});
}

class ResetEnrolementAction {}

class SaveScanCarteVitaleInformationAction {
  final String numeroSecuriteSociale;
  final String numeroSerie;

  SaveScanCarteVitaleInformationAction({required this.numeroSecuriteSociale, required this.numeroSerie});
}

class ResetScanCarteVitaleInformationAction {}

class FetchDisponibiliteIdentifiantAction {
  final String identifiant;

  FetchDisponibiliteIdentifiantAction({required this.identifiant});
}

class _ProcessFetchDisponibiliteIdentifiantSuccessAction {
  final DisponibiliteIdentifiant disponibiliteIdentifiant;

  _ProcessFetchDisponibiliteIdentifiantSuccessAction({required this.disponibiliteIdentifiant});
}

class _ProcessFetchDisponibiliteIdentifiantErrorAction {}

class ClearDisponibiliteIdentifiantAction {}

class GenerateCarteVitaleAction {
  final String nir;
  final String numeroSerie;
  final DateTime birthDate;

  GenerateCarteVitaleAction({required this.nir, required this.numeroSerie, required this.birthDate});
}
