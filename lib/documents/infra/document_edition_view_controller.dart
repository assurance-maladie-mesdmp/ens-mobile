/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_model.dart';
import 'package:fr_cnamts_ens/documents/scanner_bridge/scanner_bridge.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/creation_dossier_bottom_sheet.dart';
import 'package:fr_cnamts_ens/documents/screens/images/multi_image_pdf_preview_screen.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/get_file_helper.dart';
import 'package:fr_cnamts_ens/utils/pick_image_utils.dart';

class DocumentEditionViewController {
  final BuildContext context;
  final EnsDocumentCategorie? forcedCategory;
  final DocumentEditionViewModel vm;
  final bool showOnlyImageAction;
  final bool showAddFolder;

  final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();

  DocumentEditionViewController._internal(
    this.context, {
    this.forcedCategory,
    required this.vm,
    required this.showOnlyImageAction,
    required this.showAddFolder,
  });

  factory DocumentEditionViewController(
    BuildContext context, {
    EnsDocumentCategorie? forcedCategory,
    bool showOnlyImageAction = false,
    bool showAddFolder = false,
  }) {
    return DocumentEditionViewController._internal(
      context,
      forcedCategory: forcedCategory,
      vm: DocumentEditionViewModel(StoreProvider.of(context)),
      showOnlyImageAction: showOnlyImageAction,
      showAddFolder: showAddFolder,
    );
  }

  void openSelectAction({
    required Function() onFillOnlineFormSelected,
  }) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_attachment,
          label: 'J\'ajoute un document',
          execution: () {
            openAddDocumentActions();
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Je remplis le formulaire en ligne',
          execution: () {
            onFillOnlineFormSelected();
          },
        ),
      ],
      context,
    );
  }

  void openAddDocumentActions({
    String? dossierId,
    Function()? onAddDocumentAlreadyInMonEspaceSanteToFolder,
    bool showAddDocumentAlreadyInMonEspaceSanteToFolder = false,
  }) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        if (showAddDocumentAlreadyInMonEspaceSanteToFolder)
          BottomSheetAction(
            assetName: EnsImages.ic_folder_open_padding,
            label: 'Choisir dans mes documents de Mon espace santé',
            execution: () {
              onAddDocumentAlreadyInMonEspaceSanteToFolder?.call();
            },
          ),
        BottomSheetAction(
          assetName: EnsImages.ic_camera,
          label: 'Prendre une photo',
          execution: () {
            tagClick('button_type_dajout_camera');
            scanDocument(context, dossierId: dossierId);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_file_image,
          label: 'Choisir une photo',
          execution: () {
            tagClick('button_type_dajout_album');
            pickImages(dossierId: dossierId);
          },
        ),
        if (!showOnlyImageAction)
          BottomSheetAction(
            assetName: EnsImages.ic_file_blank_filled,
            label: 'Choisir un fichier',
            execution: () {
              tagClick('button_type_dajout_fichier');
              pickFile(dossierId: dossierId);
            },
          ),
        if (showAddFolder)
          BottomSheetAction(
            assetName: EnsImages.ic_folder_plus,
            label: 'Créer un nouveau dossier',
            execution: () {
              createFolder();
              context.tagAction(TagsDocuments.tag_695_link_nouveau_dossier);
            },
          ),
      ],
      context,
      title: 'Ajouter un document',
      description: 'Formats acceptés : .pdf, .txt, .rtf, .jpg,\n.jpeg, .tiff, .tif\nTaille maximale du fichier : 5 Mo',
    );
  }

  Future<void> pickFile({String? dossierId}) async {
    final file = await getFileFromFilePicker();
    if (file != null) {
      final EnsFileContent fileContent = fileHelper.extractEnsFileContentFromFile(file);
      _launchDocumentEdition(fileContent, dossierId: dossierId);
    }
  }

  Future<void> pickImages({String? dossierId}) async {
    EnsImagePicker(fileHelper).pickMultipleImages(context, (fileContent) {
      _launchDocumentEdition(fileContent, dossierId: dossierId);
    });
  }

  Future<void> scanDocument(BuildContext context, {String? dossierId}) async {
    ScannerBridge.initScannerListener((List<OriginalImage> fileContents) {
      _launchDocumentEditionAfterScan(fileContents, dossierId: dossierId);
    });
    await ScannerBridge.getScannedDocuments();
  }

  void _launchDocumentEdition(EnsFileContent fileContent, {String? dossierId}) {
    final MimeType mimeType = MimeTypeUtils.fromLabel(fileContent.mimeType);
    if (MimeTypeUtils.IMAGE_MIMETYPES.contains(mimeType)) {
      if (vm.isPagesEmpty()) {
        vm.addPage([fileContent]);
        Navigator.pushNamed(
          context,
          MultiImagesPdfPreviewScreen.routeName,
          arguments: MultiImagesPdfPreviewArgument(forcedCategory: forcedCategory, dossierId: dossierId),
        );
      } else {
        vm.addPage([fileContent]);
      }
    } else {
      Navigator.pushNamed(
        context,
        CreateDocumentFromFileScreen.routeName,
        arguments: CreateDocumentFromFileArgument(
          forcedCategory: forcedCategory,
          ensFileContent: fileContent,
          dossierId: dossierId,
        ),
      );
    }
  }

  void _launchDocumentEditionAfterScan(List<OriginalImage> fileContents, {String? dossierId}) {
    if (fileContents.isNotEmpty) {
      vm.addScannedPage(fileContents);
      final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
        MultiImagesPdfPreviewScreen.routeName,
        (route) => route.settings.name != MultiImagesPdfPreviewScreen.routeName,
        arguments: MultiImagesPdfPreviewArgument(forcedCategory: forcedCategory, dossierId: dossierId),
      );
    } else {
      vm.showErrorSnackbar();
    }
  }

  void createFolder() {
    final controller = TextEditingController();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => CreationDossierBottomSheet(controller),
    );
  }

  void tagClick(String tagName) {
    vm.tagAction(
      EnsTag(
        name: tagName,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'documents',
        level2: 'documents_ajout',
      ),
    );
  }
}
