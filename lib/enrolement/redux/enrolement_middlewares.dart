/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class EnrolementMiddlewares {
  final IEnrolementRepository enrolementRepository;

  EnrolementMiddlewares(this.enrolementRepository);

  static List<Middleware<EnsInitialState>> create(
    IEnrolementRepository enrolementRepository,
  ) {
    final middlewares = EnrolementMiddlewares(enrolementRepository);
    return [
      TypedMiddleware<EnsInitialState, FetchUserContactAction>(middlewares._onFetchUserContactAction).call,
      TypedMiddleware<EnsInitialState, SendCodeProvisoireAction>(
        middlewares._onSendCodeProvisoireAction,
      ).call,
      TypedMiddleware<EnsInitialState, ValidationCodeProvisoireAction>(
        middlewares._onValidationCodeProvisoireAction,
      ).call,
      TypedMiddleware<EnsInitialState, AskToChangeUserContactAction>(
        middlewares._onChangeContactAction,
      ).call,
      TypedMiddleware<EnsInitialState, VerifyOtpToUpdateUserContactAction>(
        middlewares._onVerifyOtpToUpdateUserContactAction,
      ).call,
      TypedMiddleware<EnsInitialState, CreateAccountAction>(
        middlewares._onCreateAccountAction,
      ).call,
      TypedMiddleware<EnsInitialState, AcceptCGUAction>(
        middlewares._onAcceptCGUAction,
      ).call,
      TypedMiddleware<EnsInitialState, FetchDisponibiliteIdentifiantAction>(
        middlewares._onFetchDisponibiliteIdentifiantAction,
      ).call,
    ];
  }

  Future<void> _onChangeContactAction(
    Store<EnsInitialState> store,
    AskToChangeUserContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.sendOtpUpdateContact(action.contactChange);
    result.onSuccess((_) {
      store.dispatch(_ProcessAskToChangeUserContactAction(otpSent: true));
    });
    result.onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!, extraVerticalPadding: 88));
      }
      store.dispatch(_ProcessAskToChangeUserContactAction(otpSent: false));
    });
  }

  Future<void> _onVerifyOtpToUpdateUserContactAction(
    Store<EnsInitialState> store,
    VerifyOtpToUpdateUserContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.verifyOtpUpdateContact(
      UserContactChangeOtpValidation(type: action.type, otp: action.otp),
    );
    result.onSuccess((_) {
      store.dispatch(_ProcessVerifyOtpToUpdateUserContactAction(otpValidated: true));
    });
    result.onError((_) {
      store.dispatch(_ProcessVerifyOtpToUpdateUserContactAction(otpValidated: false));
    });
  }

  Future<void> _onFetchUserContactAction(
    Store<EnsInitialState> store,
    FetchUserContactAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.getUserContact(
      birthDate: action.birthDate,
      numeroSecu: action.numeroSecu,
      numeroSerieCarteVitale: action.numeroSerieCarteVitale,
      numeroSecuAd: action.numeroSecuAd,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchUserContactSuccessAction(successResult));
    });
    result.onError((domainError) {
      if (domainError == EnrolementDomainError.COORDONNEES_INTROUVABLES) {
        store.dispatch(_ProcessUserContactSansCoordonneesAction());
      } else {
        if (domainError is EnrolementDomainError) {
          store.dispatch(_ProcessFetchUserContactErrorAction(domainError: domainError));
        }
        if (domainError.errorMessage != null) {
          store.dispatch(
            DisplaySnackbarAction.error(
              domainError.errorMessage!,
              extraVerticalPadding: 56,
            ),
          );
        }
      }
    });
  }

  Future<void> _onSendCodeProvisoireAction(
    Store<EnsInitialState> store,
    SendCodeProvisoireAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.sendCodeProvisoire(action.typeContactCodeProvisoire);
    result.onSuccess((_) {
      store.dispatch(_ProcessSendCodeProvisoireSuccessAction());
    });
    result.onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(
          DisplaySnackbarAction.error(
            domainError.errorMessage!,
            extraVerticalPadding: 56,
          ),
        );
      }
      store.dispatch(
        _ProcessSendCodeProvisoireErrorAction(isErrorTimedOut: domainError == EnrolementDomainError.SESSION_EXPIREE),
      );
    });
  }

  Future<void> _onValidationCodeProvisoireAction(
    Store<EnsInitialState> store,
    ValidationCodeProvisoireAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.validationEnrolementWithCodeProvisoire(action.codeProvisoire);
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessValidationCodeProvisoireSuccessAction(enrolementVitalCardData: successResult),
      );
    });
    result.onError((domainError) {
      if (domainError is EnrolementDomainError) {
        store.dispatch(_ProcessValidationCodeProvisoireErrorAction(domainError: domainError));
      }
      if (domainError.errorMessage != null) {
        store.dispatch(
          DisplaySnackbarAction.error(domainError.errorMessage!, extraVerticalPadding: 56),
        );
      }
    });
  }

  Future<void> _onCreateAccountAction(
    Store<EnsInitialState> store,
    CreateAccountAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.createAccount(
      identifiant: action.identifiant,
      motDePasse: action.motDeAPasse,
    );
    result.onSuccess((_) {
      store.dispatch(_ProcessCreateAccountSuccessAction());
    });
    result.onError((domainError) {
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
      store.dispatch(
        _ProcessCreateAccountErrorAction(isErrorTimedOut: domainError == EnrolementDomainError.SESSION_EXPIREE),
      );
    });
  }

  Future<void> _onAcceptCGUAction(
    Store<EnsInitialState> store,
    AcceptCGUAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await enrolementRepository.acceptCGU();
    result.onSuccess((_) {
      store.dispatch(_ProcessAcceptCGUSuccessAction());
    });
    result.onError((domainError) {
      store.dispatch(
        _ProcessAcceptCGUErrorAction(isErrorTimedOut: domainError == EnrolementDomainError.SESSION_EXPIREE),
      );
      if (domainError.errorMessage != null) {
        store.dispatch(
          DisplaySnackbarAction.error(domainError.errorMessage!, extraVerticalPadding: 56),
        );
      }
    });
  }

  Future<void> _onFetchDisponibiliteIdentifiantAction(
    Store<EnsInitialState> store,
    FetchDisponibiliteIdentifiantAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final result = await enrolementRepository.fetchDisponibiliteIdentifiant(identifiant: action.identifiant);
    result.onSuccess((result) {
      store.dispatch(
        _ProcessFetchDisponibiliteIdentifiantSuccessAction(disponibiliteIdentifiant: result),
      );
    });
    result.onError((domainError) {
      store.dispatch(_ProcessFetchDisponibiliteIdentifiantErrorAction());
    });
  }
}
