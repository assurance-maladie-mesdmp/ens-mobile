/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/urls_config.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';

abstract class IInterruptionServiceRepository {
  Future<RequestResult<List<InterruptionDeServiceInfo>>> getCmsMessageInterruptionService();
}

class InterruptionServiceRepository extends IInterruptionServiceRepository {
  final JsonDataSource dataSource;
  final UrlsConfig urls;

  InterruptionServiceRepository(this.dataSource, this.urls);

  String get cmsUrl => urls.cmsUrl;

  @override
  Future<RequestResult<List<InterruptionDeServiceInfo>>> getCmsMessageInterruptionService() async {
    try {
      const String path = '/jsonapi/coupure-planifiee';
      final json = await dataSource.get(cmsUrl, path);
      final List<InterruptionDeServiceInfo> result = fromJsonList(json, mapper: InterruptionDeServiceInfo.fromJson);
      return RequestResultSuccess(result);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
