/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:fr_cnamts_ens/auth/infra/openid_wrapper.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

class EnsAuthenticatedClient extends BaseClient {
  static const HTTP_TIMEOUT = Duration(seconds: 20);

  final OpenidWrapper openidWrapper;
  final PackageInfo packageInfo;

  late final BaseClient _delegate;

  final Logger _log = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  EnsAuthenticatedClient(this.openidWrapper, this.packageInfo, {Map<String, String>? proxy}) {
    if (proxy != null) {
      _log.d('proxy: $proxy');
    }
    final httpClient = HttpClient()
      ..findProxy = ((uri) => proxy != null ? 'PROXY ${proxy['host']}:${proxy['port']}' : 'DIRECT')
      ..connectionTimeout = HTTP_TIMEOUT;

    _delegate = IOClient(httpClient);
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final token = await openidWrapper.getToken();
    final accessToken = token ?? '';
    request.headers['Authorization'] = 'Bearer $accessToken';
    request.headers['X-App-Version'] = _computeAppVersionHeaderValue();

    String requestLog = '--> ${request.method} ${request.url}';
    request.headers.forEach((headerName, headerValue) {
      requestLog = '$requestLog\n$headerName: $headerValue';
    });
    if (request is Request) {
      requestLog = '$requestLog\n\n${request.body}';
    }

    requestLog = '$requestLog\n--> END ${request.method}';
    _log.i(requestLog);

    final startMs = DateTime.now().millisecondsSinceEpoch;

    final StreamedResponse response;
    final List<int> bytes;
    try {
      response = await _delegate.send(request);
      bytes = await response.stream.toBytes();
    } catch (e) {
      _log.e('<-- HTTP failed', error: e);
      rethrow;
    }
    final tookMs = DateTime.now().millisecondsSinceEpoch - startMs;

    String responseLog = '<-- ${response.statusCode} ${response.reasonPhrase ?? ''} (${tookMs}ms)';
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
      request: request,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }

  String _computeAppVersionHeaderValue() {
    final platform = Platform.isAndroid ? 'android' : 'ios';
    final version = packageInfo.version;
    return '$platform/$version';
  }
}
