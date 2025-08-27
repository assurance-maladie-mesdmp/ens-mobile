/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/filter_result_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/get_selected_document_ids_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/empty_filter_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/choose_ens_documents_attachment_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class SelectionFilterResultScreen extends StatelessWidget {
  static const routeName = '/attachmentFilterResult';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as AttachmentFilterResultArgument;

    return StoreConnector<EnsState, FilterResultScreenViewModel>(
      converter: (store) => FilterResultScreenViewModel.from(store, arguments.filterResult),
      distinct: true,
      onInitialBuild: (vm) => _tagFilterResultsPage(vm),
      builder: (_, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Résultats'),
        body: vm.filteredDocuments.isNotEmpty
            ? _FilterWithResults(
                currentActiveFilters: vm.currentActiveFilters,
                dossierId: vm.dossierId,
                filteredDocuments: vm.filteredDocuments,
                chosenDocuments: arguments.chosenDocuments,
              )
            : EmptyFilterResult(
                currentActiveFilters: vm.currentActiveFilters,
                dossierId: vm.dossierId,
                selectionMode: true,
                selectedDocuments: arguments.chosenDocuments,
                filterMode: FilterMode.BY_CATEGORIE,
              ),
      ),
    );
  }

  void _tagFilterResultsPage(FilterResultScreenViewModel vm) {
    if (vm.filteredDocuments.isNotEmpty) {
      vm.tagAction(TagsDocuments.tag_525_documents_filtres);
    } else {
      vm.tagAction(TagsDocuments.tag_520_documents_filtres_empty);
    }
  }
}

class _FilterWithResults extends StatelessWidget {
  final List<EnsDocumentCategorie> currentActiveFilters;
  final String? dossierId;
  final List<EnsDocument> filteredDocuments;
  final ChooseEnsDocumentScreenArgument? chosenDocuments;

  const _FilterWithResults({
    required this.currentActiveFilters,
    this.dossierId,
    required this.filteredDocuments,
    this.chosenDocuments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DocumentDisplayOptionActionBar(
          preSelectedCategories: currentActiveFilters,
          dossierToFilterId: dossierId,
          selectedDocuments: chosenDocuments,
          selectionMode: true,
          shouldReopenFilterDialogOnBack: true,
        ),
        StoreConnector<EnsState, ChooseEnsDocumentsAttachmentScreenViewModel>(
          converter: (store) => ChooseEnsDocumentsAttachmentScreenViewModel(store),
          distinct: true,
          builder: (_, ChooseEnsDocumentsAttachmentScreenViewModel chooseEnsDocAttachmentVm) => Expanded(
            child: _DocumentsList(chooseEnsDocAttachmentVm, filteredDocuments, chosenDocuments, dossierId),
          ),
        ),
      ],
    );
  }
}

class _DocumentsList extends StatelessWidget {
  final ChooseEnsDocumentsAttachmentScreenViewModel chooseEnsDocAttachmentVm;
  final List<EnsDocument> filteredDocuments;
  final ChooseEnsDocumentScreenArgument? chosenDocuments;
  final String? dossierId;

  const _DocumentsList(this.chooseEnsDocAttachmentVm, this.filteredDocuments, this.chosenDocuments, this.dossierId);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ListViewWithScrollbar.separated(
          separatorBuilder: (context, index) => _Divider(isNotLastIndex: index != filteredDocuments.length - 1),
          padding: const EdgeInsets.only(bottom: 96),
          itemCount: filteredDocuments.length,
          itemBuilder: (_, index) => DocumentSelectionItem(
            idDocument: filteredDocuments[index].id,
            shouldDisplayFolderName: dossierId == null,
          ),
        ),
        StoreConnector<EnsState, GetSelectedDocumentIdsViewModel>(
          converter: (store) => GetSelectedDocumentIdsViewModel(store),
          distinct: true,
          builder: (_, GetSelectedDocumentIdsViewModel vm) => Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            child: Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: vm.selectedDocuments.isEmpty ? 'Ajouter' : 'Ajouter (${vm.selectedDocuments.length})',
                    onTap: () => _onAdd(context, vm),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _onAdd(BuildContext context, GetSelectedDocumentIdsViewModel vm) {
    context.tagAction(TagsMessagerie.tag_630_button_validation_ajout_document_sante);
    if (vm.selectedDocuments.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        EnsSnackbar.error(
          context: context,
          label: 'Sélectionner au moins un document',
          extraVerticalPadding: 76,
        ),
      );
    } else {
      Navigator.of(context)
        ..pop(true)
        ..pop(vm.selectedDocuments);
    }
  }
}

class _Divider extends StatelessWidget {
  final bool isNotLastIndex;

  const _Divider({required this.isNotLastIndex});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: isNotLastIndex ? 2 : 0,
      color: isNotLastIndex ? EnsColors.neutral200 : EnsColors.light,
    );
  }
}

class AttachmentFilterResultArgument {
  final FilterResultScreenArgument filterResult;
  final ChooseEnsDocumentScreenArgument? chosenDocuments;

  AttachmentFilterResultArgument(this.filterResult, this.chosenDocuments);
}
