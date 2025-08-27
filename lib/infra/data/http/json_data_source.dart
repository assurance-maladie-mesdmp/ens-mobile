/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class JsonDataSource {
  final BaseClient _client;

  JsonDataSource({required BaseClient client}) : _client = client;

  Future<dynamic> get(String baseUri, String path) async {
    final Uri uri = Uri.parse('https://$baseUri$path');
    try {
      final response = await _client.get(uri);
      final int statusCode = response.statusCode;
      if (statusCode >= 200 && statusCode < 400) {
        return jsonDecode(utf8.decode(response.bodyBytes));
      } else {
        throw HttpException('Erreur $statusCode');
      }
    } catch (e) {
      rethrow;
    }
  }
}
