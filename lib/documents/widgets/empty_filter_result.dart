/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_filter_dialog.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EmptyFilterResult extends StatelessWidget {
  final List<EnsDocumentCategorie> currentActiveFilters;
  final String? dossierId;
  final bool selectionMode;
  final ChooseEnsDocumentScreenArgument? selectedDocuments;
  final FilterMode filterMode;

  const EmptyFilterResult({
    required this.currentActiveFilters,
    required this.dossierId,
    required this.selectionMode,
    this.selectedDocuments,
    required this.filterMode,
  });

  @override
  Widget build(BuildContext context) {
    switch (filterMode) {
      case FilterMode.BY_CATEGORIE:
        return _EmptyCategorieFilter(
          currentActiveFilters: currentActiveFilters,
          dossierId: dossierId,
          selectionMode: selectionMode,
          selectedDocuments: selectedDocuments,
        );
      case FilterMode.BY_EPINGLE:
        return _EmptyEpingleFilter();
    }
  }
}

class _EmptyCategorieFilter extends StatelessWidget {
  final List<EnsDocumentCategorie> currentActiveFilters;
  final String? dossierId;
  final bool selectionMode;
  final ChooseEnsDocumentScreenArgument? selectedDocuments;

  const _EmptyCategorieFilter({
    required this.currentActiveFilters,
    required this.dossierId,
    required this.selectionMode,
    this.selectedDocuments,
  });

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
          const Text(
            'Aucun document trouvé',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 44),
          EnsButton(
            label: 'Modifier ma recherche',
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierDismissible: false,
                transitionDuration: const Duration(milliseconds: 350),
                transitionBuilder: (_, anim1, __, child) {
                  return SlideTransition(
                    position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim1),
                    child: child,
                  );
                },
                pageBuilder: (context, _, __) => DocumentFilterDialog(
                  preSelectedCategories: currentActiveFilters,
                  dossierToFilterId: dossierId,
                  selectionMode: selectionMode,
                  selectedDocuments: selectedDocuments,
                  isPersonalizedFilters: true,
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          EnsButtonSecondary(
            label: 'Voir tous mes documents de santé',
            onTap: () {
              selectionMode
                  ? Navigator.popUntil(context, (route) => route.settings.name?.contains('/filterResult') == false)
                  : Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}

class _EmptyEpingleFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      description: 'Aucun document épinglé trouvé',
      customImagePath: EnsImages.information,
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Aller dans mes documents',
        primaryButtonHandler: () {
          BottomNavigationTabsScreen.navigateToTab(BottomTabs.DOCUMENTS);
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
    );
  }
}
