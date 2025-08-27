/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';

abstract class IScannerBridgeWrapper {
  void initScannerReCropListener(
    EnsFileImageContent imageToTransform,
    void Function(EnsFileImageContent) successCallback,
  );

  Future<String?> getScannedDocuments({EnsLocalImageData? imageLocalData});

  Future<String?> getCroppingDocument(String base64);

  Future<String?> getBlackAndWhiteBase64(EnsFileImageContent image);
}

class ScannerBridgeWrapper extends IScannerBridgeWrapper {
  @override
  void initScannerReCropListener(
    EnsFileImageContent imageToTransform,
    void Function(EnsFileImageContent) successCallback,
  ) {
    ScannerBridge.initScannerReCropListener((originalImages) {
      final transformedImage = imageToTransform.cloneAndResetBlackAndWhite(
        originalImage: OriginalImage(
          fileContent: originalImages.first.fileContent,
          localData: originalImages.first.localData,
          decodedContent: base64Decode(originalImages.first.fileContent.base64Content),
        ),
        compressedImage: CompressedImage(
          base64Content: originalImages.first.fileContent.base64Content,
          decodedContent: base64Decode(originalImages.first.fileContent.base64Content),
        ),
      );
      successCallback(transformedImage);
    });
  }

  @override
  Future<String?> getScannedDocuments({EnsLocalImageData? imageLocalData}) async {
    return ScannerBridge.getScannedDocuments(imageLocalData: imageLocalData);
  }

  @override
  Future<String?> getCroppingDocument(String base64) async {
    return ScannerBridge.getCroppingDocument(base64);
  }

  @override
  Future<String?> getBlackAndWhiteBase64(EnsFileImageContent image) async {
    return ScannerBridge.getBlackAndWhiteBase64(image);
  }
}
