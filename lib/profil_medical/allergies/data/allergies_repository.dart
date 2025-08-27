/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_add_allergie.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_delete_allergie.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_get_allergies.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_get_allergies.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies_update_allergie.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergie_repo_input.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/allergies_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/data/get_allergies_response.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IAllergiesRepository {
  Future<RequestResult<GetAllergiesResponse>> getAllergies(String patientId);

  Future<RequestResult<void>> addAllergie(String patientId, AddAllergieInputModel addAllergieInputModel);

  Future<RequestResult<void>> updateAllergie(String patientId, UpdateAllergieInputModel updateAllergieInputModel);

  Future<RequestResult<String>> deleteAllergie(String patientId, String id);
}

class AllergiesRepository extends IAllergiesRepository {
  final Client ferryClient;
  final ILinksInMemoryInteractor linksInMemoryInteractor;
  final Crashlytics crashlytics;

  AllergiesRepository(
    this.ferryClient,
    this.linksInMemoryInteractor,
    this.crashlytics,
  );

  @override
  Future<RequestResult<GetAllergiesResponse>> getAllergies(String patientId) async {
    try {
      final query = Gget_allergiesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.allergies;

      if (result != null) {
        final allergies = AllergiesRepositoryMapper.toEnsAllergies(
          result.allergies,
          result.unconcernedDeclarationDate,
        );
        _updateTraitementsLinks(result.allergies.toList());
        return RequestResultSuccess(allergies);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addAllergie(
    String patientId,
    AddAllergieInputModel addAllergieInputModel,
  ) async {
    try {
      final mutation = Gadd_allergieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.allergy = AllergiesRepositoryMapper.buildAllergieInput(patientId, addAllergieInputModel),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.postAllergy;
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
  Future<RequestResult<void>> updateAllergie(
    String patientId,
    UpdateAllergieInputModel updateAllergieModel,
  ) async {
    try {
      final updateInput = AllergiesRepositoryMapper.buildAllergieUpdateInput(patientId, updateAllergieModel);
      final mutation = Gupdate_allergieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.allergy = updateInput,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.putAllergy;
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
  Future<RequestResult<String>> deleteAllergie(String patientId, String id) async {
    try {
      final mutation = Gdelete_allergieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteAllergy;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(id);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  Future<void> _updateTraitementsLinks(List<Gget_allergiesData_allergies_allergies> allergies) async {
    for (final allergie in allergies) {
      allergie.linkedTreatments?.forEach((linkTraitement) {
        linksInMemoryInteractor.addTraitementToAllergiesLink(
          traitementId: linkTraitement.treatment.id,
          allergieId: allergie.id,
          linkId: linkTraitement.linkId,
        );
      });
    }
  }
}
