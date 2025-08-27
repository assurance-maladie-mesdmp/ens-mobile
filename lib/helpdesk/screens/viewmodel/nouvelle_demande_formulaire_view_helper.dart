/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/viewmodel/nouvelle_demande_formulaire_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/get_file_helper.dart';
import 'package:fr_cnamts_ens/utils/pick_image_utils.dart';
import 'package:image_picker/image_picker.dart';

class NouvelleDemandeFormulaireViewHelper {
  final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();

  NouvelleDemandeFormulaireViewHelper();

  void openAddAttachmentBottomSheet(
    BuildContext context,
    NouvelleDemandeFormulaireScreenViewModel vm,
  ) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        _buildTakePictureAction(context, vm),
        _buildChoosePictureAction(context, vm),
        _buildChooseFileAction(context, vm),
      ],
      context,
      title: 'Ajouter un document',
      description: 'Formats acceptés : .pdf, .txt, .rtf, .jpg,\n.jpeg, .tiff, .tif\nTaille maximale du fichier : 10 Mo',
    );
  }

  BottomSheetAction _buildTakePictureAction(BuildContext context, NouvelleDemandeFormulaireScreenViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_camera,
      label: 'Prendre une photo',
      execution: () async {
        final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
        if (pickedFile != null) {
          final File file = File(pickedFile.path);
          final EnsFileContent fileContent = fileHelper.extractEnsFileContentFromFile(file);
          _uploadNewFileAsAttachment(vm, ensFileContent: fileContent);
        }
      },
    );
  }

  BottomSheetAction _buildChooseFileAction(BuildContext context, NouvelleDemandeFormulaireScreenViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_file_blank_filled,
      label: 'Choisir un fichier',
      execution: () async {
        final file = await getFileFromFilePicker();
        if (file != null) {
          _uploadNewFileAsAttachment(vm, ensFileContent: fileHelper.extractEnsFileContentFromFile(file));
        }
      },
    );
  }

  BottomSheetAction _buildChoosePictureAction(BuildContext context, NouvelleDemandeFormulaireScreenViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_file_image,
      label: 'Choisir une photo',
      execution: () async {
        EnsImagePicker(fileHelper).pickMultipleImages(context, (fileContent) {
          _uploadNewFileAsAttachment(vm, ensFileContent: fileContent);
        });
      },
    );
  }

  void _uploadNewFileAsAttachment(
    NouvelleDemandeFormulaireScreenViewModel vm, {
    required EnsFileContent ensFileContent,
  }) {
    vm.addAttachment(ensFileContent);
  }
}
