/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_filter_dialog.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_sorting_dialog.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_epingler_button.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_sorting_button.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class DocumentDisplayOptionActionBar extends StatelessWidget {
  final List<EnsDocumentCategorie> preSelectedCategories;
  final String? dossierToFilterId;
  final bool shouldAnimateNewResultPage;
  final bool selectionMode;
  final ChooseEnsDocumentScreenArgument? selectedDocuments;
  final bool shouldReopenFilterDialogOnBack;
  final bool shouldDisplayFilterButton;
  final bool shouldDisplayEpinglerButton;
  final String? epinglerDocumentsCount;

  const DocumentDisplayOptionActionBar({
    super.key,
    this.preSelectedCategories = const [],
    this.dossierToFilterId,
    this.shouldAnimateNewResultPage = false,
    this.selectionMode = false,
    this.selectedDocuments,
    this.shouldReopenFilterDialogOnBack = false,
    this.shouldDisplayFilterButton = true,
    this.shouldDisplayEpinglerButton = false,
    this.epinglerDocumentsCount,
  });

  @override
  Widget build(BuildContext context) {
    if (epinglerDocumentsCount != null) {
      return _EpinglerDocumentsNumberWithSorting(epinglerDocumentsCount!);
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (shouldDisplayEpinglerButton) const EnsEpinglerButton(),
            if (shouldDisplayFilterButton) ...[
              EnsFilterButton(
                padding: const EdgeInsets.symmetric(vertical: 8),
                numberActiveFilters: preSelectedCategories.length,
                accessibilityButtonText: 'Filtrer les documents',
                onTap: () {
                  context.tagAction(TagsDocuments.tag_167_button_filtrer_par);
                },
                filterDialog: DocumentFilterDialog(
                  preSelectedCategories: preSelectedCategories,
                  shouldAnimateNewResultPage: shouldAnimateNewResultPage,
                  dossierToFilterId: dossierToFilterId,
                  selectionMode: selectionMode,
                  selectedDocuments: selectedDocuments,
                  isPersonalizedFilters: true,
                ),
              ),
              const _SortingButton(),
            ],
          ],
        ),
      );
    }
  }
}

class _EpinglerDocumentsNumberWithSorting extends StatelessWidget {
  final String epinglerDocumentsNumber;

  const _EpinglerDocumentsNumberWithSorting(this.epinglerDocumentsNumber);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(epinglerDocumentsNumber, style: EnsTextStyle.text14_w400_normal_body),
          ),
          const _SortingButton(),
        ],
      ),
    );
  }
}

class _SortingButton extends StatelessWidget {
  const _SortingButton();

  @override
  Widget build(BuildContext context) {
    return EnsSortingButton(
      accessibilityButtonText: 'Trier les documents',
      onTap: () => context.tagAction(TagsDocuments.tag_655_button_trier_par),
      sortingDialog: DocumentSortingDialog(),
    );
  }
}
