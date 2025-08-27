/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/choose_attachment_action_controller.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:redux/redux.dart';

class AttachmentDisplayScreenViewModel extends Equatable {
  final DisplayMode displayMode;
  final String? attachmentId;
  final Uint8List? fileBinary;
  final String? name;
  final AttachmentContent? attachmentContent;
  final ActionMode actionMode;
  final void Function() loadAttachment;
  final void Function() downloadAttachmentOnDevice;

  const AttachmentDisplayScreenViewModel._internal({
    required this.displayMode,
    this.attachmentId,
    this.fileBinary,
    this.name,
    this.attachmentContent,
    required this.actionMode,
    required this.loadAttachment,
    required this.downloadAttachmentOnDevice,
  });

  factory AttachmentDisplayScreenViewModel(Store<EnsState> store, ActionMode actionMode) {
    final attachmentContentState = store.state.messagerieState.attachmentContentState;
    final attachmentContent = attachmentContentState.attachmentContent;
    if (attachmentContentState.isSuccessWithData) {
      switch (attachmentContent!.mimeType) {
        case MimeTypeUtils.PDF_LABEL:
          return AttachmentDisplayScreenViewModel._internal(
            displayMode: DisplayMode.SUCCESS_PDF_PREVIEW,
            fileBinary: base64.decode(attachmentContent.base64Content.replaceAll(RegExp(r'\s+'), '')),
            attachmentContent: attachmentContent,
            actionMode: actionMode,
            loadAttachment: () => _loadAttachment(store, attachmentContentState.attachmentId),
            downloadAttachmentOnDevice: () => _downloadAttachmentOnDevice(store, attachmentContent),
          );
        case MimeTypeUtils.JPEG_LABEL:
        case MimeTypeUtils.JPG_LABEL:
        case MimeTypeUtils.PNG_LABEL:
          return AttachmentDisplayScreenViewModel._internal(
            displayMode: DisplayMode.SUCCESS_IMG_PREVIEW,
            fileBinary: base64Decode(attachmentContent.base64Content),
            name: attachmentContent.name,
            attachmentContent: attachmentContent,
            actionMode: actionMode,
            loadAttachment: () => _loadAttachment(store, attachmentContentState.attachmentId),
            downloadAttachmentOnDevice: () => _downloadAttachmentOnDevice(store, attachmentContent),
          );
        default:
          return AttachmentDisplayScreenViewModel._internal(
            displayMode: DisplayMode.SUCCESS_NO_PREVIEW,
            attachmentContent: attachmentContent,
            actionMode: actionMode,
            loadAttachment: () => _loadAttachment(store, attachmentContentState.attachmentId),
            downloadAttachmentOnDevice: () => _downloadAttachmentOnDevice(store, attachmentContent),
          );
      }
    } else if (attachmentContentState.isErrorOrSuccessWithoutData) {
      return AttachmentDisplayScreenViewModel._internal(
        displayMode: DisplayMode.ERROR,
        attachmentId: attachmentContentState.attachmentId,
        actionMode: actionMode,
        loadAttachment: () => _loadAttachment(store, attachmentContentState.attachmentId),
        downloadAttachmentOnDevice: () => _downloadAttachmentOnDevice(store, attachmentContent),
      );
    }
    return AttachmentDisplayScreenViewModel._internal(
      displayMode: DisplayMode.LOADING,
      actionMode: actionMode,
      loadAttachment: () => _loadAttachment(store, attachmentContentState.attachmentId),
      downloadAttachmentOnDevice: () => _downloadAttachmentOnDevice(store, attachmentContent),
    );
  }

  static void _loadAttachment(Store<EnsState> store, String? attachmentId) {
    if (attachmentId != null) {
      store.dispatch(FetchAttachmentContentAction(attachmentId));
    }
  }

  static void _downloadAttachmentOnDevice(Store<EnsState> store, AttachmentContent? attachmentContent) {
    if (attachmentContent != null) {
      store.dispatch(DownloadAttachmentOnDeviceAction(attachmentContent));
    }
  }

  @override
  // Il manque fileBinary dans les props mais c'est trop lourd pour être évalué
  // ignore: add_all_props_in_equatable
  List<Object?> get props => [displayMode, attachmentId, name, attachmentContent, actionMode];
}

enum DisplayMode { LOADING, ERROR, SUCCESS_PDF_PREVIEW, SUCCESS_NO_PREVIEW, SUCCESS_IMG_PREVIEW }
