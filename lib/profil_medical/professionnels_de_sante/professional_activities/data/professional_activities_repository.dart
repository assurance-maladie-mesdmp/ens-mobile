/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_specialities_and_professions.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/data/professional_activities_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IProfessionalActivitiesRepository {
  Future<RequestResult<List<EnsProfessionalActivity>>> getProfessionsAndSpecialities();
}

class ProfessionalActivitiesRepository extends IProfessionalActivitiesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  ProfessionalActivitiesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<EnsProfessionalActivity>>> getProfessionsAndSpecialities() async {
    try {
      final query = Gget_specialities_and_professionsReq(
        (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;

      if (result != null) {
        final specialities = ProfessionalActivitiesRepositoryMapper.toEnsSpecialities(result.specialities.toList());
        final professions = ProfessionalActivitiesRepositoryMapper.toEnsProfessions(result.professions.toList());
        return RequestResultSuccess([...specialities, ...professions].sortedBy((a) => a.label));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
