/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_link.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ILinksRepository {
  Future<RequestResult<String>> removeLinkBetweenEntities(String patientId, String linkId);
}

class LinksRepository extends ILinksRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  LinksRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<String>> removeLinkBetweenEntities(String patientId, String linkId) async {
    try {
      final mutation = Gdelete_linkReq(
        (builder) => builder
          ..vars.patientId = patientId
          ..vars.deleteLinksInput.linkId = linkId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteLinks;
      if (graphQLResult != null) {
        return RequestResultSuccess(linkId);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
