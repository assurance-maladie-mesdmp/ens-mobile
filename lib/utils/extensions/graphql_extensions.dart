/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';

extension GraphQLResponseExtension<T, K> on OperationResponse<T, K> {
  bool checkGenericError(Crashlytics crashlytics) {
    final linkException = this.linkException;
    if (linkException != null) {
      crashlytics.recordError(Exception(linkException), null);
      return true;
    }
    final graphqlErrors = this.graphqlErrors;
    if (graphqlErrors != null) {
      crashlytics.recordError(Exception(graphqlErrors), null);
      return true;
    }
    return false;
  }

  bool checkServerError(Crashlytics crashlytics) {
    final linkException = this.linkException;
    if (linkException != null) {
      crashlytics.recordError(Exception(linkException), null);
      return true;
    } else {
      return false;
    }
  }

  bool hasNotFoundError() {
    return graphqlErrors?.any((error) => error.message.contains('404: Not Found')) ?? false;
  }

  String extractErrorMessage() {
    return graphqlErrors?.map((e) => e.message).reduce((value, element) => '$value / $element') ?? '';
  }

  List<String> extractExtensionCodes() {
    return graphqlErrors
            ?.where((e) => e.extensions?['code'] != null)
            .map((e) => e.extensions!['code']! as String)
            .toList() ??
        [];
  }

  String? extractFirstExtensionCode() {
    return extractExtensionCodes().firstOrNull;
  }

  String? extractFirstExtensionSubcode() {
    return graphqlErrors?.first.extensions?['subcodes'].toString();
  }

  bool hasAntiVirusError() {
    return graphqlErrors
            ?.where((e) {
              return e.message.contains('422: Unprocessable Entity') || e.message.contains('500: Unprocessable Entity');
            })
            .toList()
            .isNotEmpty ??
        false;
  }
}
