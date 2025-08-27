/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/ayants_droits/data/ayants_droits_repository_mapper.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayants_droits_pending_invitation.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_accept_or_refuse_partage_profil_invitation.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_ayants_droits.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IAyantsDroitsRepository {
  Future<GetProfilsRattachesAndAdPendingInvitationsResponse> getProfilsRattachesAndAdPendingInvitations(
    String patientId,
  );

  Future<RequestResult<void>> sendAyantDroitInvitationConfirmation({
    required AyantDroitsPartageProfil adPartageProfil,
    required String odId,
    required ConfirmationPartageProfilStatut statutPartage,
  });
}

class GetProfilsRattachesAndAdPendingInvitationsResponse extends Equatable {
  final RequestResult<List<EnsProfilRattache>> profilsRattachesResponse;
  final RequestResult<List<AyantsDroitsPendingInvitation>> pendingInvitationResponse;

  const GetProfilsRattachesAndAdPendingInvitationsResponse(
    this.profilsRattachesResponse,
    this.pendingInvitationResponse,
  );

  @override
  List<Object?> get props => [profilsRattachesResponse, pendingInvitationResponse];
}

class AyantsDroitsRepository extends IAyantsDroitsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  AyantsDroitsRepository({
    required this.ferryClient,
    required this.crashlytics,
  });

  @override
  Future<GetProfilsRattachesAndAdPendingInvitationsResponse> getProfilsRattachesAndAdPendingInvitations(
    String patientId,
  ) async {
    try {
      final query = Gget_ayants_droitsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.CacheFirst
          ..vars.input.patientId = patientId
          ..vars.getPendingInvitationsInput.idEnsOD = patientId
          ..vars.getPendingInvitationsInput.type = GDelegationTypeEnum.LEGAL_REPRESENTATIVE,
      );

      List<AyantsDroitsPendingInvitation> pendingInvitation;
      List<EnsProfilRattache> profilsRattaches;

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.linkException != null) {
        return GetProfilsRattachesAndAdPendingInvitationsResponse(
          RequestResultError.genericError(),
          RequestResultError.genericError(),
        );
      }

      final result = graphQLResponse.data;
      if (result != null) {
        pendingInvitation = result.getPendingInvitations.pendingInvitations
                ?.mapIndexed(
                  (index, invitation) => AyantsDroitsPendingInvitation(
                    adPartageProfile: AyantDroitsPartageProfil(
                      firstName: invitation.firstName,
                      lastName: invitation.lastName,
                      patientId: invitation.idEns,
                      birthDate: invitation.birthDate,
                      color: ProfilesColorHelper.getIconColor(index + (result.getAyantsDroits?.length ?? 0)),
                    ),
                    endDate: DateTime.parse(invitation.endDate),
                  ),
                )
                .toList() ??
            [];

        if (result.getAyantsDroits != null) {
          profilsRattaches =
              result.getAyantsDroits!.indexed.map((entry) => entry.$2.toEnsProfilRattache(entry.$1)).toList();
        } else {
          return GetProfilsRattachesAndAdPendingInvitationsResponse(
            RequestResultError.genericError(),
            RequestResultSuccess(pendingInvitation),
          );
        }
        return GetProfilsRattachesAndAdPendingInvitationsResponse(
          RequestResultSuccess(profilsRattaches),
          RequestResultSuccess(pendingInvitation),
        );
      } else {
        return GetProfilsRattachesAndAdPendingInvitationsResponse(
          RequestResultError.genericError(),
          RequestResultError.genericError(),
        );
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return GetProfilsRattachesAndAdPendingInvitationsResponse(
        RequestResultError.genericError(),
        RequestResultError.genericError(),
      );
    }
  }

  @override
  Future<RequestResult<void>> sendAyantDroitInvitationConfirmation({
    required AyantDroitsPartageProfil adPartageProfil,
    required String odId,
    required ConfirmationPartageProfilStatut statutPartage,
  }) async {
    try {
      final mutation = Gaccept_or_refuse_partage_profil_invitationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.accessValidatedOrRejectedInput.idEnsOD = odId
          ..vars.accessValidatedOrRejectedInput.idEnsAD = adPartageProfil.patientId
          ..vars.accessValidatedOrRejectedInput.type = toDemandeAccesStatutEnum(statutPartage)
          ..vars.accessValidatedOrRejectedInput.firstNameAD = adPartageProfil.firstName
          ..vars.accessValidatedOrRejectedInput.lastNameAD = adPartageProfil.lastName
          ..vars.accessValidatedOrRejectedInput.birthDate = adPartageProfil.birthDate,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.setAccessValidatedOrRejected;
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
}

GDemandeAccesStatutEnum toDemandeAccesStatutEnum(ConfirmationPartageProfilStatut confirmationPartageProfilStatut) {
  return switch (confirmationPartageProfilStatut) {
    ConfirmationPartageProfilStatut.ACCEPTED => GDemandeAccesStatutEnum.VALIDATED,
    ConfirmationPartageProfilStatut.REFUSED => GDemandeAccesStatutEnum.REFUSED,
    ConfirmationPartageProfilStatut.UNKNOWN => GDemandeAccesStatutEnum.gUnknownEnumValue,
  };
}
