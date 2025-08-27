/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:fr_cnamts_ens/auth/infra/openid_wrapper.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/infra/data/http/intercepted_client.dart';
import 'package:http/http.dart';
import 'package:package_info_plus/package_info_plus.dart';

class EnsAuthorizationInterceptor extends Interceptor {
  final OpenidWrapper openidWrapper;
  final PackageInfo packageInfo;
  final LogoutWrapper logoutWrapper;
  final bool isEnrolement;

  EnsAuthorizationInterceptor({
    required this.openidWrapper,
    required this.packageInfo,
    required this.logoutWrapper,
    this.isEnrolement = false,
  });

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    if (!isEnrolement) {
      final token = await openidWrapper.getToken() ?? '';
      request.headers['Authorization'] = 'Bearer $token';
    }
    request.headers['X-App-Version'] = _computeAppVersionHeaderValue();
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response, required int startedAt}) async {
    if (response.statusCode == 401) {
      logoutWrapper.logout();
    }
    return response;
  }

  String _computeAppVersionHeaderValue() {
    final platform = Platform.isAndroid ? 'android' : 'ios';
    final version = packageInfo.version;
    return '$platform/$version';
  }
}
