/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_get_partage_profil.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_partage_profil_send_partage_profil_form.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_mapper.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_gestionnaire.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_second_gestionnaire_data.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IPartagerProfilRepository {
  Future<RequestResult<List<PartagerProfilGestionnaire>>> getPartagerProfilData(String patientId);

  Future<RequestResult<void>> sendPartagerProfilForm({
    required String connectedUserPatientId,
    required String currentProfilPatientId,
    required PartagerProfilSecondGestionnaireData secondGestionnaireData,
  });
}

class PartagerProfilRepository extends IPartagerProfilRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  PartagerProfilRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<List<PartagerProfilGestionnaire>>> getPartagerProfilData(String patientId) async {
    try {
      final query = Gget_partage_profilReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.getLegalRepresentatives.patientId = patientId
          ..vars.getLegalRepresentatives.type = GDelegationTypeEnum.LEGAL_REPRESENTATIVE,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;
      if (result != null && result.getLegalRepresentatives.legalRepresentative != null) {
        final gestionnaires = result.getLegalRepresentatives.legalRepresentative!
            .map((representative) {
              final gestionnaireStatus = PartagerProfilMapper.toGestionnaireStatus(representative.statut);
              if (gestionnaireStatus != null) {
                return PartagerProfilGestionnaire(
                  lastName: representative.lastName,
                  firstName: representative.firstName,
                  status: gestionnaireStatus,
                );
              } else {
                return null;
              }
            })
            .whereType<PartagerProfilGestionnaire>()
            .toList();

        return RequestResultSuccess(gestionnaires);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> sendPartagerProfilForm({
    required String connectedUserPatientId,
    required String currentProfilPatientId,
    required PartagerProfilSecondGestionnaireData secondGestionnaireData,
  }) async {
    try {
      final mutation = Gsend_partage_profil_formReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.invitationSecondRLInput.loggedInUserId = connectedUserPatientId
          ..vars.invitationSecondRLInput.selectedEnsProfileId = currentProfilPatientId
          ..vars.invitationSecondRLInput.newRepresentativeLegal.nir = secondGestionnaireData.nir
          ..vars.invitationSecondRLInput.newRepresentativeLegal.lastName = secondGestionnaireData.lastName
          ..vars.invitationSecondRLInput.newRepresentativeLegal.firstName = secondGestionnaireData.firstName
          ..vars.invitationSecondRLInput.newRepresentativeLegal.birthDate = EnsDateUtils.formatYYYYMMDD(
            secondGestionnaireData.birthDate,
          ),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.sendInvitationSecondRL;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.networkError();
    }
  }
}
