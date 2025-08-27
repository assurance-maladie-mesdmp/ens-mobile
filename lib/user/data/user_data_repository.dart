/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_contact.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_change_password.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_set_onboarding_done.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_set_onboarding_done.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_validate_otp.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_personal_information.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/user/data/user_data_repository_mapper.dart';
import 'package:fr_cnamts_ens/user/domain/model/cms_last_publication_cgu.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/otp_validation.dart';
import 'package:fr_cnamts_ens/user/domain/model/password_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/user/domain/user_data_domain_error.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IUserDataRepository {
  Future<RequestResult<UserData>> getUserData(String patientId);

  Future<RequestResult<ContactChange>> changeContact(String patientId, ContactChange contactChange);

  Future<RequestResult<PasswordChange>> changePassword(String patientId, PasswordChange passwordChange);

  Future<RequestResult<OtpValidation>> validateOtp(String patientId, OtpValidation otpValidation);

  Future<RequestResult<void>> setOnboardingDone(String patientId, String onboardingDate);
}

class UserDataRepository extends IUserDataRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;
  final JsonDataSource jsonDataSource;
  final String cmsUrl;

  UserDataRepository({
    required this.ferryClient,
    required this.crashlytics,
    required this.jsonDataSource,
    required this.cmsUrl,
  });

  @override
  Future<RequestResult<UserData>> getUserData(String patientId) async {
    try {
      final getLastPublicationCguResult = await _getCmsLastPublicationCGU();
      if (getLastPublicationCguResult is RequestResultError) {
        return RequestResultError.genericError();
      }
      final cguLastPublication = (getLastPublicationCguResult as RequestResultSuccess).result as CmsLastPublicationCGU;

      final query = Gget_personal_informationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getPersonalInformation;
      if (result != null) {
        return RequestResultSuccess(result.toUserData(cguLastPublicationAt: cguLastPublication));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ContactChange>> changeContact(String patientId, ContactChange contactChange) async {
    try {
      final mutation = Gchange_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.type = _mapTypeToGqlEnum(contactChange.type)
          ..vars.input.value = contactChange.value,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      if (graphQLResponse.data?.changeContact != null) {
        return RequestResultSuccess(contactChange);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<PasswordChange>> changePassword(String patientId, PasswordChange passwordChange) async {
    try {
      final mutation = Gchange_passwordReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.currentPassword = passwordChange.currentPassword
          ..vars.input.newPassword = passwordChange.newPassword,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final error = graphQLResponse.extractFirstExtensionCode();
        ChangePasswordDomainError domainError = ChangePasswordDomainError.getErrorDomainFromGraphQLError(error);

        if (domainError == ChangePasswordDomainError.MOT_DE_PASSE_NON_ROBUSTE) {
          final subError = graphQLResponse.extractFirstExtensionSubcode();
          domainError = ChangePasswordDomainError.getErrorDomainFromGraphQLError(subError);
        }

        return RequestResultError.error(domainError: domainError);
      }

      if (graphQLResponse.data?.changePassword != null) {
        return RequestResultSuccess(passwordChange);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<OtpValidation>> validateOtp(String patientId, OtpValidation otpValidation) async {
    try {
      final mutation = Gvalidate_otpReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.patientId = patientId
          ..vars.input.code = otpValidation.otp
          ..vars.input.value = otpValidation.contactChange.value
          ..vars.input.type = _mapTypeToGqlValue(otpValidation.contactChange.type),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      if (graphQLResponse.data?.validateOtp != null) {
        return RequestResultSuccess(otpValidation);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> setOnboardingDone(String patientId, String onBoardingDate) async {
    try {
      final mutation = Gset_onboarding_doneReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.onboardingDate = onBoardingDate,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data;
      final setOnboardingResponse = data?.setOnboarding;
      final setPreferenceConfidentialityDateResponse = data?.setPreferenceConfidentialityDate;
      if (_isSetOnboardingDone(setOnboardingResponse, setPreferenceConfidentialityDateResponse)) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  Future<RequestResult<CmsLastPublicationCGU>> _getCmsLastPublicationCGU() async {
    try {
      const String path = '/jsonapi/page?filter[field_jsonapi_path][value]=/cgu';
      final json = await jsonDataSource.get(cmsUrl, path);
      final CmsLastPublicationCGU result = fromJsonObject(json, mapper: CmsLastPublicationCGU.fromJson);
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  bool _isSetOnboardingDone(
    Gset_onboarding_doneData_setOnboarding? setOnboardingResponse,
    Gset_onboarding_doneData_setPreferenceConfidentialityDate? setPreferenceConfidentialityDateResponse,
  ) {
    return setOnboardingResponse != null &&
        setOnboardingResponse.success &&
        setPreferenceConfidentialityDateResponse != null &&
        setPreferenceConfidentialityDateResponse.success;
  }

  String _mapTypeToGqlValue(ContactChangeType type) {
    switch (type) {
      case ContactChangeType.MAIL:
        return 'MAIL';
      case ContactChangeType.PHONE:
        return 'PHONE';
    }
  }

  GChangeContactInputCanalType _mapTypeToGqlEnum(ContactChangeType type) {
    switch (type) {
      case ContactChangeType.MAIL:
        return GChangeContactInputCanalType.MAIL;
      case ContactChangeType.PHONE:
        return GChangeContactInputCanalType.PHONE;
    }
  }
}
