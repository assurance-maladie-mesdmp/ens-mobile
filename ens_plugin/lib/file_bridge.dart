import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

class FileBridge {
  static const _platform = MethodChannel('fr.cnamts.ens.flutter_plugin/exportFile');

  // throw error handle in _exportFileOnAndroid
  static Future<FileExportationResult> exportBase64Content({
    required String base64Content,
    String? fileNameWithExtension,
    String? mimetype,
  }) async {
    final String? result = await _platform.invokeMethod(
      'exportBase64Content',
      {
        'base64Content': base64Content,
        'fileNameWithExtension': fileNameWithExtension,
        'mimetype': mimetype,
      },
    );
    if (result == null) {
      return const FileExportationResult.failure();
    } else {
      return FileExportationResult.success(result);
    }
  }
}

abstract class FileExportationResult extends Equatable {
  const FileExportationResult._internal();

  const factory FileExportationResult.success(String targetPath) = FileExportationSuccess._internal;

  const factory FileExportationResult.failure([String? errorMessage]) = FileExportationFailure._internal;
}

class FileExportationSuccess extends FileExportationResult {
  final String targetPath;

  const FileExportationSuccess._internal(this.targetPath) : super._internal();

  @override
  List<Object?> get props => [targetPath];
}

class FileExportationFailure extends FileExportationResult {
  final String? errorMessage;

  const FileExportationFailure._internal([this.errorMessage]) : super._internal();

  @override
  List<Object?> get props => [errorMessage];
}
