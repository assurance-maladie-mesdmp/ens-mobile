/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolement_redux.dart';

class EnrolementState extends Equatable {
  final UserContact userContact;
  final UserIdentite userIdentite;
  final List<ProfilRattache> jumeaux;
  final TypeCarteVitale typeCarteVitale;
  final GeneratedCarteVitale generatedCarteVitale;
  final UserContactStatus userContactStatus;
  final AllPurposesEnrolementStatus sendCodeProvisoireStatus;
  final UserContactChangeState userContactChangeState;
  final CodeProvisoireStatus validationCodeProvisoireStatus;
  final AllPurposesEnrolementStatus createAccountStatus;
  final AllPurposesEnrolementStatus acceptCGUStatus;
  final bool isOdAccountActivated;
  final DisponibiliteIdentifiantState disponibiliteIdentifiantState;

  const EnrolementState({
    this.userContact = const UserContact(),
    this.userIdentite = const UserIdentite(),
    this.jumeaux = const [],
    this.userContactChangeState = const UserContactChangeState(),
    this.typeCarteVitale = TypeCarteVitale.UNKNOWN,
    this.generatedCarteVitale = const GeneratedCarteVitale(),
    this.userContactStatus = UserContactStatus.NOT_LOADED,
    this.sendCodeProvisoireStatus = AllPurposesEnrolementStatus.NOT_LOADED,
    this.validationCodeProvisoireStatus = CodeProvisoireStatus.NOT_LOADED,
    this.acceptCGUStatus = AllPurposesEnrolementStatus.NOT_LOADED,
    this.createAccountStatus = AllPurposesEnrolementStatus.NOT_LOADED,
    this.isOdAccountActivated = false,
    this.disponibiliteIdentifiantState = const DisponibiliteIdentifiantState(),
  });

  factory EnrolementState.initial() => const EnrolementState(
        userContact: UserContact(),
        userIdentite: UserIdentite(),
        generatedCarteVitale: GeneratedCarteVitale(),
        jumeaux: [],
        typeCarteVitale: TypeCarteVitale.UNKNOWN,
        userContactStatus: UserContactStatus.NOT_LOADED,
        sendCodeProvisoireStatus: AllPurposesEnrolementStatus.NOT_LOADED,
        validationCodeProvisoireStatus: CodeProvisoireStatus.NOT_LOADED,
        acceptCGUStatus: AllPurposesEnrolementStatus.NOT_LOADED,
        createAccountStatus: AllPurposesEnrolementStatus.NOT_LOADED,
      );

  EnrolementState clone({
    UserContact? userContact,
    UserIdentite? userIdentite,
    GeneratedCarteVitale? generatedCarteVitale,
    List<ProfilRattache>? jumeaux,
    TypeCarteVitale? typeCarteVitale,
    UserContactStatus? userContactStatus,
    AllPurposesEnrolementStatus? sendCodeProvisoireStatus,
    CodeProvisoireStatus? validationCodeProvisoireStatus,
    UserContactChangeState? userContactChangeState,
    AllPurposesEnrolementStatus? createAccountStatus,
    AllPurposesEnrolementStatus? acceptCGUStatus,
    bool? isOdAccountActivated,
    DisponibiliteIdentifiantState? disponibiliteIdentifiantState,
  }) {
    return EnrolementState(
      userContact: userContact ?? this.userContact,
      userIdentite: userIdentite ?? this.userIdentite,
      generatedCarteVitale: generatedCarteVitale ?? this.generatedCarteVitale,
      jumeaux: jumeaux ?? this.jumeaux,
      typeCarteVitale: typeCarteVitale ?? this.typeCarteVitale,
      userContactStatus: userContactStatus ?? this.userContactStatus,
      sendCodeProvisoireStatus: sendCodeProvisoireStatus ?? this.sendCodeProvisoireStatus,
      userContactChangeState: userContactChangeState ?? this.userContactChangeState,
      validationCodeProvisoireStatus: validationCodeProvisoireStatus ?? this.validationCodeProvisoireStatus,
      createAccountStatus: createAccountStatus ?? this.createAccountStatus,
      acceptCGUStatus: acceptCGUStatus ?? this.acceptCGUStatus,
      isOdAccountActivated: isOdAccountActivated ?? this.isOdAccountActivated,
      disponibiliteIdentifiantState: disponibiliteIdentifiantState ?? this.disponibiliteIdentifiantState,
    );
  }

  @override
  List<Object?> get props => [
        userContact,
        userIdentite,
        generatedCarteVitale,
        jumeaux,
        typeCarteVitale,
        userContactStatus,
        userContactChangeState,
        sendCodeProvisoireStatus,
        validationCodeProvisoireStatus,
        createAccountStatus,
        acceptCGUStatus,
        isOdAccountActivated,
        disponibiliteIdentifiantState,
      ];
}

enum UserContactStatus {
  NOT_LOADED,
  LOADING,
  SUCCESS,
  COMPTE_EXISTANT,
  COMPTE_NON_ACTIVABLE,
  COMPTE_SANS_CORDONEES,
  SESSION_TIMED_OUT,
  ERROR,
}

enum CodeProvisoireStatus {
  NOT_LOADED,
  LOADING,
  SUCCESS,
  CODE_EXPIRED,
  CODE_ALREADY_USED,
  SESSION_TIMED_OUT,
  ERROR,
}

enum AllPurposesEnrolementStatus { NOT_LOADED, LOADING, SUCCESS, SESSION_TIMED_OUT, ERROR }
