/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_attachment_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/image_preview_widget.dart';
import 'package:fr_cnamts_ens/documents/widgets/pdf_preview_widget.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/attachment_display/screens/viewmodels/attachment_display_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/choose_attachment_action_controller.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:lottie/lottie.dart';

class AttachmentDisplayScreenArguments {
  final FileAttachmentDisplayModel attachmentDisplayModel;
  final ActionMode actionMode;

  AttachmentDisplayScreenArguments({
    required this.attachmentDisplayModel,
    required this.actionMode,
  });
}

class AttachmentDisplayScreen extends StatelessWidget {
  static const routeName = '/attachmentDisplay';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as AttachmentDisplayScreenArguments?;
    final attachmentDM = arguments!.attachmentDisplayModel;
    final actionMode = arguments.actionMode;
    return StoreConnector<EnsState, AttachmentDisplayScreenViewModel>(
      converter: (store) => AttachmentDisplayScreenViewModel(store, actionMode),
      onInit: (store) {
        store.dispatch(FetchAttachmentContentAction(attachmentDM.documentId));
      },
      onInitialBuild: (vm) {
        _tagPage(context, actionMode);
      },
      distinct: true,
      onDidChange: (_, vm) => _checkActionMode(context, vm),
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: attachmentDM.name),
        body: _Body(vm),
      ),
    );
  }

  void _checkActionMode(BuildContext context, AttachmentDisplayScreenViewModel vm) {
    switch (vm.actionMode) {
      case ActionMode.DOWNLOAD:
        vm.downloadAttachmentOnDevice();
      case ActionMode.ADD_TO_DOCUMENTS:
        _addAttachmentToDocuments(context, vm.attachmentContent);
      case ActionMode.DISPLAY:
        break;
    }
  }

  void _addAttachmentToDocuments(BuildContext context, AttachmentContent? attachmentContent) {
    if (attachmentContent != null && attachmentContent.canAddToDMP) {
      Navigator.pop(context);
      final arguments = CreateDocumentFromAttachmentArgument(attachmentContent);
      Navigator.pushNamed(context, CreateDocumentFromAttachmentScreen.routeName, arguments: arguments);
    } else {
      showSnackbarError(
        context,
        'Ajout aux documents impossible : la pièce-jointe est trop lourde ou de type non supporté',
      );
    }
  }

  void _tagPage(BuildContext context, ActionMode actionMode) {
    if (actionMode == ActionMode.DISPLAY) {
      context.tagAction(TagsMessagerie.tag_messagerie_message_visualiser_PJ);
    } else if (actionMode == ActionMode.ADD_TO_DOCUMENTS) {
      context.tagAction(TagsMessagerie.tag_messagerie_enregistrement_PJ_MesDocuments);
    }
  }
}

class _Loading extends StatelessWidget {
  final ActionMode actionMode;

  const _Loading(this.actionMode);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: DeviceUtils.isSmallDevice(context) ? 80 : 148),
          Lottie.asset('assets/anims/file_download.json', height: 160, width: 160, fit: BoxFit.contain),
          const SizedBox(height: 80),
          Text(
            actionMode == ActionMode.ADD_TO_DOCUMENTS
                ? 'Chargement de la pièce-jointe\u2026'
                : 'Chargement de l\'aperçu\u2026',
            style: EnsTextStyle.text14_w700_normal_primary,
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final AttachmentDisplayScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayMode) {
      case DisplayMode.LOADING:
        return _Loading(vm.actionMode);
      case DisplayMode.ERROR:
        return _Error(() => vm.loadAttachment());
      case DisplayMode.SUCCESS_PDF_PREVIEW:
        return PdfPreviewWidget(fileBinary: vm.fileBinary!, sourceName: vm.attachmentContent!.name);
      case DisplayMode.SUCCESS_IMG_PREVIEW:
        return ImagePreviewWidget(vm.fileBinary!, vm.name!);
      case DisplayMode.SUCCESS_NO_PREVIEW:
        return _SuccessNoPreview(vm.downloadAttachmentOnDevice);
    }
  }
}

class _Error extends StatelessWidget {
  final VoidCallback loadAttachment;

  const _Error(this.loadAttachment);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => loadAttachment());
  }
}

class _SuccessNoPreview extends StatelessWidget {
  final Function() downloadAttachmentOnDevice;

  const _SuccessNoPreview(this.downloadAttachmentOnDevice);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 80),
      child: Column(
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: EnsColors.neutral200,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  EnsSvg(EnsImages.document_ajout, height: 160, width: 160),
                  SizedBox(height: 4),
                  Text('Aperçu non disponible', style: EnsTextStyle.text20_w400_normal_title),
                  SizedBox(height: 24),
                  Text(
                    'Aucun aperçu disponible pour ce type de document.',
                    textAlign: TextAlign.center,
                    style: EnsTextStyle.text16_w400_normal_body,
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: EnsButton(
                  label: Platform.isAndroid ? 'Télécharger la pièce jointe' : 'Ouvrir la pièce jointe',
                  onTap: () => downloadAttachmentOnDevice(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
