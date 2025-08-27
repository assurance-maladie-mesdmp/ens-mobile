/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/urls_config.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';

abstract class IMessagesPannesRepository {
  Future<RequestResult<EnsMessagePanne?>> getLoginScreenCmsMessagePanne();

  Future<RequestResult<EnsMessagePanne?>> getHomeConnecteeCmsMessagePanne();
}

class MessagesPannesRepository extends IMessagesPannesRepository {
  final JsonDataSource dataSource;
  final UrlsConfig urls;

  MessagesPannesRepository(this.dataSource, this.urls);

  String get cmsUrl => urls.cmsUrl;

  @override
  Future<RequestResult<EnsMessagePanne?>> getLoginScreenCmsMessagePanne() async {
    try {
      const String path = '/jsonapi/block_content/block_home_institutionnel_notif?include=messages&jsonapi_include=1';
      final json = await dataSource.get(cmsUrl, path);
      final EnsMessagePanne? result = fromJsonObject(json, mapper: EnsMessagePanne.fromJson);
      return RequestResultSuccess(result);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMessagePanne?>> getHomeConnecteeCmsMessagePanne() async {
    try {
      const String path = '/jsonapi/block_content/block_home_logged_in_notif?include=messages&jsonapi_include=1';
      final json = await dataSource.get(cmsUrl, path);
      final EnsMessagePanne? result = fromJsonObject(json, mapper: EnsMessagePanne.fromJson);
      return RequestResultSuccess(result);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
