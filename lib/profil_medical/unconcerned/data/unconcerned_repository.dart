/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_unconcerned.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IUnconcernedRepository {
  Future<RequestResult<EnsUnconcerned>> setUnconcerned(SectionUnconcerned section, String patientId);
}

class UnconcernedRepository extends IUnconcernedRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  UnconcernedRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsUnconcerned>> setUnconcerned(SectionUnconcerned section, String patientId) async {
    try {
      final mutation = GunconcernedReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.section = _transformSection(section),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final graphQLResult = graphQLResponse.data?.unconcerned.declarationDate;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          EnsUnconcerned(
            date: DateTime.parse(graphQLResult),
            section: section,
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  GSectionUriEnum _transformSection(SectionUnconcerned section) {
    switch (section) {
      case SectionUnconcerned.MALADIES:
        return GSectionUriEnum.DISEASES;
      case SectionUnconcerned.ANTECEDENTS:
        return GSectionUriEnum.FAMILY_HISTORIES;
      case SectionUnconcerned.HOSPITALISATIONS:
        return GSectionUriEnum.HOSPITALIZATIONS;
      case SectionUnconcerned.TRAITEMENTS:
        return GSectionUriEnum.TREATMENTS;
      case SectionUnconcerned.ALLERGIES:
        return GSectionUriEnum.ALLERGIES;
      case SectionUnconcerned.HANDICAPS:
        return GSectionUriEnum.DISABILITIES;
    }
  }
}
