/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/ui/utils/alert_dialog_utils.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/utils/file_helper.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> _pickSingleImageFromGallery() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image;
}

Future<List<XFile>?> _pickMultipleImageFromGallery() async {
  final ImagePicker picker = ImagePicker();
  final List<XFile> images = [];

  final List<XFile> selectedImages = await picker.pickMultiImage(maxHeight: 960, maxWidth: 1280, imageQuality: 50);
  if (selectedImages.isNotEmpty) {
    images.addAll(selectedImages);
  }
  return images.isEmpty ? null : images;
}

class EnsImagePicker {
  final FileHelper _fileHelper;

  EnsImagePicker(this._fileHelper);

  Future<void> pickSingleImage(BuildContext context, void Function(EnsFileContent fileContent) handler) async {
    try {
      final resultImage = await _pickSingleImageFromGallery();
      if (resultImage != null) {
        final EnsFileContent fileContent = await _fileHelper.extractEnsFileContentFromAsset(resultImage);
        handler.call(fileContent);
      }
    } on PlatformException catch (e) {
      if (e.code == 'photo_access_denied') {
        // ignore: use_build_context_synchronously
        showRefusedAccessToPictureLibraryDialog(context);
      } else {
        // ignore: use_build_context_synchronously
        showSnackbarError(context, 'Erreur lors de la sélection d\'une photo', extraVerticalPadding: 92);
      }
      return;
    }
  }

  Future<void> pickMultipleImages(BuildContext context, void Function(EnsFileContent fileContent) handler) async {
    try {
      final resultImage = await _pickMultipleImageFromGallery();
      if (resultImage != null) {
        for (final image in resultImage) {
          final EnsFileContent fileContent = await _fileHelper.extractEnsFileContentFromAsset(image);
          handler.call(fileContent);
        }
      }
    } on PlatformException catch (e) {
      if (e.code == 'photo_access_denied') {
        // ignore: use_build_context_synchronously
        showRefusedAccessToPictureLibraryDialog(context);
      } else {
        // ignore: use_build_context_synchronously
        showSnackbarError(context, 'Erreur lors de la sélection des photos', extraVerticalPadding: 92);
      }
      return;
    }
  }
}
