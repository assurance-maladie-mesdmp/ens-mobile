/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_send_ens_trace.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/traces/data/trace_mapper.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ITracesRepository {
  Future<RequestResult<void>> sendTrace(String connectedUserId, EnsSendTrace trace);
}

class TracesRepository extends ITracesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  TracesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<void>> sendTrace(String connectedUserId, EnsSendTrace trace) async {
    try {
      final mutation = Gsend_ens_traceReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.userActionInput = TracesMapper.transform(connectedUserId, trace),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final graphQLResult = graphQLResponse.data?.sendUserAction;
      if (graphQLResult != null) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
