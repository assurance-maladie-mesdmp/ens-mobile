/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_create.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_delete.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_get_entourage.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_update.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_update_organ_consent.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/data/entourage_contact_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IEntourageContactRepository {
  Future<RequestResult<void>> createEntourageContact(String patientId, EditingEntourageContact editingEntourageContact);

  Future<RequestResult<EntourageEtVolontes>> getEntourageEtVolontes(String patientId);

  Future<RequestResult<void>> updateEntourageContact(String patientId, EditingEntourageContact editingEntourageContact);

  Future<RequestResult<void>> deleteEntourageContact(String patientId, String contactId);

  Future<RequestResult<void>> updateOrganConsent(String patientId, bool consent);
}

class EntourageEtVolontes extends Equatable {
  final List<EntourageContact> entourageContacts;
  final bool consent;

  const EntourageEtVolontes({required this.entourageContacts, required this.consent});

  @override
  List<Object?> get props => [entourageContacts, consent];
}

class EntourageContactRepository extends IEntourageContactRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  EntourageContactRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<void>> createEntourageContact(
    String patientId,
    EditingEntourageContact editingEntourageContact,
  ) async {
    try {
      final mutation = Gcreate_entourage_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.contactsType =
              ListBuilder(EntourageContactRepositoryMapper.getContactType(editingEntourageContact))
          ..vars.input.relation = EntourageContactRepositoryMapper.getRelation(editingEntourageContact.link)
          ..vars.input.mobileNumber = editingEntourageContact.phone1
          ..vars.input.fixedLineNumber = editingEntourageContact.phone2
          ..vars.input.firstName = editingEntourageContact.firstName
          ..vars.input.lastName = editingEntourageContact.lastName
          ..vars.input.emailAddress = editingEntourageContact.email
          ..vars.input.streetAddressLine = editingEntourageContact.address
          ..vars.input.city = editingEntourageContact.city
          ..vars.input.country = editingEntourageContact.country
          ..vars.input.postalCode = editingEntourageContact.postalCode
          ..vars.input.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data;
      if (graphQLResult != null) {
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
  Future<RequestResult<void>> updateEntourageContact(
    String patientId,
    EditingEntourageContact editingEntourageContact,
  ) async {
    try {
      final mutation = Gmodify_entourage_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.contact.contactType = EntourageContactRepositoryMapper.getContactType(editingEntourageContact).first
          ..vars.contact.relation = EntourageContactRepositoryMapper.getRelation(editingEntourageContact.link)
          ..vars.contact.mobileNumber = editingEntourageContact.phone1
          ..vars.contact.fixedLineNumber = editingEntourageContact.phone2
          ..vars.contact.firstName = editingEntourageContact.firstName
          ..vars.contact.lastName = editingEntourageContact.lastName
          ..vars.contact.emailAddress = editingEntourageContact.email
          ..vars.contact.streetAddressLine = editingEntourageContact.address
          ..vars.contact.city = editingEntourageContact.city
          ..vars.contact.country = editingEntourageContact.country
          ..vars.contact.postalCode = editingEntourageContact.postalCode
          ..vars.contact.idContact = editingEntourageContact.id
          ..vars.contact.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data;
      if (graphQLResult != null) {
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
  Future<RequestResult<void>> deleteEntourageContact(String patientId, String contactId) async {
    try {
      final mutation = Gdelete_entourage_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.contactId = contactId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data;
      if (graphQLResult != null) {
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
  Future<RequestResult<EntourageEtVolontes>> getEntourageEtVolontes(String patientId) async {
    try {
      final query = Gget_entourage_contactReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        if (graphQLResponse.hasNotFoundError()) {
          return RequestResultSuccess(const EntourageEtVolontes(entourageContacts: [], consent: false));
        } else {
          return RequestResultError.genericError();
        }
      }

      final result = graphQLResponse.data?.getWishes.structure;
      if (result == null) {
        return RequestResultError.genericError();
      }

      final List<EntourageContact> entourageContacts = [
        ...EntourageContactRepositoryMapper.extractEmergencyContacts(result),
        ...EntourageContactRepositoryMapper.extractHelpedPersons(result),
        ...EntourageContactRepositoryMapper.extractCaregivers(result),
        ...EntourageContactRepositoryMapper.extractTrustedPerson(result),
      ].sorted((contactA, contactB) => contactA.firstName.compareTo(contactB.firstName));

      return RequestResultSuccess(
        EntourageEtVolontes(
          entourageContacts: entourageContacts,
          consent: result.informedAboutOrganDonation == true,
        ),
      );
    } catch (e) {
      crashlytics.recordError(e, null);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateOrganConsent(String patientId, bool consent) async {
    try {
      final mutation = Gupdate_organ_consentReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.informedAboutOrganDonation = consent,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data;
      if (graphQLResult != null) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
