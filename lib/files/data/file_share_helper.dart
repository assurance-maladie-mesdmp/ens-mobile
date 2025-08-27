/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:typed_data';

import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:share_plus/share_plus.dart';

class FileShareHelper {
  final Crashlytics crashlytics;

  FileShareHelper(this.crashlytics);

  Future<ShareResultStatus> shareFile(EnsFileContent ensFileContent, String documentName) async {
    try {
      final Uint8List bytes = base64.decode(ensFileContent.base64Content.replaceAll(RegExp(r'\s+'), ''));
      final type = MimeTypeUtils.fromLabel(ensFileContent.mimeType);
      final file = XFile.fromData(bytes, name: documentName, mimeType: type.fileExtension);
      return (await Share.shareXFiles(
        [file],
        subject: documentName,
        text: 'Envoyé depuis www.monespacesante.fr, mon carnet de santé numérique sécurisé.',
        fileNameOverrides: ['$documentName.${type.fileExtension}'],
      ))
          .status;
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return ShareResultStatus.unavailable;
    }
  }
}
