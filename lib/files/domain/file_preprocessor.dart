/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/image_shrinker.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/utils/file_helper.dart';

enum FileMaxSizeEnum {
  FIVE_MEGA_BYTE(size: 5000000, errorLabel: 'Sélectionner un fichier de moins de 5 Mo'),
  TEN_MEGA_BYTE(size: 10000000, errorLabel: 'Sélectionner un fichier de moins de 10 Mo');

  final int size;
  final String errorLabel;

  const FileMaxSizeEnum({required this.size, required this.errorLabel});
}

class FilePreprocessor {
  static const COMPRESSIBLE_MIMETYPES = [MimeType.JPEG, MimeType.JPG, MimeType.PNG];

  final ImageShrinker _imageShrinker;
  final FileHelper _fileHelper;

  FilePreprocessor(this._imageShrinker, this._fileHelper);

  Future<FileProcessingResult> processDocumentEdition(
    EnsFileContent ensFileContent,
    FileMaxSizeEnum fileMaxSize,
  ) async {
    try {
      final mimeType = MimeTypeUtils.fromLabel(ensFileContent.mimeType);

      if (!mimeType.isAccepted) {
        return const FileProcessingResult.error('Type de fichier non supporté');
      }

      final originalFileSize = _fileHelper.computeBase64SizeInByte(ensFileContent.base64Content);
      if (originalFileSize > fileMaxSize.size) {
        if (COMPRESSIBLE_MIMETYPES.contains(mimeType)) {
          final EnsFileContent? processedFile =
              await _imageShrinker.tryToCompressImage(ensFileContent, fileMaxSize.size);
          if (processedFile != null) {
            return FileProcessingResult.success(processedFile);
          } else {
            return FileProcessingResult.error(fileMaxSize.errorLabel);
          }
        } else {
          return FileProcessingResult.error(fileMaxSize.errorLabel);
        }
      } else {
        return FileProcessingResult.success(ensFileContent);
      }
    } catch (e) {
      return const FileProcessingResult.error('Erreur lors de l\'analyse du fichier');
    }
  }

  Future<MultidocProcessingResult> processMultiDocumentEdition(List<EnsFileImageContent> fileContents) async {
    try {
      final originalsBase64 = fileContents.map((element) => element.originalImage.fileContent.base64Content).toList();

      if (!sumOfSizeIsUnderMaxSize(originalsBase64)) {
        final List<EnsFileImageContent> processedFiles =
            await _imageShrinker.tryToCompressImageContents(fileContents, FileMaxSizeEnum.FIVE_MEGA_BYTE.size);

        final compressesBase64 =
            processedFiles.map((element) => element.compressedImage?.base64Content).whereType<String>().toList();

        if (sumOfSizeIsUnderMaxSize(compressesBase64)) {
          return MultidocProcessingResult.success(processedFiles);
        } else {
          return MultidocProcessingResult.error(
            MultidocErrorType.TOO_BIG,
            processedFiles,
          );
        }
      } else {
        return MultidocProcessingResult.success(fileContents);
      }
    } catch (e) {
      return MultidocProcessingResult.error(MultidocErrorType.GENERIC, fileContents);
    }
  }

  bool sumOfSizeIsUnderMaxSize(List<String> base64List) {
    final sizes = base64List.map((element) => _fileHelper.computeBase64SizeInByte(element)).toList();
    return sizes.sum <= FileMaxSizeEnum.FIVE_MEGA_BYTE.size;
  }
}

sealed class FileProcessingResult extends Equatable {
  const FileProcessingResult._internal();

  const factory FileProcessingResult.success(EnsFileContent ensFileContent) = FileProcessingSuccess._internal;

  const factory FileProcessingResult.error(String message) = FileProcessingError._internal;
}

class FileProcessingSuccess extends FileProcessingResult {
  final EnsFileContent ensFileContent;

  const FileProcessingSuccess._internal(this.ensFileContent) : super._internal();

  @override
  List<Object?> get props => [ensFileContent];
}

class FileProcessingError extends FileProcessingResult {
  final String message;

  const FileProcessingError._internal(this.message) : super._internal();

  @override
  List<Object?> get props => [message];
}

sealed class MultidocProcessingResult extends Equatable {
  const MultidocProcessingResult._internal();

  const factory MultidocProcessingResult.success(List<EnsFileImageContent> fileContents) =
      MultidocProcessingResultSuccess._internal;

  const factory MultidocProcessingResult.error(MultidocErrorType errorType, List<EnsFileImageContent> fileContents) =
      MultidocProcessingResultError._internal;
}

class MultidocProcessingResultSuccess extends MultidocProcessingResult {
  final List<EnsFileImageContent> fileContents;

  const MultidocProcessingResultSuccess._internal(this.fileContents) : super._internal();

  @override
  List<Object?> get props => [fileContents];
}

class MultidocProcessingResultError extends MultidocProcessingResult {
  final MultidocErrorType errorType;
  final List<EnsFileImageContent> fileContents;

  const MultidocProcessingResultError._internal(this.errorType, this.fileContents) : super._internal();

  @override
  List<Object?> get props => [errorType, fileContents];
}

enum MultidocErrorType {
  GENERIC,
  TOO_BIG,
}
