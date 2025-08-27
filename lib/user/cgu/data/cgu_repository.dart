/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_accept_cgu.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ICguRepository {
  Future<RequestResult<void>> acceptCgu({required String patientId});
}

class CguRepository implements ICguRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  CguRepository({required this.ferryClient, required this.crashlytics});

  @override
  Future<RequestResult<void>> acceptCgu({required String patientId}) async {
    try {
      final mutation = Gaccept_cguReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );
      final gqlResponse = await ferryClient.request(mutation).first;
      if (gqlResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final isSuccess = gqlResponse.data?.setCGU.success ?? false;
      if (isSuccess) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
