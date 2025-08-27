/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_model.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/images/multi_image_pdf_preview_screen.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/get_file_helper.dart';
import 'package:fr_cnamts_ens/utils/pick_image_utils.dart';

class AddDocumentsActionsHelper {
  final DocumentEditionViewModel vm;
  final String sourceRouteName;
  final bool isAttachedFile;

  AddDocumentsActionsHelper({required this.vm, required this.sourceRouteName, required this.isAttachedFile});

  void openAddDocumentActions({
    required BuildContext context,
    required List<String> alreadySelectedDocsIds,
    required String mesDocPickerHeaderInfoText,
    required void Function(List<EnsDocument>) onExistingMESDocsSelectedCallback,
  }) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_folder_open_padding,
          label: 'Choisir dans les documents de Mon espace santé',
          execution: () {
            if (isAttachedFile) {
              _pickAttachedFile(
                context,
                alreadySelectedDocsIds,
                onExistingMESDocsSelectedCallback,
                mesDocPickerHeaderInfoText,
              );
            } else {
              _pickDocumentFromMes(
                context,
                alreadySelectedDocsIds,
                onExistingMESDocsSelectedCallback,
                mesDocPickerHeaderInfoText,
              );
            }
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_camera,
          label: 'Prendre une photo',
          execution: () {
            FocusManager.instance.primaryFocus?.unfocus();
            _scanDocument(context);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_file_image,
          label: 'Choisir une photo',
          execution: () => _pickImage(context),
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_file_blank_filled,
          label: 'Choisir un fichier',
          execution: () => _pickFile(context),
        ),
      ],
      context,
      title: 'Ajouter un document',
      description: 'Formats acceptés : .pdf, .txt, .rtf, .jpg,\n.jpeg, .tiff, .tif\nTaille maximale du fichier : 5 Mo',
    );
  }

  void _pickDocumentFromMes(
    BuildContext context,
    List<String> alreadySelectedDocsIds,
    void Function(List<EnsDocument>) onExistingMESDocsSelectedCallback,
    String mesDocPickerHeaderInfoText,
  ) {
    Navigator.pushNamed(
      context,
      ChooseEnsDocumentsScreen.routeName,
      arguments: ChooseEnsDocumentScreenArgument(
        alreadySelectedDocsIds: alreadySelectedDocsIds,
        headerInfoText: mesDocPickerHeaderInfoText,
      ),
    ).then((selectedDocs) {
      if (selectedDocs != null) onExistingMESDocsSelectedCallback(selectedDocs as List<EnsDocument>);
    });
  }

  void _pickAttachedFile(
    BuildContext context,
    List<String> alreadySelectedDocsIds,
    void Function(List<EnsDocument>) onExistingMESDocsSelectedCallback,
    String mesDocPickerHeaderInfoText,
  ) {
    Navigator.pushNamed(
      context,
      ChooseEnsDocumentsScreen.routeName,
      arguments: ChooseEnsDocumentScreenArgument(
        alreadySelectedDocsIds: alreadySelectedDocsIds,
        headerInfoText: mesDocPickerHeaderInfoText,
      ),
    ).then((selectedDocs) {
      if (selectedDocs != null) onExistingMESDocsSelectedCallback(selectedDocs as List<EnsDocument>);
    });
  }

  Future<void> _scanDocument(
    BuildContext context,
  ) async {
    ScannerBridge.initScannerListener((List<OriginalImage> fileContents) {
      _launchDocumentEditionAfterScan(fileContents);
    });
    await ScannerBridge.getScannedDocuments();
  }

  Future<void> _pickFile(
    BuildContext context,
  ) async {
    final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();
    final file = await getFileFromFilePicker();
    if (file != null) {
      final EnsFileContent fileContent = fileHelper.extractEnsFileContentFromFile(file);
      _launchDocumentEdition(fileContent);
    }
  }

  Future<void> _pickImage(
    BuildContext context,
  ) async {
    final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();
    EnsImagePicker(fileHelper).pickMultipleImages(context, (fileContent) {
      _launchDocumentEdition(fileContent);
    });
  }

  void _launchDocumentEdition(EnsFileContent fileContent) {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    final MimeType mimeType = MimeTypeUtils.fromLabel(fileContent.mimeType);
    if (MimeTypeUtils.IMAGE_MIMETYPES.contains(mimeType)) {
      if (vm.isPagesEmpty()) {
        vm.addPage([fileContent]);
        navigatorKey.currentState?.pushNamed(
          MultiImagesPdfPreviewScreen.routeName,
          arguments: MultiImagesPdfPreviewArgument(isDocumentCreatedToBeLinked: true, sourceRouteName: sourceRouteName),
        );
      } else {
        vm.addPage([fileContent]);
      }
    } else {
      navigatorKey.currentState?.pushNamed(
        CreateDocumentFromFileScreen.routeName,
        arguments: CreateDocumentFromFileArgument(ensFileContent: fileContent, isDocumentCreatedToBeLinked: true),
      );
    }
  }

  void _launchDocumentEditionAfterScan(List<OriginalImage> fileContents) {
    if (fileContents.isNotEmpty) {
      vm.addScannedPage(fileContents);
      final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
      navigatorKey.currentState?.pushNamed(
        MultiImagesPdfPreviewScreen.routeName,
        arguments: MultiImagesPdfPreviewArgument(isDocumentCreatedToBeLinked: true, sourceRouteName: sourceRouteName),
      );
    }
  }
}
