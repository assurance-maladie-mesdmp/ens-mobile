/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';

class ScannerBridge {
  static const scannerChannel = MethodChannel('com.octo.flutter/scanner_wrapper');

  static Future<String?> getScannedDocuments({EnsLocalImageData? imageLocalData}) async {
    final arguments = imageLocalData == null ? null : [imageLocalData.tempOriginalPath];
    final result = await scannerChannel.invokeMethod('getNativeScanner', arguments);
    return result as String?;
  }

  static Future<String?> getCroppingDocument(String base64) async {
    final result = await scannerChannel.invokeMethod('getCroppedImage', base64);
    return result as String?;
  }

  static Future<String?> getBlackAndWhiteBase64(EnsFileImageContent image) async {
    final base64 = image.originalImage.fileContent.base64Content;
    final imageBlackAndWhiteBase64 = await scannerChannel.invokeMethod('getBlackAndWhiteImage', base64);
    try {
      return imageBlackAndWhiteBase64 as String?;
    } catch (e) {
      return null;
    }
  }

  static void initScannerListener(Function(List<OriginalImage>) sendScannedImages) {
    scannerChannel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'fromIOS':
          final base64Images = call.arguments as List;
          final List<OriginalImage> imageFileContents = base64Images
              .map(
                (image) => OriginalImage(
                  fileContent: EnsFileContent(
                    filename: 'imageScanIOS${DateTime.now().microsecondsSinceEpoch}',
                    base64Content: image as String,
                    mimeType: MimeTypeUtils.JPEG_LABEL,
                  ),
                ),
              )
              .toList();
          sendScannedImages.call(imageFileContents);
        case 'fromAndroid':
          try {
            final arguments = call.arguments as List<Object?>;
            final originalPath = arguments[0]! as String;
            final croppedPath = arguments[1]! as String;

            final bytes = File(croppedPath).readAsBytesSync();
            final String base64Image = base64Encode(bytes);

            final OriginalImage imageFileContent = OriginalImage(
              fileContent: EnsFileContent(
                filename: 'imageScanAndroid${DateTime.now().microsecondsSinceEpoch}',
                base64Content: base64Image,
                mimeType: MimeTypeUtils.JPEG_LABEL,
              ),
              localData: EnsLocalImageData(
                tempOriginalPath: originalPath,
                tempCroppedPath: croppedPath,
                croppedPoints: Float32List(0),
              ),
            );
            sendScannedImages.call([imageFileContent]);
          } catch (e) {
            sendScannedImages.call([]);
          }
        default:
          sendScannedImages.call([]);
      }
    });
  }

  static void initScannerReCropListener(Function(List<OriginalImage>) sendCroppedImage) {
    scannerChannel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'fromAndroidAfterRecropping':
          final arguments = call.arguments as List<Object?>;

          final originalPath = arguments[0]! as String;
          final croppedPath = arguments[1]! as String;

          final bytes = File(croppedPath).readAsBytesSync();
          final String base64Image = base64Encode(bytes);

          final OriginalImage imageFileContent = OriginalImage(
            fileContent: EnsFileContent(
              filename: 'imageScanAndroid${DateTime.now().microsecondsSinceEpoch}',
              base64Content: base64Image,
              mimeType: MimeTypeUtils.JPEG_LABEL,
            ),
            localData: EnsLocalImageData(
              tempOriginalPath: originalPath,
              tempCroppedPath: croppedPath,
              croppedPoints: Float32List(0),
            ),
          );
          sendCroppedImage.call([imageFileContent]);
      }
    });
  }
}
