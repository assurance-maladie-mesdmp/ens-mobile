/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/document_deletion_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/documents_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/move_document_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/filter_result_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/empty_filter_result.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/documents_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class FilterResultScreen extends StatelessWidget {
  static const routeName = '/filterResult';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as List;
    final filterResultScreenArgument = arguments[0] as FilterResultScreenArgument;
    final selectionMode = arguments.length > 1 && arguments[1] as bool;
    return StoreConnector<EnsState, FilterResultScreenViewModel>(
      converter: (store) => FilterResultScreenViewModel.from(store, filterResultScreenArgument),
      distinct: true,
      onInitialBuild: (vm) {
        vm.loadDocuments();
        vm.tagAction(
          vm.filteredDocuments.isNotEmpty
              ? TagsDocuments.tag_525_documents_filtres
              : TagsDocuments.tag_520_documents_filtres_empty,
        );
      },
      builder: (_, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Résultats'),
        body: _FilterContent(vm, selectionMode, filterResultScreenArgument.filterMode),
      ),
    );
  }
}

class _FilterContent extends StatelessWidget {
  final FilterResultScreenViewModel vm;
  final bool selectionMode;
  final FilterMode filterMode;

  const _FilterContent(this.vm, this.selectionMode, this.filterMode);

  @override
  Widget build(BuildContext context) {
    switch (vm.documentsStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return _FilterLoading();
      case AllPurposesStatus.SUCCESS:
        return vm.filteredDocuments.isNotEmpty
            ? _FilterWithResults(vm, selectionMode)
            : EmptyFilterResult(
                currentActiveFilters: vm.currentActiveFilters,
                dossierId: vm.dossierId,
                selectionMode: selectionMode,
                filterMode: filterMode,
              );
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: () => vm.loadDocuments());
    }
  }
}

class _FilterLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                SkeletonBox(width: 150.0, height: 48, radius: 16),
                Spacer(),
                SkeletonBox(width: 75.0, height: 48, radius: 60),
              ],
            ),
          ),
          SizedBox(height: 10),
          SkeletonBox(height: 125.0, width: double.infinity),
          SizedBox(height: 3),
          EnsDivider(),
          SizedBox(height: 2),
          SkeletonBox(height: 125.0, width: double.infinity),
        ],
      ),
    );
  }
}

class _FilterWithResults extends StatelessWidget {
  final FilterResultScreenViewModel vm;
  final bool selectionMode;

  const _FilterWithResults(this.vm, this.selectionMode);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        DocumentDisplayOptionActionBar(
          preSelectedCategories: vm.currentActiveFilters,
          dossierToFilterId: vm.dossierId,
          selectionMode: selectionMode,
          epinglerDocumentsCount: vm.epinglerDocumentsCount,
        ),
        SlidableAutoCloseBehavior(
          child: Expanded(
            child: ListViewWithScrollbar.separated(
              itemBuilder: (context, index) => _DocumentItem(
                vm: vm,
                context: context,
                document: vm.filteredDocuments[index],
              ),
              separatorBuilder: (_, __) => const Divider(height: 2, color: EnsColors.neutral200),
              itemCount: vm.filteredDocuments.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _DocumentItem extends StatelessWidget {
  final FilterResultScreenViewModel vm;
  final BuildContext context;
  final EnsDocument document;

  const _DocumentItem({required this.vm, required this.context, required this.document});

  @override
  Widget build(BuildContext context) {
    return DocumentsSlidable(
      onPinPressed: () {
        DocumentActionsHelper.setDocumentPinStatus(
          context,
          document.id,
          !document.isEpingle,
        );
        final tag = document.isEpingle
            ? TagsDocuments.tag_2466_button_swipe_documents_retirer_epingle
            : TagsDocuments.tag_2463_button_swipe_documents_epingler;
        context.tagAction(tag);
      },
      onDeletePressed: () {
        if (document.deletable) {
          GuestModeHelper.showUnavailableSnackbarIfGuestMode(
            context: context,
            onAuthenticatedMode: () => _deleteDocument(context),
          );
        } else {
          DocumentsHelper.displayCantDeleteDocumentBottomSheet(context);
        }
      },
      iconPin: document.isEpingle ? EnsImages.ic_unpin : EnsImages.ic_pin,
      labelPin: document.isEpingle ? 'Retirer \nl\'épingle' : 'Épingler',
      child: DocumentItem(
        shouldDisplayDossierName: vm.dossierId == null,
        viewItemDocument: ViewItemDocument(document: document),
        onPin: () => DocumentActionsHelper.setDocumentPinStatus(context, document.id, !document.isEpingle),
        onDownload: () => DocumentActionsHelper.downloadDocument(context, docToDisplay: document),
        onDelete: () => _deleteDocument(context),
        onMove: () => MoveDocumentViewController.moveDocuments(context, docId: document.id),
      ),
    );
  }

  void _deleteDocument(BuildContext context) {
    return DocumentDeletionViewController.deleteDocument(
      context,
      document,
    );
  }
}

enum FilterMode { BY_CATEGORIE, BY_EPINGLE }

class FilterResultScreenArgument {
  final List<EnsDocumentCategorie> currentActiveFilters;
  final String? dossierId;
  final bool shouldAnimateNewScreen;
  final FilterMode filterMode;

  FilterResultScreenArgument({
    required this.currentActiveFilters,
    this.dossierId,
    this.shouldAnimateNewScreen = false,
    this.filterMode = FilterMode.BY_CATEGORIE,
  });

  factory FilterResultScreenArgument.epingle() => FilterResultScreenArgument(
        currentActiveFilters: [],
        shouldAnimateNewScreen: true,
        filterMode: FilterMode.BY_EPINGLE,
      );
}
