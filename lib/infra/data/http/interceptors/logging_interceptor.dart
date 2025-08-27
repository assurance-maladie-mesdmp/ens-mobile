/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/infra/data/http/intercepted_client.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor extends Interceptor {
  final Logger _log = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    String requestLog = '--> ${request.method} ${request.url}';
    request.headers.forEach((headerName, headerValue) {
      requestLog = '$requestLog\n$headerName: $headerValue';
    });
    if (request is Request) {
      requestLog = '$requestLog\n\n${request.body}';
    }

    requestLog = '$requestLog\n--> END ${request.method}';
    _log.i(requestLog);

    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
    required int startedAt,
  }) async {
    if (response is StreamedResponse) {
      final List<int> bytes = await response.stream.toBytes();

      final tookMs = DateTime.now().millisecondsSinceEpoch - startedAt;
      String responseLog = '<-- ${response.statusCode} ${response.reasonPhrase ?? ''}(${tookMs}ms)';
      response.headers.forEach((headerName, headerValue) {
        responseLog = '$responseLog\n$headerName: $headerValue';
      });

      responseLog = '$responseLog\n\n${utf8.decode(bytes)}';
      responseLog = '$responseLog\n<-- END HTTP';
      _log.i(responseLog);
      return StreamedResponse(
        ByteStream.fromBytes(bytes),
        response.statusCode,
        contentLength: response.contentLength,
        request: response.request,
        headers: response.headers,
        isRedirect: response.isRedirect,
        persistentConnection: response.persistentConnection,
        reasonPhrase: response.reasonPhrase,
      );
    }
    return response;
  }

  @override
  Future<void> interceptError({required Exception exception}) async {
    _log.e('<-- HTTP failed', error: exception);
  }
}
