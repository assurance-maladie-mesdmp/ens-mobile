/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:ens_plugin/file_bridge.dart';
import 'package:ens_plugin/file_opener.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:path_provider/path_provider.dart';

class FileStorage {
  final Crashlytics crashlytics;
  final Map<StoringFileKey, EnsFileContent> ensFileContentMap = {};

  FileStorage(this.crashlytics);

  void storeDocument(String documentId, EnsFileContent ensFileContent) {
    ensFileContentMap[StoringFileKey(StoringFileCategory.DOCUMENT, documentId)] = ensFileContent;
  }

  void storeAttachment(String fileName, EnsFileContent ensFileContent) {
    ensFileContentMap[StoringFileKey(StoringFileCategory.ATTACHMENT, fileName)] = ensFileContent;
  }

  EnsFileContent? getDocumentInStorage(String documentId) {
    return ensFileContentMap[StoringFileKey(StoringFileCategory.DOCUMENT, documentId)];
  }

  Future<FileExportationResult> exportDocument(EnsFileContent ensFileContent, EnsDocument document) async =>
      _exportFile(
        fileNameWithExtension: _buildDocumentFilenameWithExtension(ensFileContent, document),
        base64Content: ensFileContent.base64Content,
        mimetype: ensFileContent.mimeType,
        iosSubDirectory: 'documents',
      );

  Future<FileExportationResult> exportAttachment(AttachmentContent attachmentContent) async => _exportFile(
        fileNameWithExtension: attachmentContent.name,
        base64Content: attachmentContent.base64Content,
        mimetype: attachmentContent.mimeType,
        iosSubDirectory: 'pieces-jointes',
      );

  Future<FileExportationResult> exportSynthese(EnsFileContent ensFileContent, String filenameWithExtension) async =>
      _exportFile(
        fileNameWithExtension: filenameWithExtension,
        base64Content: ensFileContent.base64Content,
        mimetype: ensFileContent.mimeType,
        iosSubDirectory: 'documents',
      );

  Future<FileExportationResult> exportFile(EnsFileContent ensFileContent) async => _exportFile(
        fileNameWithExtension:
            '${ensFileContent.filename}.${MimeTypeUtils.fromLabel(ensFileContent.mimeType).fileExtension}',
        base64Content: ensFileContent.base64Content,
        mimetype: ensFileContent.mimeType,
        iosSubDirectory: 'documents',
      );

  Future<FileExportationResult> _exportFile({
    required String fileNameWithExtension,
    required String base64Content,
    required String mimetype,
    required String iosSubDirectory,
  }) async {
    if (Platform.isAndroid) {
      return _exportFileOnAndroid(
        fileNameWithExtension: fileNameWithExtension,
        base64Content: base64Content,
        mimetype: mimetype,
      );
    } else {
      final File targetFile = await _createIosTargetFile(iosSubDirectory, fileNameWithExtension);
      return _exportFileOnIOS(targetFile, base64Content);
    }
  }

  Future<FileExportationResult> _exportFileOnAndroid({
    required String fileNameWithExtension,
    required String mimetype,
    required String base64Content,
  }) async {
    try {
      return FileBridge.exportBase64Content(
        fileNameWithExtension: fileNameWithExtension,
        base64Content: base64Content,
        mimetype: mimetype,
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return const FileExportationResult.failure(null);
    }
  }

  Future<FileExportationResult> _exportFileOnIOS(File targetFile, String base64Content) async {
    try {
      final File exportedFile = await _writeToFile(targetFile, base64Content);
      FileOpener.openFile(exportedFile.path);
      return FileExportationResult.success(exportedFile.path);
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return const FileExportationResult.failure(null);
    }
  }

  String _buildDocumentFilenameWithExtension(EnsFileContent ensFileContent, EnsDocument document) {
    String extension = MimeTypeUtils.fromLabel(ensFileContent.mimeType).fileExtension;
    if (extension.isNotEmpty) {
      extension = '.$extension';
    }
    return '${document.title.trim()}$extension';
  }

  Future<File> _writeToFile(File targetFile, String base64Content) async {
    final binary = base64.decode(base64Content.replaceAll(RegExp(r'\s+'), ''));
    final bytes = ByteData.view(binary.buffer);
    final buffer = bytes.buffer;
    targetFile.writeAsBytesSync(buffer.asUint8List());
    return targetFile;
  }

  Future<File> _createIosTargetFile(String subDirectory, String filenameWithExtension) async {
    final Directory appDirectory = await getApplicationDocumentsDirectory();
    return File('${appDirectory.path}/$subDirectory/$filenameWithExtension').create(recursive: true);
  }
}

class StoringFileKey extends Equatable {
  final StoringFileCategory category;
  final String fileId;

  const StoringFileKey(this.category, this.fileId);

  @override
  List<Object?> get props => [category, fileId];
}

enum StoringFileCategory { DOCUMENT, ATTACHMENT }
