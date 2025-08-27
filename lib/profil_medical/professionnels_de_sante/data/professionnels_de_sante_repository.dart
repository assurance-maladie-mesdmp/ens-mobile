/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_as_get_as_suggestion.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_add_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_delete_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_confidentialities.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_details.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_synchro_medecin_traitant.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_add_role_or_add_ps_and_role.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_remove_role.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/acteur_de_sante_suggestion_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/professionnels_de_sante_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/professionnel_sante_confidentialities.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/professionnels_de_sante_domain_error.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IProfessionnelsDeSanteRepository {
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSanteSynchroMedecinTraitant(String patientId);

  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSante(String patientId);

  Future<RequestResult<List<ActeurDeSanteSuggestion>>> getAsSuggestions(String patientId);

  Future<RequestResult<void>> addPs({
    required String patientId,
    required String psId,
    PsRoleDomaine? role,
  });

  Future<RequestResult<void>> removeProfessionnelDeSante(String patientId, String id);

  Future<RequestResult<ProfessionnelDeSante>> getProfessionnelDeSanteDetail(String idNat, String patientId);

  Future<RequestResult<ProfessionnelSanteConfidentialities>> getProfessionnelDeSanteConfidentialities(
    String patientId,
  );

  Future<RequestResult<void>> addRoleProfessionnelDeSante({
    required String patientId,
    required String psNationalId,
    required PsRoleDomaine role,
  });

  Future<RequestResult<void>> removeRoleProfessionnelDeSante({
    required String patientId,
    required String psIdNat,
  });
}

class ProfessionnelsDeSanteRepository extends IProfessionnelsDeSanteRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;
  final DeviceSecureStorageWrapper secureStorage;

  ProfessionnelsDeSanteRepository(this.ferryClient, this.crashlytics, this.secureStorage);

  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSanteSynchroMedecinTraitant(
    String patientId,
  ) async {
    try {
      final query = Gget_pml_professionnels_sante_synchro_medecin_traitantReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.getHealthProfessionalsAndSynchroMt.healthProfessionals;

      if (data == null) {
        return RequestResultError.genericError();
      }

      final professionelsSante = data
          .map(
            (professionnel) =>
                ProfessionnelsDeSanteRepositoryMapper.toEnsProfessionnelSanteFromHealthProfessionalModel(professionnel),
          )
          .toList();

      return RequestResultSuccess(professionelsSante);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionnelsDeSante(String patientId) async {
    try {
      final query = Gget_pml_professionnels_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.getHealthProfessionals.healthProfessionals;

      if (data == null) {
        return RequestResultError.genericError();
      }

      final professionnelsSante = data
          .map(
            (professionnel) =>
                ProfessionnelsDeSanteRepositoryMapper.toEnsProfessionnelSanteFromHealthProfessionalModel(professionnel),
          )
          .toList();

      return RequestResultSuccess(professionnelsSante);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addPs({
    required String patientId,
    required String psId,
    PsRoleDomaine? role,
  }) async {
    try {
      final query = Gadd_professionnel_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.psId = psId
          ..vars.role = GHealthProfessionalRoleEnumExtension.getGHealthProfessionalRoleEnumFrom(role),
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? error = graphQLResponse.extractFirstExtensionCode();
        final domainError = ProfessionnelsDeSanteDomainError.getErrorDomainFromGraphQLError(codeError: error);

        return RequestResultError.error(domainError: domainError);
      }

      final result = graphQLResponse.data?.postHealthProfessional;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.error(domainError: ProfessionnelsDeSanteDomainError.GENERIC);
      }
    } catch (e) {
      return RequestResultError.error(domainError: ProfessionnelsDeSanteDomainError.GENERIC);
    }
  }

  @override
  Future<RequestResult<void>> removeProfessionnelDeSante(String patientId, String psId) async {
    try {
      final query = Gdelete_professionnel_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.psId = psId,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteHealthProfessional;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ProfessionnelDeSante>> getProfessionnelDeSanteDetail(String idNat, String patientId) async {
    try {
      final query = Gget_professionnels_de_sante_detailsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = idNat,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? errorMessage = graphQLResponse.graphqlErrors?.first.message;
        final domainError = ProfessionnelsDeSanteDomainError.getErrorDomainFromGraphQLError(errorMessage: errorMessage);

        return RequestResultError.error(domainError: domainError);
      }

      final result = graphQLResponse.data;
      if (result != null) {
        final tempPs = result.getHealthProfessionalReferentialByIdNat;
        final ps = ProfessionnelsDeSanteRepositoryMapper.toEnsProfessionnelSanteFromHealthProfessionalReferentialModel(
          tempPs,
        );
        return RequestResultSuccess(ps);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<ActeurDeSanteSuggestion>>> getAsSuggestions(String patientId) async {
    try {
      final query = Gget_as_suggestionsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.typeSuggestion = GTypeSuggestion.AS,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        if (graphQLResponse.hasNotFoundError()) {
          return RequestResultSuccess(const []);
        } else {
          return RequestResultError.genericError();
        }
      }

      final result = graphQLResponse.data?.getHealthActorsSuggestions;
      if (result != null) {
        final suggestions = result.toAsSuggestions();
        return RequestResultSuccess(suggestions);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<ProfessionnelSanteConfidentialities>> getProfessionnelDeSanteConfidentialities(
    String patientId,
  ) async {
    try {
      final query = Gget_confidentialities_psReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.dmpConsentementInput.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getHealthProfessionalConfidentialities;
      if (result != null) {
        final confidentialities = ProfessionnelsDeSanteRepositoryMapper.toProfessionnelSanteConfidentialities(result);
        return RequestResultSuccess(confidentialities);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addRoleProfessionnelDeSante({
    required String patientId,
    required String psNationalId,
    required PsRoleDomaine role,
  }) async {
    try {
      final query = Gupdate_professionel_sante_roleReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.psNationalId = psNationalId
          ..vars.role = GHealthProfessionalRoleEnumExtension.getGHealthProfessionalRoleEnumFrom(role),
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.updateHealthProfessionalRoleByIdNat;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> removeRoleProfessionnelDeSante({
    required String patientId,
    required String psIdNat,
  }) async {
    try {
      final query = Gdelete_professionnel_sante_roleReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.psIdNat = psIdNat,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;

      if (result != null && result.removeHealthProfessionalRole.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
