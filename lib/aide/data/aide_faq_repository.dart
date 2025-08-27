/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:html_unescape/html_unescape_small.dart';

abstract class IAideFaqRepository {
  Future<RequestResult<List<FaqItem>>> getFaqItems();
}

class AideFaqRepository extends IAideFaqRepository {
  final JsonDataSource jsonDataSource;
  final String cmsUrl;
  final Crashlytics crashlytics;

  AideFaqRepository(this.jsonDataSource, this.cmsUrl, this.crashlytics);

  @override
  Future<RequestResult<List<FaqItem>>> getFaqItems() async {
    try {
      const String path = '/jsonapi/faq';
      final json = await jsonDataSource.get(cmsUrl, path);
      final List<FaqItem?> result = fromJsonList(json, mapper: AideFaqRepository.fromJson);
      return RequestResultSuccess(result.whereType<FaqItem>().toList());
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  static FaqItem? fromJson(Map<String, dynamic> json) {
    if (json['questions'] is! List) return null;
    final unescape = HtmlUnescape();
    return FaqItem(
      id: json['link'] as String,
      title: unescape.convert(json['title'] as String),
      image: json['image'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((jsonQuestion) => _toFaqQuestion(unescape, jsonQuestion as Map<String, dynamic>))
          .toList(),
    );
  }
}

FaqQuestion _toFaqQuestion(HtmlUnescape unescape, Map<String, dynamic> json) {
  return FaqQuestion(
    question: json['title'] as String,
    response: json['content'] as String,
  );
}
