/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/send_message_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/get_file_helper.dart';
import 'package:fr_cnamts_ens/utils/pick_image_utils.dart';
import 'package:image_picker/image_picker.dart';

class MessagerieViewHelper {
  final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();
  final TextEditingController? contentTextInputController;
  final ValueNotifier<ContactItemDisplayModel?>? recipientController;
  final TextEditingController? subjectTextInputController;
  final void Function()? tagOnTakePicture;
  final void Function()? tagOnChoseFile;
  final void Function()? tagOnChosePictureInGallery;
  final void Function()? tagOnBottomSheetOpens;
  final ProfilType profilType;

  MessagerieViewHelper({
    this.tagOnTakePicture,
    this.tagOnChoseFile,
    this.tagOnChosePictureInGallery,
    this.tagOnBottomSheetOpens,
    this.contentTextInputController,
    this.recipientController,
    this.subjectTextInputController,
    required this.profilType,
  });

  void openAddAttachmentBottomSheet(
    BuildContext context,
    SendMessageViewModel vm,
  ) {
    tagOnBottomSheetOpens?.call();
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        _buildChooseMyEnsDocumentsAction(context, vm, profilType),
        _buildTakePictureAction(context, vm),
        _buildChoosePictureAction(context, vm),
        _buildChooseFileAction(context, vm),
        _buildAddMedicalProfilAction(context, vm),
      ],
      context,
      title: 'Ajouter une pièce jointe',
    );
  }

  BottomSheetAction _buildChooseMyEnsDocumentsAction(
    BuildContext context,
    SendMessageViewModel vm,
    ProfilType profilType,
  ) {
    return BottomSheetAction(
      assetName: EnsImages.ic_folder_open_padding,
      label: 'Choisir dans les documents de mon espace santé',
      execution: () async {
        final sendMessageInput = vm.buildSendMessageInput(
          content: contentTextInputController?.text,
          recipientId: recipientController?.value?.id,
          subject: subjectTextInputController?.text,
        );
        final args = ChooseEnsDocumentScreenArgument(
          headerInfoText: _getHeaderInfoText(
            profilType: profilType,
          ),
          pageTitle: 'Ajouter une pièce jointe',
          tagOnAddButtonClicked: TagsMessagerie.tag_630_button_validation_ajout_document_sante,
        );
        final result = (await Navigator.pushNamed(context, ChooseEnsDocumentsScreen.routeName, arguments: args))
            as List<EnsDocument>?;

        if (result != null && sendMessageInput != null) {
          vm.uploadAttachment(
            sendMessageInput: sendMessageInput.clone(ensDocument: result),
            isAPharmacie: recipientController?.value?.isAPharmacie ?? false,
          );
        }
      },
    );
  }

  BottomSheetAction _buildTakePictureAction(BuildContext context, SendMessageViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_camera,
      label: 'Prendre une photo',
      execution: () async {
        tagOnTakePicture?.call();
        final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
        if (pickedFile != null) {
          final File file = File(pickedFile.path);
          final EnsFileContent fileContent = fileHelper.extractEnsFileContentFromFile(file);
          _uploadNewFileAsAttachment(vm, ensFileContent: fileContent);
        }
      },
    );
  }

  BottomSheetAction _buildChooseFileAction(BuildContext context, SendMessageViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_file_blank_filled,
      label: 'Choisir un fichier',
      execution: () async {
        tagOnChoseFile?.call();
        final file = await getFileFromFilePicker();
        if (file != null) {
          _uploadNewFileAsAttachment(vm, ensFileContent: fileHelper.extractEnsFileContentFromFile(file));
        }
      },
    );
  }

  BottomSheetAction _buildChoosePictureAction(BuildContext context, SendMessageViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_file_image,
      label: 'Choisir une photo',
      execution: () async {
        tagOnChosePictureInGallery?.call();
        EnsImagePicker(fileHelper).pickMultipleImages(context, (fileContent) {
          _uploadNewFileAsAttachment(vm, ensFileContent: fileContent);
        });
      },
    );
  }

  BottomSheetAction _buildAddMedicalProfilAction(BuildContext context, SendMessageViewModel vm) {
    return BottomSheetAction(
      assetName: EnsImages.ic_user_pml_outlined,
      label: 'Ajouter le profil médical',
      execution: () {
        _uploadNewFileAsAttachment(vm, withProfilMedical: true);
      },
    );
  }

  void _uploadNewFileAsAttachment(
    SendMessageViewModel vm, {
    EnsFileContent? ensFileContent,
    bool withProfilMedical = false,
  }) {
    final sendMessageInput = vm.buildSendMessageInput(
      content: contentTextInputController?.text,
      ensFileContent: ensFileContent,
      withProfilMedical: withProfilMedical,
      recipientId: recipientController?.value?.id,
      subject: subjectTextInputController?.text,
    );
    if (sendMessageInput != null) {
      vm.uploadAttachment(
        sendMessageInput: sendMessageInput,
        isAPharmacie: recipientController?.value?.isAPharmacie ?? false,
      );
    }
  }

  static String? messageSignatureByAidant({required String? mainProfilFullName, required String? profilFullName}) {
    if (mainProfilFullName != null && profilFullName != null) {
      return '\nCe message a été rédigé par $mainProfilFullName, l\'aidant de $profilFullName.';
    } else {
      return null;
    }
  }

  static String buildSendingMessageContent({required String initialMessage, required String? addingMessage}) {
    String sendingMessageContent = initialMessage;
    if (addingMessage != null) {
      if (sendingMessageContent.endsWith('\n')) {
        sendingMessageContent = '$sendingMessageContent\n$addingMessage';
      } else {
        sendingMessageContent = '$sendingMessageContent\n\n$addingMessage';
      }
    }
    return sendingMessageContent;
  }
}

String _getHeaderInfoText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Sélectionner les documents à ajouter à votre message.',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Sélectionner les documents à ajouter au message.'
  };
}
