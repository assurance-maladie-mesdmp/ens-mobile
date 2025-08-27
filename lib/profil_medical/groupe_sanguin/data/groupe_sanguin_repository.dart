/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_add_groupe_sanguin.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_delete_groupe_sanguin.mutation.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_get_groupe_sanguin.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_groupe_sanguin_update_groupe_sanguin.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/urls_config.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/data/groupe_sanguin_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/informations_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IGroupeSanguinRepository {
  Future<RequestResult<List<InformationsGroupeSanguin>>> getCmsInformationsGroupeSanguin();

  Future<RequestResult<GroupeSanguinData?>> getGroupeSanguin(String patientId);

  Future<RequestResult<void>> addGroupeSanguin(String patientId, GroupeSanguin groupeSanguin);

  Future<RequestResult<void>> deleteGroupeSanguin(String id, String patientId);

  Future<RequestResult<void>> updateGroupeSanguin(String id, String patientId, GroupeSanguin groupeSanguin);
}

class GroupeSanguinRepository extends IGroupeSanguinRepository {
  final JsonDataSource dataSource;
  final UrlsConfig urls;
  final Client ferryClient;
  final Crashlytics crashlytics;

  GroupeSanguinRepository(this.dataSource, this.urls, this.ferryClient, this.crashlytics);

  String get cmsUrl => urls.cmsUrl;

  @override
  Future<RequestResult<List<InformationsGroupeSanguin>>> getCmsInformationsGroupeSanguin() async {
    try {
      const String path = '/jsonapi/groupe-sanguin';
      final json = await dataSource.get(cmsUrl, path);
      final List<InformationsGroupeSanguin> result = fromJsonList(json, mapper: InformationsGroupeSanguin.fromJson);
      return RequestResultSuccess(result);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<GroupeSanguinData?>> getGroupeSanguin(String patientId) async {
    try {
      final query = Gget_groupe_sanguinReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.fetchBloodGroup;
      return result != null
          ? RequestResultSuccess(
              GroupeSanguinData(
                id: result.id,
                groupeSanguin: result.bloodGroup.toGroupeSanguinEnum(),
                auteur: result.author.toFullName(),
              ),
            )
          : RequestResultSuccess(null);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addGroupeSanguin(String patientId, GroupeSanguin groupeSanguin) async {
    try {
      final query = Gadd_groupe_sanguinReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.bloodGroupInput.bloodGroup = groupeSanguin.toGBloodGroupEnum()
          ..vars.bloodGroupInput.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final querySuccess = graphQLResponse.data?.createBloodGroup.success;
      if (querySuccess != null && querySuccess) {
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
  Future<RequestResult<void>> deleteGroupeSanguin(String id, String patientId) async {
    try {
      final query = Gdelete_groupe_sanguinReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.id = id
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final querySuccess = graphQLResponse.data?.removeBloodGroup.success;
      if (querySuccess != null && querySuccess) {
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
  Future<RequestResult<void>> updateGroupeSanguin(String id, String patientId, GroupeSanguin groupeSanguin) async {
    try {
      final query = Gupdate_groupe_sanguinReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.bloodGroupUpdateInput.bloodGroup = groupeSanguin.toGBloodGroupEnum()
          ..vars.bloodGroupUpdateInput.patientId = patientId
          ..vars.bloodGroupUpdateInput.bloodGroupId = id,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final querySuccess = graphQLResponse.data?.updateBloodGroup.success;
      if (querySuccess != null && querySuccess) {
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
