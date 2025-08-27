/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_detail_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/selection_filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_filter_dialog_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';

class DocumentFilterDialog extends StatefulWidget {
  final List<EnsDocumentCategorie> preSelectedCategories;
  final String? dossierToFilterId;
  final bool shouldAnimateNewResultPage;
  final bool selectionMode;
  final ChooseEnsDocumentScreenArgument? selectedDocuments;
  final bool isPersonalizedFilters;

  const DocumentFilterDialog({
    this.preSelectedCategories = const [],
    this.dossierToFilterId,
    this.shouldAnimateNewResultPage = false,
    this.selectionMode = false,
    this.selectedDocuments,
    this.isPersonalizedFilters = false,
  });

  @override
  State<DocumentFilterDialog> createState() => _DocumentFilterDialogState();
}

class _DocumentFilterDialogState extends State<DocumentFilterDialog> {
  List<EnsDocumentCategorie> preSelectedCategories = [];

  @override
  void initState() {
    super.initState();
    _tagPage();
    preSelectedCategories = widget.preSelectedCategories.copy();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DocumentFilterDialogViewModel>(
      converter: (store) {
        return DocumentFilterDialogViewModel(
          store,
          preSelectedCategories,
          widget.dossierToFilterId,
          widget.isPersonalizedFilters,
        );
      },
      distinct: true,
      builder: (_, DocumentFilterDialogViewModel vm) {
        return FilterDialog<EnsDocumentCategorie>(
          buttonLabel: 'Filtrer mes documents',
          initialSelectableFilters: vm.selectableFilters,
          labelMapper: (category) => category.label,
          filterTag: TagsDocuments.tag_818_button_valider_filtrer_par_categories_documents,
          emptyFilterTag: TagsDocuments.tag_817_button_voir_tous_les_documents,
          selectedTag: TagsDocuments.tag_815_checkbox_select_categorie_documents,
          unselectedTag: TagsDocuments.tag_816_checkbox_unselect_categorie_documents,
          emptyFilterButtonLabel: 'Voir tous mes documents',
          onFilterSelected: (selectedFilters) => _onFilter(selectedFilters, vm.selectableFilters),
        );
      },
    );
  }

  void _onFilter(
    List<EnsDocumentCategorie> selectedFilters,
    List<CategoryFilterItem<EnsDocumentCategorie>> selectableFilters,
  ) {
    final filtersToDisplay =
        selectedFilters.isNotEmpty ? selectedFilters : selectableFilters.map((e) => e.categorie).toList();
    final filterArgument = FilterResultScreenArgument(
      currentActiveFilters: filtersToDisplay,
      dossierId: widget.dossierToFilterId,
      shouldAnimateNewScreen: widget.shouldAnimateNewResultPage,
    );

    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    String routeName;
    bool Function(Route<dynamic>) withName;
    dynamic attachmentFilterResultArgument;

    if (widget.selectionMode) {
      routeName = SelectionFilterResultScreen.routeName;
      withName = ModalRoute.withName(ChooseEnsDocumentsScreen.routeName);
      attachmentFilterResultArgument = AttachmentFilterResultArgument(filterArgument, widget.selectedDocuments);
    } else {
      routeName = FilterResultScreen.routeName;
      withName = widget.dossierToFilterId == null
          ? (route) => route.isFirst
          : ModalRoute.withName(DossierDetailScreen.routeName);
      attachmentFilterResultArgument = [filterArgument];
    }

    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      withName,
      arguments: attachmentFilterResultArgument,
    );
  }

  void _tagPage() {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      navigatorKey.currentContext!.tagAction(TagsDocuments.tag_814_documents_filtrer_par_categories);
    }
  }
}
