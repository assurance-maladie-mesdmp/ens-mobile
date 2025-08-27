/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

class FileHelper {
  String extractFileName(File file) => basename(file.path);

  String extractBase64Content(File file) => _extractBase64Content(file.readAsBytesSync());

  String extractMimeType(File file) => _extractMimeType(file.path);

  int computeBase64SizeInByte(String contentBase64) {
    final length = contentBase64.length;
    final firstEqualsIndex = contentBase64.indexOf('=');
    final paddingCount = firstEqualsIndex != -1 ? contentBase64.substring(firstEqualsIndex).length : 0;
    return (length * 3 / 4).floor() - paddingCount;
  }

  EnsFileContent extractEnsFileContentFromFile(File file) {
    final Uint8List fileBytes = file.readAsBytesSync();
    return EnsFileContent(
      filename: extractFileName(file),
      base64Content: _extractBase64Content(fileBytes),
      mimeType: _extractMimeType(file.path),
    );
  }

  Future<EnsFileContent> extractEnsFileContentFromAsset(XFile asset) async {
    final Uint8List fileBytes = await asset.readAsBytes();

    return EnsFileContent(
      filename: asset.name,
      base64Content: _extractBase64Content(fileBytes),
      mimeType: _extractMimeType(asset.path),
    );
  }

  String _extractBase64Content(Uint8List fileBytes) => base64Encode(fileBytes);

  String _extractMimeType(String path) {
    return lookupMimeType(path) ?? 'text/plain';
  }
}
