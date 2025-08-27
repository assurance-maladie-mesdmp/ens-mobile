/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_as_get_as_suggestion.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_add_es.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_delete_es.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es_details.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/acteur_de_sante_suggestion_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/etablissements_de_sante_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/etablissements_de_sante_domain_error.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IEtablissementDeSanteRepository {
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementsDeSante(String patientId);

  Future<RequestResult<void>> addEtablissementDeSante(String patientId, String esId);

  Future<RequestResult<void>> removeEtablissementDeSante(String patientId, String esId);

  Future<RequestResult<EtablissementDeSante>> getEtablissementDeSante(String id, String patientId);

  Future<RequestResult<List<EtablissementDeSanteSuggestion>>> getPharmacieSuggestions(String patientId);
}

class EtablissementDeSanteRepository extends IEtablissementDeSanteRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  EtablissementDeSanteRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementsDeSante(String patientId) async {
    try {
      final query = Gget_etablissements_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.getHealthStructures.healthStructures;

      if (result == null) {
        return RequestResultError.genericError();
      }

      final etablissementsDeSante = result
          .map(
            (professionnel) =>
                EtablissementDeSanteRepositoryMapper.toEtablissementDeSanteFromHealthStructureReferentialModel(
              professionnel,
            ),
          )
          .toList();

      return RequestResultSuccess(etablissementsDeSante);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addEtablissementDeSante(String patientId, String esId) async {
    try {
      final query = Gadd_etablissement_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.esId = esId,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final String? codeError = graphQLResponse.extractFirstExtensionCode();
        final domainError = EtablissementsDeSanteDomainError.getErrorDomainFromGraphQLError(codeError: codeError);
        return RequestResultError(domainError: domainError);
      }

      final result = graphQLResponse.data?.postHealthStructure;
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
  Future<RequestResult<void>> removeEtablissementDeSante(String patientId, String esId) async {
    try {
      final query = Gdelete_etablissement_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.esOrganizationId = esId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteHealthStructure;
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
  Future<RequestResult<EtablissementDeSante>> getEtablissementDeSante(String id, String patientId) async {
    try {
      final query = Gget_es_detailsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final domainError = EtablissementsDeSanteDomainError.getErrorDomainFromGraphQLError(
          isErrorNotFound: graphQLResponse.hasNotFoundError(),
        );

        return RequestResultError(domainError: domainError);
      }

      final result = graphQLResponse.data?.getHealthStructureReferential;

      if (result != null) {
        final alias = result.alias;
        final name = result.name;
        final fullName = alias == null || alias.isEmpty ? name : '$name ( $alias )';
        final etablissementDeSante = EtablissementDeSante(
          idNat: id,
          nameWithAlias: fullName,
          name: name,
          activity: result.activity,
          organizationId: result.organizationId,
          isContactable: result.isContactable,
          mail: result.mail,
          address: EtablissementDeSanteRepositoryMapper.mapToEnsActeurSanteAddress(result.addresses),
          active: result.active,
        );
        return RequestResultSuccess(etablissementDeSante);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<EtablissementDeSanteSuggestion>>> getPharmacieSuggestions(
    String patientId,
  ) async {
    try {
      final query = Gget_as_suggestionsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.typeSuggestion = GTypeSuggestion.PHARMACIE,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getHealthActorsSuggestions;

      if (result != null) {
        final healthStructuresSuggestions = result.healthActorsSuggestions.toEtablissementDeSanteSuggestions();

        return RequestResultSuccess(healthStructuresSuggestions);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
