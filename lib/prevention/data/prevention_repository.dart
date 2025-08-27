/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_detail.dart';

abstract class IPreventionRepository {
  Future<RequestResult<ArticleDetail>> getArticleDetail(String postId, bool generique);

  Future<RequestResult<List<Article>>> getArticlesMonActuSante(String sex, String age);

  Future<RequestResult<List<Article>>> getArticlesDePrevention(String sex, String age);

  Future<RequestResult<Map<String, ExamenRecommandeDetail>>> getExamenRecommandeDetails();
}

class PreventionCMSRepository extends IPreventionRepository {
  final JsonDataSource jsonDataSource;
  final String cmsUrl;
  final Crashlytics crashlytics;

  PreventionCMSRepository(
    this.jsonDataSource,
    this.cmsUrl,
    this.crashlytics,
  );

  @override
  Future<RequestResult<ArticleDetail>> getArticleDetail(String postId, bool generique) async {
    try {
      final categorie = generique ? 'articles_de_prevention_generique' : 'articles_de_prevention_personnal';
      final suffix = generique
          ? 'include=field_pictogramme,field_page_detail,field_page_detail.field_sidebar_block,field_page_detail.field_sidebar_block.field_sidebar_logo_alaune&jsonapi_include=1'
          : 'include=field_art_prv_page_detail,field_art_prv_page_detail.field_sidebar_block,field_art_prv_page_detail.field_sidebar_block.field_sidebar_logo_alaune&jsonapi_include=1';
      final String path = '/jsonapi/node/$categorie/$postId?$suffix';
      final json = await jsonDataSource.get(cmsUrl, path);
      final ArticleDetail result = fromJsonObject(
        json,
        mapper: generique ? ArticleDetail.fromJsonGenerique : ArticleDetail.fromJson,
      );
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<Article>>> getArticlesMonActuSante(String sex, String age) async {
    try {
      const String path = '/jsonapi/articles_personnalises/';
      final json = await jsonDataSource.get(cmsUrl, path);
      final List<Article> result = fromJsonList(json, mapper: Article.fromJsonOfMonActu);
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<Article>>> getArticlesDePrevention(String sex, String age) async {
    try {
      // Format de l'url : /jsonapi/articles_generiques_prevention/ID_THEMATIQUE/SEXE/AGE/ANNEE
      const String path = '/jsonapi/articles_generiques_prevention/all/';
      final json = await jsonDataSource.get(cmsUrl, path) as Map<String, dynamic>;

      final articles = json['results'] as List<dynamic>? ?? [];

      if (articles.isEmpty) {
        return RequestResultSuccess(const []);
      } else {
        final List<Article> result = fromJsonList(articles, mapper: Article.fromJson);
        return RequestResultSuccess(result);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<Map<String, ExamenRecommandeDetail>>> getExamenRecommandeDetails() async {
    try {
      const String path = '/jsonapi/preventions/all';
      final json = await jsonDataSource.get(cmsUrl, path);
      if (json is! List<dynamic> || json.isEmpty) {
        return RequestResultError.genericError();
      }
      final List<ExamenRecommandeDetail> resultList = fromJsonList(
        json,
        mapper: (detail) {
          final linkLabel = detail['field_lien_prevention_1'] as String;
          return ExamenRecommandeDetail(
            code: detail['field_code_prevention'] as String,
            body: (detail['body'] as String).replaceAllNonWorkingUtf8SpecialChar(),
            linkUrl: detail['field_lien_prevention'] as String,
            linkLabel: linkLabel.isNotEmpty ? linkLabel.substringAfter('>').substringBefore('<') : '',
          );
        },
      );
      final result = {for (final examenDetail in resultList) examenDetail.code: examenDetail};
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}

class ExamenRecommandeDetail extends Equatable {
  final String body;
  final String code;
  final String linkLabel;
  final String linkUrl;

  const ExamenRecommandeDetail({
    required this.code,
    required this.body,
    required this.linkUrl,
    required this.linkLabel,
  });

  @override
  List<Object?> get props => [code, body, linkUrl, linkLabel];
}

extension SubstringUtils on String {
  String substringAfter(String delimiter) {
    return substring(indexOf(delimiter) + 1, length - 1);
  }

  String substringBefore(String delimiter) {
    return substring(0, indexOf(delimiter));
  }

  String replaceAllNonWorkingUtf8SpecialChar() {
    return replaceAll('&#039;', "'");
  }
}
