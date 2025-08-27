/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';

class EnsFileImageContent extends Equatable {
  final OriginalImage originalImage;
  final CompressedImage? compressedImage;
  final CompressedImage? blackAndWhiteImage;
  final bool isBlackAndWhiteSelected;
  final bool isScannedImage;

  const EnsFileImageContent({
    required this.originalImage,
    this.compressedImage,
    this.blackAndWhiteImage,
    this.isBlackAndWhiteSelected = false,
    this.isScannedImage = false,
  });

  @override
  List<Object?> get props => [
        originalImage,
        compressedImage,
        blackAndWhiteImage,
        isBlackAndWhiteSelected,
        isScannedImage,
      ];

  bool get isCompressed => originalImage.fileContent.base64Content != compressedImage?.base64Content;

  bool get isBlackAndWhite => isBlackAndWhiteSelected && (blackAndWhiteImage != null);

  EnsFileImageContent clone({
    OriginalImage? originalImage,
    CompressedImage? compressedImage,
    CompressedImage? blackAndWhiteImage,
    bool? isBlackAndWhiteSelected,
    bool? isScannedImage,
  }) {
    return EnsFileImageContent(
      originalImage: originalImage ?? this.originalImage,
      compressedImage: compressedImage ?? this.compressedImage,
      blackAndWhiteImage: blackAndWhiteImage ?? this.blackAndWhiteImage,
      isBlackAndWhiteSelected: isBlackAndWhiteSelected ?? this.isBlackAndWhiteSelected,
      isScannedImage: isScannedImage ?? this.isScannedImage,
    );
  }

  EnsFileImageContent cloneAndResetBlackAndWhite({
    OriginalImage? originalImage,
    CompressedImage? compressedImage,
    bool? isScannedImage,
  }) {
    return EnsFileImageContent(
      originalImage: originalImage ?? this.originalImage,
      compressedImage: compressedImage ?? this.compressedImage,
      isScannedImage: isScannedImage ?? this.isScannedImage,
      blackAndWhiteImage: null,
      isBlackAndWhiteSelected: false,
    );
  }
}

class OriginalImage extends Equatable {
  final EnsFileContent fileContent;
  final EnsLocalImageData? localData;
  final Uint8List? decodedContent;

  const OriginalImage({required this.fileContent, this.decodedContent, this.localData});

  OriginalImage clone({
    EnsFileContent? fileContent,
    EnsLocalImageData? localData,
    Uint8List? decodedContent,
  }) {
    return OriginalImage(
      fileContent: fileContent ?? this.fileContent,
      localData: localData ?? this.localData,
      decodedContent: decodedContent ?? this.decodedContent,
    );
  }

  @override
  List<Object?> get props => [fileContent, decodedContent, localData];
}

class CompressedImage extends Equatable {
  final String base64Content;
  final Uint8List decodedContent;

  const CompressedImage({required this.base64Content, required this.decodedContent});

  @override
  List<Object?> get props => [base64Content, decodedContent];
}

class EnsLocalImageData extends Equatable {
  final String tempOriginalPath;
  final String tempCroppedPath;
  final String? tempBlackAndWhitePath;
  final Float32List croppedPoints;

  const EnsLocalImageData({
    required this.tempOriginalPath,
    required this.tempCroppedPath,
    this.tempBlackAndWhitePath,
    required this.croppedPoints,
  });

  @override
  List<Object?> get props => [tempOriginalPath, tempCroppedPath, tempBlackAndWhitePath, croppedPoints];
}
