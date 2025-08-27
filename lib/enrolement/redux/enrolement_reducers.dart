/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class EnrolementReducers {
  static List<Reducer<EnsInitialState>> create() => [
        TypedReducer<EnsInitialState, SelectTypeCarteVitaleAction>(
          EnrolementReducers._onSelectTypeCarteVitaleAction,
        ).call,
        TypedReducer<EnsInitialState, FetchUserContactAction>(
          EnrolementReducers._onFetchUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessFetchUserContactSuccessAction>(
          EnrolementReducers._onProcessFetchUserContactSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessFetchUserContactErrorAction>(
          EnrolementReducers._onProcessFetchUserContactErrorAction,
        ).call,
        TypedReducer<EnsInitialState, SendCodeProvisoireAction>(
          EnrolementReducers._onSendCodeAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessSendCodeProvisoireSuccessAction>(
          EnrolementReducers._onProcessSendCodeSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessSendCodeProvisoireErrorAction>(
          EnrolementReducers._onProcessSendCodeErrorAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessUserContactSansCoordonneesAction>(
          EnrolementReducers._onProcessUserContactSansCoordonneesAction,
        ).call,
        TypedReducer<EnsInitialState, ValidationCodeProvisoireAction>(
          EnrolementReducers._onValidationCodeProvisoireAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessValidationCodeProvisoireSuccessAction>(
          EnrolementReducers._onProcessValidationCodeProvisoireSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessValidationCodeProvisoireErrorAction>(
          EnrolementReducers._onProcessValidationCodeProvisoireErrorAction,
        ).call,
        TypedReducer<EnsInitialState, AskToChangeUserContactAction>(
          EnrolementReducers._onAskToChangeUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessAskToChangeUserContactAction>(
          EnrolementReducers._onProcessAskToChangeUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, VerifyOtpToUpdateUserContactAction>(
          EnrolementReducers._onVerifyOtpToUpdateUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessVerifyOtpToUpdateUserContactAction>(
          EnrolementReducers._onProcessVerifyOtpToUpdateUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, FinalizeChangeToUserContactAction>(
          EnrolementReducers._onFinalizeChangeToUserContactAction,
        ).call,
        TypedReducer<EnsInitialState, CreateAccountAction>(
          EnrolementReducers._onCreateAccountAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessCreateAccountSuccessAction>(
          EnrolementReducers._onProcessCreateAccountSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessCreateAccountErrorAction>(
          EnrolementReducers._onProcessCreateAccountErrorAction,
        ).call,
        TypedReducer<EnsInitialState, AcceptCGUAction>(
          EnrolementReducers._onAcceptCGUActionAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessAcceptCGUSuccessAction>(
          EnrolementReducers._onProcessAcceptCGUSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessAcceptCGUErrorAction>(
          EnrolementReducers._onProcessAcceptCGUErrorAction,
        ).call,
        TypedReducer<EnsInitialState, ResetEnrolementAction>(
          EnrolementReducers._onResetEnrolementAction,
        ).call,
        TypedReducer<EnsInitialState, ResetValidateOtpToChangeUserContactStatusAction>(
          EnrolementReducers._onResetValidateOtpToChangeUserContactStatusAction,
        ).call,
        TypedReducer<EnsInitialState, SaveScanCarteVitaleInformationAction>(
          EnrolementReducers._onSaveScanCarteVitaleInformationActions,
        ).call,
        TypedReducer<EnsInitialState, ResetScanCarteVitaleInformationAction>(
          EnrolementReducers._onResetScanCarteVitaleInformationActions,
        ).call,
        TypedReducer<EnsInitialState, _ProcessFetchDisponibiliteIdentifiantSuccessAction>(
          EnrolementReducers._onProcessFetchDisponibiliteIdentifiantSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessFetchDisponibiliteIdentifiantErrorAction>(
          EnrolementReducers._onProcessFetchDisponibiliteIdentifiantErrorAction,
        ).call,
        TypedReducer<EnsInitialState, ClearDisponibiliteIdentifiantAction>(
          EnrolementReducers._onClearDisponibiliteIdentifiantAction,
        ).call,
        TypedReducer<EnsInitialState, GenerateCarteVitaleAction>(
          EnrolementReducers._onGenerateCarteVitaleAction,
        ).call,
      ];

  static EnsInitialState _onAskToChangeUserContactAction(
    EnsInitialState state,
    AskToChangeUserContactAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactChangeState: state.enrolementState.userContactChangeState.clone(
          userContactChange: action.contactChange,
          sendChangeUserContactStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessAskToChangeUserContactAction(
    EnsInitialState state,
    _ProcessAskToChangeUserContactAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactChangeState: state.enrolementState.userContactChangeState.clone(
          sendChangeUserContactStatus: action.otpSent ? AllPurposesStatus.SUCCESS : AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsInitialState _onVerifyOtpToUpdateUserContactAction(
    EnsInitialState state,
    VerifyOtpToUpdateUserContactAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactChangeState: state.enrolementState.userContactChangeState.clone(
          validateOtpToChangeUserContactStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessVerifyOtpToUpdateUserContactAction(
    EnsInitialState state,
    _ProcessVerifyOtpToUpdateUserContactAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactChangeState: state.enrolementState.userContactChangeState.clone(
          validateOtpToChangeUserContactStatus:
              action.otpValidated ? AllPurposesStatus.SUCCESS : AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsInitialState _onResetValidateOtpToChangeUserContactStatusAction(
    EnsInitialState state,
    ResetValidateOtpToChangeUserContactStatusAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactChangeState: state.enrolementState.userContactChangeState.clone(
          validateOtpToChangeUserContactStatus: AllPurposesStatus.NOT_LOADED,
        ),
      ),
    );
  }

  static EnsInitialState _onFinalizeChangeToUserContactAction(
    EnsInitialState state,
    FinalizeChangeToUserContactAction action,
  ) {
    final userContactChange = state.enrolementState.userContactChangeState.userContactChange;
    if (userContactChange != null) {
      final UserContact userContact;
      userContact = switch (userContactChange.type) {
        ContactChangeType.MAIL => state.enrolementState.userContact.clone(
            email: userContactChange.value,
            unmaskedEmail: userContactChange.value,
          ),
        ContactChangeType.PHONE => state.enrolementState.userContact.clone(
            telephone: userContactChange.value,
            unmaskedTelephone: userContactChange.value,
          ),
      };
      return state.clone(
        enrolementState: state.enrolementState.clone(
          userContact: userContact,
          userContactChangeState: state.enrolementState.userContactChangeState.clone(
            validateOtpToChangeUserContactStatus: AllPurposesStatus.NOT_LOADED,
            sendChangeUserContactStatus: AllPurposesStatus.NOT_LOADED,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsInitialState _onSelectTypeCarteVitaleAction(
    EnsInitialState state,
    SelectTypeCarteVitaleAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(typeCarteVitale: action.typeCarteVitale),
    );
  }

  static EnsInitialState _onFetchUserContactAction(
    EnsInitialState state,
    FetchUserContactAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactStatus: UserContactStatus.LOADING,
        userIdentite: state.enrolementState.userIdentite.clone(
          birthDateOptional: Optional.ofNullable(action.birthDate),
          numeroSecuOptional: Optional.ofNullable(action.numeroSecu),
          numeroSerieCarteVitaleOptional: Optional.ofNullable(action.numeroSerieCarteVitale),
          isAd: EnrolementSelectors.isEnrolementAd(action.birthDate),
        ),
      ),
    );
  }

  static EnsInitialState _onProcessFetchUserContactSuccessAction(
    EnsInitialState state,
    _ProcessFetchUserContactSuccessAction action,
  ) {
    final userContact = action.getUserContactsResponse.userContact;

    final typeContactCodeProvisoire =
        userContact.email != null ? TypeContactCodeProvisoire.E_MAIL : TypeContactCodeProvisoire.TELEPHONE;

    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactStatus: UserContactStatus.SUCCESS,
        jumeaux: action.getUserContactsResponse.jumeaux,
        userContact: state.enrolementState.userContact.clone(
          email: userContact.email,
          telephone: userContact.telephone,
          unmaskedEmail: null,
          unmaskedTelephone: null,
          typeContactCodeProvisoire: typeContactCodeProvisoire,
        ),
        userIdentite: state.enrolementState.userIdentite.clone(
          firstNameOptional: Optional.ofNullable(action.getUserContactsResponse.firstName),
          lastNameOptional: Optional.ofNullable(action.getUserContactsResponse.lastName),
        ),
      ),
    );
  }

  static EnsInitialState _onProcessUserContactSansCoordonneesAction(
    EnsInitialState state,
    _ProcessUserContactSansCoordonneesAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContactStatus: UserContactStatus.COMPTE_SANS_CORDONEES,
        userContact: const UserContact(
          typeContactCodeProvisoire: TypeContactCodeProvisoire.COURRIER,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessFetchUserContactErrorAction(
    EnsInitialState state,
    _ProcessFetchUserContactErrorAction action,
  ) {
    UserContactStatus userContactStatus = state.enrolementState.userContactStatus;

    switch (action.domainError) {
      case EnrolementDomainError.COMPTE_DEJA_EXISTANT:
        userContactStatus = UserContactStatus.COMPTE_EXISTANT;
      case EnrolementDomainError.PERSONNE_DECEDEE:
        userContactStatus = UserContactStatus.COMPTE_NON_ACTIVABLE;
      case EnrolementDomainError.SESSION_EXPIREE:
        userContactStatus = UserContactStatus.SESSION_TIMED_OUT;
      default:
        userContactStatus = UserContactStatus.ERROR;
    }

    return state.clone(
      enrolementState: state.enrolementState.clone(userContactStatus: userContactStatus),
    );
  }

  static EnsInitialState _onSendCodeAction(
    EnsInitialState state,
    SendCodeProvisoireAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userContact: state.enrolementState.userContact.clone(
          typeContactCodeProvisoire: action.typeContactCodeProvisoire,
        ),
        sendCodeProvisoireStatus: AllPurposesEnrolementStatus.LOADING,
      ),
    );
  }

  static EnsInitialState _onProcessSendCodeSuccessAction(
    EnsInitialState state,
    _ProcessSendCodeProvisoireSuccessAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        sendCodeProvisoireStatus: AllPurposesEnrolementStatus.SUCCESS,
      ),
    );
  }

  static EnsInitialState _onProcessSendCodeErrorAction(
    EnsInitialState state,
    _ProcessSendCodeProvisoireErrorAction action,
  ) {
    final enrolementStatus =
        action.isErrorTimedOut ? AllPurposesEnrolementStatus.SESSION_TIMED_OUT : AllPurposesEnrolementStatus.ERROR;

    return state.clone(
      enrolementState: state.enrolementState.clone(
        sendCodeProvisoireStatus: enrolementStatus,
      ),
    );
  }

  static EnsInitialState _onValidationCodeProvisoireAction(
    EnsInitialState state,
    ValidationCodeProvisoireAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        validationCodeProvisoireStatus: CodeProvisoireStatus.LOADING,
      ),
    );
  }

  static EnsInitialState _onProcessValidationCodeProvisoireSuccessAction(
    EnsInitialState state,
    _ProcessValidationCodeProvisoireSuccessAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        validationCodeProvisoireStatus: CodeProvisoireStatus.SUCCESS,
        isOdAccountActivated: action.enrolementVitalCardData.isOdAccountActivated,
        userContact: state.enrolementState.userContact.clone(
          unmaskedEmail: action.enrolementVitalCardData.email,
          unmaskedTelephone: action.enrolementVitalCardData.telephone,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessValidationCodeProvisoireErrorAction(
    EnsInitialState state,
    _ProcessValidationCodeProvisoireErrorAction action,
  ) {
    CodeProvisoireStatus codeProvisoireStatus = state.enrolementState.validationCodeProvisoireStatus;
    if (action.domainError == EnrolementDomainError.CODE_PROVISOIRE_EXPIRE) {
      codeProvisoireStatus = CodeProvisoireStatus.CODE_EXPIRED;
    } else if (action.domainError == EnrolementDomainError.CODE_PROVISOIRE_DEJA_UTILISE) {
      codeProvisoireStatus = CodeProvisoireStatus.CODE_ALREADY_USED;
    } else if (action.domainError == EnrolementDomainError.SESSION_EXPIREE) {
      codeProvisoireStatus = CodeProvisoireStatus.SESSION_TIMED_OUT;
    } else {
      codeProvisoireStatus = CodeProvisoireStatus.ERROR;
    }

    return state.clone(
      enrolementState: state.enrolementState.clone(
        validationCodeProvisoireStatus: codeProvisoireStatus,
      ),
    );
  }

  static EnsInitialState _onCreateAccountAction(
    EnsInitialState state,
    CreateAccountAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(createAccountStatus: AllPurposesEnrolementStatus.LOADING),
    );
  }

  static EnsInitialState _onProcessCreateAccountSuccessAction(
    EnsInitialState state,
    _ProcessCreateAccountSuccessAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(createAccountStatus: AllPurposesEnrolementStatus.SUCCESS),
    );
  }

  static EnsInitialState _onProcessCreateAccountErrorAction(
    EnsInitialState state,
    _ProcessCreateAccountErrorAction action,
  ) {
    final enrolementStatus =
        action.isErrorTimedOut ? AllPurposesEnrolementStatus.SESSION_TIMED_OUT : AllPurposesEnrolementStatus.ERROR;
    return state.clone(
      enrolementState: state.enrolementState.clone(createAccountStatus: enrolementStatus),
    );
  }

  static EnsInitialState _onAcceptCGUActionAction(EnsInitialState state, AcceptCGUAction action) {
    return state.clone(
      enrolementState: state.enrolementState.clone(acceptCGUStatus: AllPurposesEnrolementStatus.LOADING),
    );
  }

  static EnsInitialState _onProcessAcceptCGUSuccessAction(
    EnsInitialState state,
    _ProcessAcceptCGUSuccessAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(acceptCGUStatus: AllPurposesEnrolementStatus.SUCCESS),
    );
  }

  static EnsInitialState _onProcessAcceptCGUErrorAction(
    EnsInitialState state,
    _ProcessAcceptCGUErrorAction action,
  ) {
    final status =
        action.isErrorTimedOut ? AllPurposesEnrolementStatus.SESSION_TIMED_OUT : AllPurposesEnrolementStatus.ERROR;

    return state.clone(
      enrolementState: state.enrolementState.clone(acceptCGUStatus: status),
    );
  }

  static EnsInitialState _onResetEnrolementAction(
    EnsInitialState state,
    ResetEnrolementAction action,
  ) {
    return state.clone(enrolementState: EnrolementState.initial());
  }

  static EnsInitialState _onSaveScanCarteVitaleInformationActions(
    EnsInitialState state,
    SaveScanCarteVitaleInformationAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userIdentite: state.enrolementState.userIdentite.clone(
          numeroSecuOptional: Optional.ofNullable(action.numeroSecuriteSociale),
          numeroSerieCarteVitaleOptional: Optional.ofNullable(action.numeroSerie),
          isInfosCarteVitaleFromScan: true,
        ),
      ),
    );
  }

  static EnsInitialState _onResetScanCarteVitaleInformationActions(
    EnsInitialState state,
    ResetScanCarteVitaleInformationAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        userIdentite: state.enrolementState.userIdentite.clone(
          numeroSecuOptional: Optional.ofNullable(null),
          numeroSerieCarteVitaleOptional: Optional.ofNullable(null),
          isInfosCarteVitaleFromScan: false,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessFetchDisponibiliteIdentifiantSuccessAction(
    EnsInitialState state,
    _ProcessFetchDisponibiliteIdentifiantSuccessAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        disponibiliteIdentifiantState: state.enrolementState.disponibiliteIdentifiantState.clone(
          status: AllPurposesStatus.SUCCESS,
          disponibiliteIdentifiant: action.disponibiliteIdentifiant,
        ),
      ),
    );
  }

  static EnsInitialState _onProcessFetchDisponibiliteIdentifiantErrorAction(
    EnsInitialState state,
    _ProcessFetchDisponibiliteIdentifiantErrorAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        disponibiliteIdentifiantState: state.enrolementState.disponibiliteIdentifiantState.clone(
          status: AllPurposesStatus.ERROR,
          disponibiliteIdentifiant: const DisponibiliteIdentifiant(isDisponible: null, suggestions: []),
        ),
      ),
    );
  }

  static EnsInitialState _onClearDisponibiliteIdentifiantAction(
    EnsInitialState state,
    ClearDisponibiliteIdentifiantAction action,
  ) {
    return state.clone(
      enrolementState:
          state.enrolementState.clone(disponibiliteIdentifiantState: const DisponibiliteIdentifiantState()),
    );
  }

  static EnsInitialState _onGenerateCarteVitaleAction(
    EnsInitialState state,
    GenerateCarteVitaleAction action,
  ) {
    return state.clone(
      enrolementState: state.enrolementState.clone(
        generatedCarteVitale: state.enrolementState.generatedCarteVitale.clone(
          nir: action.nir,
          numeroSerie: action.numeroSerie,
          birthDate: action.birthDate,
        ),
      ),
    );
  }
}
