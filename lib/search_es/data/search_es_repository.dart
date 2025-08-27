/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_resultat_de_recherche_etablissement_de_sante.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ISearchEsRepository {
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementSante(
    String name,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    bool onlyPharmacies,
  );
}

class SearchEsRepository extends ISearchEsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  SearchEsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementSante(
    String name,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    bool onlyPharmacies,
  ) async {
    try {
      final query = Gget_resultat_de_recherche_etablissements_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.searchStructureInput = buildInput(name, departmentCode, zipCodes, cityCode, onlyPharmacies),
      );

      final graphQlResponse = await ferryClient.request(query).first;
      if (graphQlResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQlResponse.data?.searchStructure.searchStructures;
      if (result == null) {
        return RequestResultError.genericError();
      }

      final esList = result.where((es) => es.name != null && es.name!.isNotEmpty).map(
        (es) {
          final alias = es.alias;
          final name = es.name ?? '';
          final fullName = alias == null || alias.isEmpty ? name : '$name ( $alias )';
          return EtablissementDeSante(
            idNat: es.idFineg ?? '',
            nameWithAlias: fullName,
            name: name,
            activity: es.activity ?? '',
            mail: es.mail,
            isContactable: false,
            address: es.address != null
                ? ActeurDeSanteAdresse(
                    roadNumber: es.address!.roadNumber,
                    roadType: es.address!.roadType,
                    labelRoadType: es.address!.labelRoadType,
                    road: es.address!.road,
                    city: es.address!.commune,
                    cityZipCode: es.address!.cityZipCode,
                  )
                : null,
            active: es.active,
          );
        },
      ).toList();
      return RequestResultSuccess(esList);
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  static GSearchStructureInputModelBuilder buildInput(
    String name,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    bool onlyPharmacies,
  ) {
    final input = GSearchStructureInputModel(
      (input) => input
        ..name = name
        ..codeDepartement =
            Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) || zipCodes.isEmpty ? departmentCode : ''
        ..codePostal = Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) ? '' : zipCodes.firstOrEmpty()
        ..codeCommune = Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) ? cityCode : ''
        ..type = onlyPharmacies ? 'SA33,SA38,SA39,SA55,SA56' : '',
    );
    final inputBuilder = GSearchStructureInputModelBuilder();
    inputBuilder.replace(input);
    return inputBuilder;
  }
}
