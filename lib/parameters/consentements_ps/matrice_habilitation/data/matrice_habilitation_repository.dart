/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/data/matrice_habilitation_mapper.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_resultat.dart';
import 'package:fr_cnamts_ens/utils/extensions/map_extension.dart';

abstract class IMatriceHabilitationRepository {
  Future<RequestResult<List<EnsMatriceProfession>>> getMatriceProfessions();

  Future<RequestResult<List<EnsMatriceCategorieDocument>>> getMatriceCategoriesDocuments();

  Future<RequestResult<EnsMatriceResultat>> getMatriceResultats(int codeProfession);
}

class MatriceHabilitationRepository extends IMatriceHabilitationRepository {
  final JsonDataSource dataSource;
  final String cmsUrl;
  final Crashlytics crashlytics;

  MatriceHabilitationRepository({
    required this.dataSource,
    required this.cmsUrl,
    required this.crashlytics,
  });

  @override
  Future<RequestResult<List<EnsMatriceProfession>>> getMatriceProfessions() async {
    try {
      const String path = '/jsonapi/taxonomy_term/professionnel_de_sante';

      final json = await dataSource.get(cmsUrl, path);
      final List<EnsMatriceProfession> result = fromJsonList(
        (json as Map<String, dynamic>)['data'],
        mapper: MatriceHabilitationMapper.professionFromJson,
      );
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<EnsMatriceCategorieDocument>>> getMatriceCategoriesDocuments() async {
    try {
      const String path = '/jsonapi/taxonomy_term/categorie_de_document';
      final json = await dataSource.get(cmsUrl, path);
      final List<EnsMatriceCategorieDocument> result = fromJsonList(
        (json as Map<String, dynamic>)['data'],
        mapper: MatriceHabilitationMapper.categorieDocumentFromJson,
      );
      return RequestResultSuccess(result);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMatriceResultat>> getMatriceResultats(int codeProfession) async {
    try {
      final String path =
          '/jsonapi/node/matrice_professionnel_document?include=field_categorie_de_document,field_code_profession,field_type_de_document&jsonapi_include=1&filter[field_code_profession.field_code_profession]=$codeProfession';

      final EnsMatriceResultat? result = await _addElementsUntilGettingEverything(cmsUrl, path);
      if (result != null) {
        return RequestResultSuccess(result);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  Future<EnsMatriceResultat?> _addElementsUntilGettingEverything(String baseUrl, String path) async {
    final json = await dataSource.get(baseUrl, path);

    final EnsMatriceResultat? result = fromJsonObject(
      json,
      mapper: (json) {
        final matriceResultatJsonList = json['data'] as List<dynamic>;
        final links = json['links'] as Map<String, dynamic>;
        final next = links['next'] as Map<String, dynamic>?;
        return MatriceHabilitationMapper.matriceResultatFromJson(matriceResultatJsonList, next?['href'] as String?);
      },
    );

    if (result != null) {
      if (result.nextUrl != null) {
        final path = '/jsonapi${result.nextUrl!.split('/jsonapi')[1]}';
        final nextResult = await _addElementsUntilGettingEverything(baseUrl, path);
        if (nextResult == null) {
          return null;
        }

        return EnsMatriceResultat(
          resultatsAccessibles: result.resultatsAccessibles.concat(nextResult.resultatsAccessibles),
          resultatsNonAccessibles: result.resultatsNonAccessibles.concat(nextResult.resultatsNonAccessibles),
          nextUrl: null,
        );
      } else {
        return result;
      }
    } else {
      return null;
    }
  }
}
