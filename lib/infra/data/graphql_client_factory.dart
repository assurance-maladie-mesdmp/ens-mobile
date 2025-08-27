/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:ferry/ferry.dart' as ferry;
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/data/override_configuration_repository.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class GraphQlClientFactory {
  final AppConfig appConfig;
  final OverrideConfigurationRepository overrideConfigurationRepository;
  final http.Client httpClient;

  GraphQlClientFactory(this.appConfig, this.overrideConfigurationRepository, this.httpClient);

  ferry.Client getFerryClient({bool isEnrolement = false}) {
    String endPoint;

    if (appConfig.configName == AppConfigName.LOCAL) {
      final overrideConfiguration =
          overrideConfigurationRepository.getOverrideConfiguration(isEnrolement: isEnrolement);
      endPoint = overrideConfiguration.bffBaseUrl;
    } else {
      if (isEnrolement) {
        endPoint = appConfig.bffEnrolementUrl;
      } else {
        endPoint = appConfig.bffBaseUrl;
      }
    }

    final cache = ferry.Cache();
    final link = HttpLink(endPoint, httpClient: httpClient);

    final ferryClient = ferry.Client(
      link: link,
      cache: cache,
    );

    _deleteHiveFiles();

    return ferryClient;
  }

  static Future _deleteHiveFiles() async {
    final Directory appDirectory = await getApplicationDocumentsDirectory();

    final hiveFiles = await appDirectory.list(recursive: false).where(
      (element) {
        final path = element.path;
        return element is File && (path.endsWith('graphql.hive') || path.endsWith('graphql.lock'));
      },
    ).toList();

    for (final file in hiveFiles) {
      if (await file.exists()) {
        try {
          file.delete();
        } catch (_) {}
      }
    }
  }
}
