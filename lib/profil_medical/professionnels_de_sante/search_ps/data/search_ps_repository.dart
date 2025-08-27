/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_resultat_de_recherche_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/data/search_ps_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/search_ps_domain_error.dart';

abstract class ISearchPsRepository {
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionelSante(
    String lastname,
    String firstname,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    EnsProfessionalActivity? professionalActivity,
  );
}

class SearchPsRepository extends ISearchPsRepository {
  final Client ferryClient;

  SearchPsRepository(this.ferryClient);

  @override
  Future<RequestResult<List<ProfessionnelDeSante>>> getProfessionelSante(
    String lastname,
    String firstname,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    EnsProfessionalActivity? professionalActivity,
  ) async {
    try {
      final query = Gget_resultat_de_recherche_professionnels_de_santeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.name = lastname
          ..vars.firstName = firstname
          ..vars.cityCode = Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) ? cityCode : ''
          ..vars.departmentCode =
              Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) || zipCodes.isEmpty ? departmentCode : ''
          ..vars.zipCode = Commune.isItATownWithSeveralZipCode(zipCodes, cityCode) ? '' : zipCodes.firstOrNull ?? ''
          ..vars.professionCode = professionalActivity is EnsProfession ? professionalActivity.treCode : null
          ..vars.experticeCode = professionalActivity is EnsSpecialite ? professionalActivity.treCode : null,
      );

      final graphQLresponse = await ferryClient.request(query).first;

      if (graphQLresponse.hasErrors) {
        return RequestResultError.genericError();
      }
      final result = graphQLresponse.data?.getProfessionelSanteGroupedCity;

      if (result == null) {
        return RequestResultError.genericError();
      }

      if (result.ps.isEmpty) {
        return RequestResultError.error(domainError: SearchPsDomainError.IS_EMPTY);
      }

      return RequestResultSuccess(
        SearchPsRepositoryMapper.toProfessionnelsSante(result.ps.toList()),
      );
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
