/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_list_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/dossier_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/get_selected_document_ids_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_attachment_loading_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/documents_list_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/choose_ens_documents_attachment_screen_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DossierSelectionItemsScreen extends StatelessWidget {
  static const routeName = '/dossierDocumentsAttachment';

  @override
  Widget build(BuildContext context) {
    final viewArgument = ModalRoute.of(context)!.settings.arguments! as DossierSelectionItemsScreenArgument;
    return StoreConnector<EnsState, DossierDetailScreenViewModel>(
      converter: (store) => DossierDetailScreenViewModel.from(
        store,
        dossierId: viewArgument.dossierId,
        filterOnType: viewArgument.argument.filter == DocumentsListFilter.PIECES_ADMINISTRATIVES
            ? EnsDocumentCategorie.pieceAdministrative
            : null,
      ),
      distinct: true,
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: vm.dossierName ?? ''),
        body: viewArgument.isEmpty ? _EmptyFolder() : _View(vm, viewArgument.argument),
      ),
    );
  }
}

class _View extends StatelessWidget {
  final DossierDetailScreenViewModel dossierViewModel;
  final ChooseEnsDocumentScreenArgument argument;

  const _View(this.dossierViewModel, this.argument);

  @override
  Widget build(BuildContext context) {
    switch (dossierViewModel.status) {
      case DossierDetailDisplayStatus.SUCCESS:
        return StoreConnector<EnsState, ChooseEnsDocumentsAttachmentScreenViewModel>(
          converter: (store) => ChooseEnsDocumentsAttachmentScreenViewModel(store),
          builder: (_, ChooseEnsDocumentsAttachmentScreenViewModel vm) =>
              vm.attachmentDocStatus == AttachmentDocStatus.LOADING
                  ? DocumentAttachmentLoadingScreen()
                  : _Content(attachedFileViewModel: vm, dossierViewModel: dossierViewModel, argument: argument),
        );
      case DossierDetailDisplayStatus.EMPTY:
        return _EmptyFolder();
      default:
        return DocumentAttachmentLoadingScreen();
    }
  }
}

class _EmptyFolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EnsSvg(EnsImages.document_erreur, width: 160, height: 160),
          const SizedBox(height: 24),
          const Text('Aucun document', style: EnsTextStyle.text24_w400_normal_title, textAlign: TextAlign.center),
          const SizedBox(height: 44),
          EnsButton(
            label: 'Voir tous mes documents de santé',
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final DossierDetailScreenViewModel dossierViewModel;
  final ChooseEnsDocumentsAttachmentScreenViewModel attachedFileViewModel;
  final ChooseEnsDocumentScreenArgument argument;

  const _Content({required this.dossierViewModel, required this.attachedFileViewModel, required this.argument});

  @override
  Widget build(BuildContext context) {
    final displayModels = dossierViewModel.items
        .where(
          (item) =>
              item.runtimeType == ViewItemDocument ||
              item.runtimeType == ViewItemDocumentsHeader ||
              item.runtimeType == ViewItemFilter,
        )
        .toList();
    return Column(
      children: [
        Expanded(
          child: ListViewWithScrollbar.separated(
            separatorBuilder: (_, index) =>
                index == 0 ? const SizedBox() : const Divider(height: 2, color: EnsColors.neutral200),
            padding: const EdgeInsets.only(bottom: 32),
            itemCount: displayModels.length + 1,
            itemBuilder: (_, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                  child: Text(
                    argument.headerInfoText,
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                );
              }
              final displayModel = displayModels[index - 1];
              switch (displayModel) {
                case ViewItemDocument _:
                  final docId = displayModel.document.id;
                  return DocumentSelectionItem(idDocument: docId, shouldDisplayFolderName: false);
                case ViewItemDocumentsHeader _:
                  final documentsCount = displayModel.documentsCount;
                  return DocumentsListHeader(
                    count: documentsCount,
                    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                  );
                case ViewItemFilter _:
                  return Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: DocumentDisplayOptionActionBar(
                      selectionMode: true,
                      dossierToFilterId: dossierViewModel.dossierId,
                    ),
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
        StoreConnector<EnsState, GetSelectedDocumentIdsViewModel>(
          converter: (store) => GetSelectedDocumentIdsViewModel(store),
          distinct: true,
          builder: (context, GetSelectedDocumentIdsViewModel vm) => Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            child: Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: vm.selectedDocuments.isEmpty ? 'Ajouter' : 'Ajouter (${vm.selectedDocuments.length})',
                    onTap: () => _onAdd(context, vm, argument.tagOnAddButtonClicked),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onAdd(
    BuildContext context,
    GetSelectedDocumentIdsViewModel vm,
    EnsTag? tagOnAddButtonClicked,
  ) {
    if (vm.selectedDocuments.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        EnsSnackbar.error(
          context: context,
          label: 'Sélectionner au moins un document',
          extraVerticalPadding: 100,
        ),
      );
    } else {
      if (tagOnAddButtonClicked != null) context.tagAction(tagOnAddButtonClicked);
      Navigator.of(context)
        ..pop()
        ..pop(vm.selectedDocuments);
    }
  }
}

class DossierSelectionItemsScreenArgument {
  final String dossierId;
  final bool isEmpty;
  final ChooseEnsDocumentScreenArgument argument;

  DossierSelectionItemsScreenArgument({
    required this.dossierId,
    required this.isEmpty,
    required this.argument,
  });
}
