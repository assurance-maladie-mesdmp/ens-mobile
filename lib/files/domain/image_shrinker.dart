/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';

class ImageShrinker {
  static const RESIZE_MAX_ITERATION = 5;

  ImageShrinker();

  Future<EnsFileContent?> tryToCompressImage(EnsFileContent originalMemoryFile, int sizeThreshold) async {
    var iteration = 0;
    Uint8List tmpContent = base64Decode(originalMemoryFile.base64Content);

    while (iteration < RESIZE_MAX_ITERATION) {
      if (tmpContent.length < sizeThreshold) {
        return EnsFileContent(
          filename: originalMemoryFile.filename,
          mimeType: originalMemoryFile.mimeType,
          base64Content: base64Encode(tmpContent),
          mesureIds: originalMemoryFile.mesureIds,
        );
      }

      tmpContent = await FlutterImageCompress.compressWithList(tmpContent, quality: 85);

      iteration++;
    }

    return originalMemoryFile;
  }

  Future<List<EnsFileImageContent>> tryToCompressImageContents(
    List<EnsFileImageContent> originalFileImageContents,
    int sizeThreshold,
  ) async {
    final List<EnsFileImageContent> result = [];

    for (final originalFileContent in originalFileImageContents) {
      final compressedImage = await tryToCompressImageContent(
        originalFileContent.originalImage,
        sizeThreshold ~/ originalFileImageContents.length,
      );

      result.add(originalFileContent.clone(compressedImage: compressedImage));
    }

    return result;
  }

  Future<CompressedImage> tryToCompressImageContent(
    OriginalImage originalMemoryFile,
    int sizeThreshold,
  ) async {
    var iteration = 0;
    Uint8List tmpContent = originalMemoryFile.decodedContent!;

    while (iteration < RESIZE_MAX_ITERATION) {
      if (tmpContent.length < sizeThreshold) {
        break;
      }
      tmpContent = await FlutterImageCompress.compressWithList(tmpContent, quality: 85);
      iteration++;
    }

    return CompressedImage(
      base64Content: base64Encode(tmpContent),
      decodedContent: tmpContent,
    );
  }
}
