/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dechiffrement.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IDechiffrementRepository {
  Future<RequestResult<String>> decrypt(String encryptedValue);
}

class DechiffrementRepository extends IDechiffrementRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  DechiffrementRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<String>> decrypt(String encryptedValue) async {
    try {
      final query = Gdecrypt_valueReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.encryptValue = encryptedValue,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;
      if (result != null) {
        return RequestResultSuccess(result.decrypt.decryptedValue);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
