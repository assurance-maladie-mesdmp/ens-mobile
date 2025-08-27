/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_device_get_enrolled_devices.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_device_revoke_enrolled_devices.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IEnrolledDevicesRepository {
  Future<RequestResult<int>> getEnrolledDevicesCount();

  Future<RequestResult<void>> revokeEnrolledDevices();
}

class EnrolledDevicesRepository extends IEnrolledDevicesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  EnrolledDevicesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<int>> getEnrolledDevicesCount() async {
    try {
      final query = Gget_enrolled_devicesReq((builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly);

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final data = graphQLResponse.data?.getEnrolledDevices.numberOfDevices;
      if (data == null) {
        return RequestResultError.genericError();
      }

      return RequestResultSuccess(data);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> revokeEnrolledDevices() async {
    try {
      final mutation = Grevoke_enrolled_devicesReq((builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly);

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      if (graphQLResponse.data == null || graphQLResponse.data?.deleteAllEnrolledDevices.success == false) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(null);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
