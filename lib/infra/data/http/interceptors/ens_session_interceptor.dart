/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:fr_cnamts_ens/infra/data/http/intercepted_client.dart';
import 'package:http/http.dart';

class EnsSessionInterceptor extends Interceptor {
  String? enrSessionId;
  String? xEnsSessionId;

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    if (enrSessionId != null) {
      request.headers['Cookie'] = 'ENR_JSESSIONID=$enrSessionId';
    }
    if (xEnsSessionId != null) {
      request.headers['x-ens-session-id'] = xEnsSessionId!;
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response, required int startedAt}) async {
    final cookiesString = response.headers['set-cookie'];
    final sessionId = response.headers['x-ens-session-id'];

    if (xEnsSessionId == null && sessionId != null) {
      xEnsSessionId = sessionId;
    }

    if (cookiesString != null) {
      final cookies = cookiesString.split(';');
      for (final cookie in cookies) {
        try {
          final currentCookie = Cookie.fromSetCookieValue(cookie);
          if (currentCookie.name == 'ENR_JSESSIONID') {
            enrSessionId = currentCookie.value;
            break;
          }
        } catch (_) {
          // do nothing
        }
      }
    }
    return response;
  }

  void clearCookie() {
    enrSessionId = null;
  }
}
