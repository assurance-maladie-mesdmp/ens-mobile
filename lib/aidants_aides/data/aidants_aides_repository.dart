/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/aidants_aides/data/aidants_aides_repository_mapper.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/aidants_aides_domain_error.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/delegation.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/invitation_from_aide.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/potentiel_aidant.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_accept_invitation_from_aide.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delete_delegation.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_fetch_potentiel_aidant.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_delegations_pour_aidant.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_delegations_pour_aide.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_refuse_invitation_from_aide.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_send_invitation_to_potentiel_aidant.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:intl/intl.dart';

class DeleteDelegationResponse extends Equatable {
  final String? attestationDocumentId;
  final EnsFileContent? attestationPdf;

  const DeleteDelegationResponse({required this.attestationDocumentId, required this.attestationPdf});

  @override
  List<Object?> get props => [attestationDocumentId, attestationPdf];
}

class AcceptInvitationResponse extends Equatable {
  final EnsFileContent? attestationPdf;

  const AcceptInvitationResponse({required this.attestationPdf});

  @override
  List<Object?> get props => [attestationPdf];
}

abstract class IAidantsAidesRepository {
  Future<RequestResult<PotentielAidant>> fetchPotentielAidant({
    required String numeroSecu,
    required String firstName,
    required String lastName,
    required DateTime birthDate,
  });

  Future<RequestResult<void>> sendInvitationToPotentielAidant({
    required String patientId,
    required String transactionId,
  });

  Future<RequestResult<List<InvitationFromAide>>> fetchInvitationsFromAides();

  Future<RequestResult<DelegationsPourAide>> fetchDelegationsPourAide();

  Future<RequestResult<DelegationsPourAidant>> fetchDelegationsPourAidant();

  Future<RequestResult<AcceptInvitationResponse>> acceptInvitationFromAide({required String invitationId});

  Future<RequestResult<void>> refuseInvitationFromAide({required String invitationId});

  Future<RequestResult<DeleteDelegationResponse>> deleteDelegation({required String delegationId});
}

class AidantsAidesRepository extends IAidantsAidesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  AidantsAidesRepository({
    required this.ferryClient,
    required this.crashlytics,
  });

  @override
  Future<RequestResult<PotentielAidant>> fetchPotentielAidant({
    required String numeroSecu,
    required String firstName,
    required String lastName,
    required DateTime birthDate,
  }) async {
    try {
      final mutation = Gfetch_potentiel_aidantReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.delegationMatchPotentialDelegateInput.ins = numeroSecu
          ..vars.delegationMatchPotentialDelegateInput.firstGivenName = firstName
          ..vars.delegationMatchPotentialDelegateInput.familyName = lastName
          ..vars.delegationMatchPotentialDelegateInput.birthDate = DateFormat('yyyy-MM-dd').format(birthDate),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = AidantsAidesDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }

      final result = graphQLResponse.data?.delegationMatchPotentialDelegate;
      if (result == null) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(
          PotentielAidant(
            patientId: result.idp,
            firstName: result.givenNames,
            lastName: result.familyName,
            birthDate: DateTime.parse(result.birthDate),
            transactionId: result.transactionId,
            numeroSecu: result.ins,
          ),
        );
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> sendInvitationToPotentielAidant({
    required String patientId,
    required String transactionId,
  }) async {
    try {
      final mutation = Gsend_invitation_to_potentiel_aidantReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.delegationInviteToCaregivingInput.idp = patientId
          ..vars.delegationInviteToCaregivingInput.transactionId = transactionId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = AidantsAidesDomainError.getErrorDomainFromGraphQLError(error);

        return RequestResultError.error(domainError: domainError);
      }
      final result = graphQLResponse.data?.delegationInviteToCaregiving;
      if (result != null && result.success) {
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
  Future<RequestResult<List<InvitationFromAide>>> fetchInvitationsFromAides() async {
    try {
      final query = Gget_invitations_from_aidesReq(
        (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data;
      if (data != null) {
        final invitationsFromAides = data.toInvitationsFromAides();
        return RequestResultSuccess(invitationsFromAides);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<DelegationsPourAide>> fetchDelegationsPourAide() async {
    try {
      final query = Gget_delegations_pour_aideReq(
        (builder) => builder.fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data;
      final delegationsEnCours = result?.delegations;
      final delegationsEnAttente = result?.delegationInvitations;

      if (result == null || delegationsEnCours == null || delegationsEnAttente == null) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(
          DelegationsPourAide(
            delegationsEnCours: delegationsEnCours
                .mapIndexed((index, delegation) => delegation.toDelegationEnCours(index, DelegationActeurType.AIDANT))
                .toList(),
            delegationsEnAttente: delegationsEnAttente
                .mapIndexed((index, delegation) => delegation.toDelegationEnAttente(index))
                .toList(),
          ),
        );
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<DelegationsPourAidant>> fetchDelegationsPourAidant() async {
    try {
      final query = Gget_delegations_pour_aidantReq(
        (builder) => builder.fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.delegations;

      if (result == null) {
        return RequestResultError.genericError();
      } else {
        final delegationsEnCours = result
            .mapIndexed((index, delegation) => delegation.toDelegationEnCours(index, DelegationActeurType.AIDE))
            .toList();
        return RequestResultSuccess(DelegationsPourAidant(delegationsEnCours: delegationsEnCours));
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<AcceptInvitationResponse>> acceptInvitationFromAide({required String invitationId}) async {
    try {
      final query = Gaccept_invitation_from_aideReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.invitationId = invitationId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.delegationAcceptInvitation;
      if (data != null) {
        final attestationContent = data.attestation;
        EnsFileContent? attestation;
        if (attestationContent != null && attestationContent.isNotEmpty) {
          attestation = EnsFileContent(
            filename: 'Justificatif',
            base64Content: attestationContent,
            mimeType: MimeTypeUtils.PDF_LABEL,
          );
        }
        return RequestResultSuccess(AcceptInvitationResponse(attestationPdf: attestation));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> refuseInvitationFromAide({required String invitationId}) async {
    try {
      final query = Grefuse_invitation_from_aideReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.invitationId = invitationId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.delegationRefuseInvitation;
      if (data != null) {
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
  Future<RequestResult<DeleteDelegationResponse>> deleteDelegation({required String delegationId}) async {
    try {
      final query = Gdelete_delegationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input.delegationId = delegationId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.delegationRevoke;
      if (data != null) {
        final documentId = data.isSavedInDmp == true ? data.documentId : null;
        final attestationPdf = data.attestation != null
            ? EnsFileContent(
                filename: 'Justificatif',
                base64Content: data.attestation!,
                mimeType: MimeTypeUtils.PDF_LABEL,
              )
            : null;
        final response = DeleteDelegationResponse(attestationDocumentId: documentId, attestationPdf: attestationPdf);
        return RequestResultSuccess(response);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
