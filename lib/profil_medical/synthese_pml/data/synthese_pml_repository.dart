/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_synthese_pml.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/data/synthese_pml_repository_mapper.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ISynthesePmlRepository {
  Future<RequestResult<EnsFileContent>> getSynthesePml(String patientId, {EnsPmlSection? rubrique});
}

class SynthesePmlRepository extends ISynthesePmlRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  SynthesePmlRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsFileContent>> getSynthesePml(String patientId, {EnsPmlSection? rubrique}) async {
    try {
      final rubriques = rubrique != null ? [rubrique.toSectionToDownload] : <GSectionToDownload>[];
      final query = Gget_synthese_pmlReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.rubrique = ListBuilder(rubriques),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getMedicalSynthesisPDF;

      if (result != null) {
        final synthesePml = SynthesePmlRepositoryMapper.toEnsFileContent(result);
        return RequestResultSuccess(synthesePml);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
