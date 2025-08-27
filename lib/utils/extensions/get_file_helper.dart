/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:file_picker/file_picker.dart';

Future<File?> getFileFromFilePicker() async {
  final FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'jpeg', 'tiff', 'png', 'txt', 'pdf', 'rtf', 'doc'],
  );
  final path = result?.files.single.path;
  if (path != null) {
    return File(path);
  }
  return null;
}
