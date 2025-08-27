/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/aide/data/aide_faq_repository.dart';
import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';

class GuestAideFaqRepository extends IAideFaqRepository {
  final JsonDataSource jsonDataSource;
  final String cmsUrl;

  GuestAideFaqRepository(this.jsonDataSource, this.cmsUrl);

  @override
  Future<RequestResult<List<FaqItem>>> getFaqItems() async {
    const String path = '/jsonapi/faq';
    final json = await jsonDataSource.get(cmsUrl, path);
    return RequestResultSuccess(
      fromJsonList(json, mapper: AideFaqRepository.fromJson).whereType<FaqItem>().toList(),
    );
  }
}
