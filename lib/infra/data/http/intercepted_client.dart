/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:http/http.dart';
import 'package:http/io_client.dart';

class InterceptedClient extends BaseClient {
  final List<Interceptor> _interceptors;

  late final BaseClient _delegate;

  InterceptedClient({
    required List<Interceptor> interceptors,
    BaseClient? client,
  })  : _interceptors = interceptors,
        _delegate = client ?? IOClient();

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    BaseRequest interceptedRequest = request;
    for (final interceptor in _interceptors) {
      interceptedRequest = await interceptor.interceptRequest(request: interceptedRequest);
    }

    final startMs = DateTime.now().millisecondsSinceEpoch;
    BaseResponse interceptedResponse;
    try {
      final StreamedResponse response = await _delegate.send(interceptedRequest);
      interceptedResponse = response;

      for (final interceptor in _interceptors) {
        interceptedResponse = await interceptor.interceptResponse(response: interceptedResponse, startedAt: startMs);
      }
    } on Exception catch (e) {
      for (final interceptor in _interceptors) {
        await interceptor.interceptError(exception: e);
      }
      rethrow;
    }

    return interceptedResponse as StreamedResponse;
  }
}

abstract class Interceptor {
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async => request;

  Future<BaseResponse> interceptResponse({required BaseResponse response, required int startedAt}) async => response;

  Future<void> interceptError({required Exception exception}) async {}
}
