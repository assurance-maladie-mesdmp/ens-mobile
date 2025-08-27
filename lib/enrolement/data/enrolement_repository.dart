/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/enrolement/domain/disponibilite_identifiant.dart';
import 'package:fr_cnamts_ens/enrolement/domain/enrolement_carte_vitale_data.dart';
import 'package:fr_cnamts_ens/enrolement/domain/enrolement_domain_error.dart';
import 'package:fr_cnamts_ens/enrolement/domain/profil_rattache.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_contact.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_contact_change_otp_validation.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_create_account.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_create_ens.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_generate_new_code.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_generate_new_code.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_get_enrolment_suggestions.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_liste_rattachement.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_send_new_code.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_send_otp_to_update_user_contact.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_verify_otp_to_update_user_contact.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_vital_card_authentication.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:intl/intl.dart';

class GetUserContactResponse extends Equatable {
  final UserContact userContact;
  final String? firstName;
  final String? lastName;
  final List<ProfilRattache>? jumeaux;

  const GetUserContactResponse({
    required this.userContact,
    this.firstName,
    this.lastName,
    this.jumeaux,
  });

  @override
  List<Object?> get props => [userContact, firstName, lastName, jumeaux];
}

abstract interface class IEnrolementRepository {
  Future<RequestResult<GetUserContactResponse>> getUserContact({
    required DateTime birthDate,
    required String numeroSecu,
    required String numeroSerieCarteVitale,
    String? numeroSecuAd,
  });

  Future<RequestResult<void>> sendCodeProvisoire(TypeContactCodeProvisoire typeContact);

  Future<RequestResult<void>> sendOtpUpdateContact(ContactChange userContactChange);

  Future<RequestResult<void>> verifyOtpUpdateContact(UserContactChangeOtpValidation otpValidation);

  Future<RequestResult<EnrolementCarteVitaleData>> validationEnrolementWithCodeProvisoire(
    String codeProvisoire,
  );

  Future<RequestResult<void>> acceptCGU();

  Future<RequestResult<void>> createAccount({required String identifiant, required String motDePasse});

  Future<RequestResult<DisponibiliteIdentifiant>> fetchDisponibiliteIdentifiant({required String identifiant});
}

class EnrolementRepository implements IEnrolementRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  EnrolementRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<void>> sendOtpUpdateContact(ContactChange userContactChange) async {
    try {
      final mutation = Gsend_otp_to_update_user_contact_in_enrolementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.sendOtpUpdateContact.canalType = _toCanalTypeFrom(userContactChange.type)
          ..vars.sendOtpUpdateContact.canalValue = userContactChange.value,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.sendOtpUpdateContact;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> verifyOtpUpdateContact(UserContactChangeOtpValidation otpValidation) async {
    try {
      final mutation = Gverify_otp_to_update_user_contact_in_enrolementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.verifyOtpUpdateContact.canalType = _toCanalTypeFrom(otpValidation.type)
          ..vars.verifyOtpUpdateContact.otpCode = otpValidation.otp,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.verifyOtpUpdateContact;
      if (graphQLResult != null && graphQLResult.isOtpCodeValid) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<GetUserContactResponse>> getUserContact({
    required DateTime birthDate,
    required String numeroSecu,
    required String numeroSerieCarteVitale,
    String? numeroSecuAd,
  }) async {
    try {
      final mutation = Ggenerate_new_enrolement_codeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.nir = numeroSecu
          ..vars.input.nirFutureUser = numeroSecuAd
          ..vars.input.vitalCardNumber = numeroSerieCarteVitale
          ..vars.input.dateOfBirth = DateFormat('dd/MM/yyyy').format(birthDate),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.generateNewEnrolmentCode;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          GetUserContactResponse(
            userContact: _toUserContact(graphQLResult.userContact),
            firstName: graphQLResult.firstName,
            lastName: graphQLResult.lastName,
            jumeaux: _toProfilsRattaches(graphQLResult.listeRattachement),
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> sendCodeProvisoire(TypeContactCodeProvisoire typeContact) async {
    final mutation = Gsend_new_enrolement_codeReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.input.canalType = typeContact == TypeContactCodeProvisoire.TELEPHONE ? GCanalType.sms : GCanalType.mail,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.sendNewEnrolmentCode;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnrolementCarteVitaleData>> validationEnrolementWithCodeProvisoire(
    String codeProvisoire,
  ) async {
    try {
      final mutation = Gvital_card_authenticationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.enrolmentCode = codeProvisoire,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.vitalCardAuthentication;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          EnrolementCarteVitaleData(
            isOdAccountActivated: graphQLResult.ouvrantDroit?.compte?.isAccountFound ?? false,
            email: graphQLResult.contact?.email,
            telephone: graphQLResult.contact?.mobileNumber,
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> acceptCGU() async {
    try {
      final mutation = Gcreate_ensReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input = 'OUVERT',
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.createEns;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> createAccount({required String identifiant, required String motDePasse}) async {
    try {
      final mutation = Gcreate_accountReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.loginId = identifiant
          ..vars.input.password = motDePasse,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        EnrolementDomainError domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(error);

        if (domainError == EnrolementDomainError.MOT_DE_PASSE_NON_ROBUSTE) {
          final subError = graphQLResponse.extractFirstExtensionSubcode();
          domainError = EnrolementDomainError.getErrorDomainFromGraphQLError(subError);
        }

        return RequestResultError.error(domainError: domainError);
      }

      final graphQLResult = graphQLResponse.data?.createAccountEns;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<DisponibiliteIdentifiant>> fetchDisponibiliteIdentifiant({required String identifiant}) async {
    try {
      final query = GEnrolmentUserNameAvailabilityReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.userName = identifiant,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.enrolmentUserNameAvailability;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          DisponibiliteIdentifiant(
            isDisponible: graphQLResult.isAvailable,
            suggestions: graphQLResult.suggestions.toList(),
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}

GCanalType _toCanalTypeFrom(ContactChangeType typeContact) {
  return switch (typeContact) {
    ContactChangeType.MAIL => GCanalType.mail,
    ContactChangeType.PHONE => GCanalType.sms,
  };
}

UserContact _toUserContact(
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact? resultUserContact,
) {
  return UserContact(
    email: resultUserContact?.email,
    telephone: resultUserContact?.mobileNumber,
  );
}

List<ProfilRattache>? _toProfilsRattaches(BuiltList<GprofilRattache>? resultListeRattachement) {
  return resultListeRattachement
      ?.map((profil) {
        return ProfilRattache(
          numeroSecu: profil.nir,
          lastName: profil.lastName,
          firstName: profil.firstName,
        );
      })
      .nonNulls
      .toList();
}
