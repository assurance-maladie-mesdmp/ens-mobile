/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/move_document_view_controller.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/multiselect_app_bar_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:intl/intl.dart';

class MultiselectAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);
  final void Function() toggleMultiselectMode;
  final String? currentFolderId;
  final bool areMovable;

  const MultiselectAppBar({required this.toggleMultiselectMode, this.currentFolderId, this.areMovable = true});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MultiselectAppBarViewModel>(
      converter: (store) => MultiselectAppBarViewModel(store),
      distinct: true,
      builder: (_, vm) => EnsPopScope.shouldNotPop(
        onPopInvoked: (_) async {
          toggleMultiselectMode();
        },
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: ActionButton(
              icon: const EnsSvg(EnsImages.ic_close_big, height: 14, width: 14, color: Colors.white),
              tooltip: 'Fermer la multi-selection',
              onTap: () {
                _tagCloseMultiselectButtonClick(context);
                toggleMultiselectMode();
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 56),
            child: Center(child: Text(vm.appBarLabel, style: EnsTextStyle.text20_w400_light)),
          ),
          surfaceTintColor: Colors.white,
          flexibleSpace: Container(decoration: const BoxDecoration(gradient: EnsColors.gradient01)),
          bottom: _MultiselectAppBarBottom(
            areActionButtonsEnabled: vm.areActionButtonsEnabled,
            deletionStatus: vm.getMultiselectDeletionStatus(),
            undeletableDocumentsNames: vm.getUndeletableDocumentsNames(),
            toggleMultiselectMode: toggleMultiselectMode,
            deleteMultipleDocuments: vm.deleteMultipleDocuments,
            moveMultipleDocuments: vm.moveMultipleDocuments,
            currentFolderId: currentFolderId,
            getNumberOfSelectedDocuments: vm.getNumberOfSelectedDocuments,
            areMovable: areMovable,
          ),
        ),
      ),
    );
  }

  void _tagCloseMultiselectButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_fermer_multi-select',
        level1: 'documents',
      ),
    );
  }
}

class _MultiselectAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);
  final bool areActionButtonsEnabled;
  final MultiselectDeletionStatus deletionStatus;
  final List<String> undeletableDocumentsNames;
  final bool areMovable;
  final void Function() toggleMultiselectMode;
  final void Function() deleteMultipleDocuments;
  final void Function(String) moveMultipleDocuments;
  final String? currentFolderId;
  final int Function() getNumberOfSelectedDocuments;

  const _MultiselectAppBarBottom({
    required this.areActionButtonsEnabled,
    required this.deletionStatus,
    required this.undeletableDocumentsNames,
    required this.toggleMultiselectMode,
    required this.deleteMultipleDocuments,
    required this.moveMultipleDocuments,
    this.currentFolderId,
    required this.getNumberOfSelectedDocuments,
    required this.areMovable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (areMovable)
            _MultiselectAppBarActionButton(
              enabled: areActionButtonsEnabled,
              icon: EnsSvg(
                EnsImages.ic_folder_arrow,
                width: 24,
                color: areActionButtonsEnabled ? EnsColors.light : EnsColors.neutral400,
              ),
              label: 'Déplacer',
              onTap: () async {
                _tagMultiselectMoveButtonClick(context);
                await MoveDocumentViewController.moveDocuments(context, currentFolderId: currentFolderId);
                toggleMultiselectMode();
              },
            ),
          _MultiselectAppBarActionButton(
            enabled: areActionButtonsEnabled,
            icon: EnsSvg(
              EnsImages.ic_trash,
              height: 24,
              color: areActionButtonsEnabled ? EnsColors.light : EnsColors.neutral400,
            ),
            label: 'Supprimer',
            onTap: () {
              _tagMultiselectDeleteButtonClick(context);
              _displayDeleteBottomSheet(
                context,
                deletionStatus,
                undeletableDocumentsNames,
                toggleMultiselectMode,
                deleteMultipleDocuments,
                getNumberOfSelectedDocuments(),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _displayDeleteBottomSheet(
    BuildContext context,
    MultiselectDeletionStatus deletionStatus,
    List<String> undeletableDocumentsNames,
    void Function() toggleMultiselectMode,
    void Function() deleteMultipleDocuments,
    int numberOfSelectedDocuments,
  ) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) {
        switch (deletionStatus) {
          case MultiselectDeletionStatus.DELETABLE:
            return ConfirmationBottomSheet(
              title: Intl.plural(
                numberOfSelectedDocuments,
                one: 'Supprimer ce document ?',
                other: 'Supprimer ces documents ?',
              ),
              content: ConfirmationBottomSheetDefaultTextContent(
                Intl.plural(
                  numberOfSelectedDocuments,
                  one:
                      'Ce document sera supprimé définitivement de mes documents et de tout élément associé (hospitalisation ou acte chirurgical, etc).',
                  other:
                      'Ces documents seront supprimés définitivement de mes documents et de tout élément associé (hospitalisation ou acte chirurgical, etc).',
                ),
              ),
              positiveButtonLabel: 'Supprimer',
              positiveButtonHandler: () {
                _tagConfirmDeletionButtonClick(context);
                deleteMultipleDocuments();
              },
              negativeButtonHandler: () => _tagCancelDeletionButtonClick(context),
              areButtonsOnSameRow: !DeviceUtils.isSmallDevice(context),
            );
          case MultiselectDeletionStatus.SOME_UNDELETABLE:
            return ConfirmationBottomSheet(
              areButtonsOnSameRow: false,
              title: Intl.plural(
                undeletableDocumentsNames.length,
                one: '1 document ne peut pas être supprimé',
                other: '${undeletableDocumentsNames.length} documents ne peuvent pas être supprimés',
              ),
              content: _SomeUndeletableDocBottomSheetContent(
                undeletableDocumentsNames: undeletableDocumentsNames,
                numberOfSelectedDocuments: numberOfSelectedDocuments,
              ),
              positiveButtonLabel: Intl.plural(
                numberOfSelectedDocuments - undeletableDocumentsNames.length,
                one: 'Supprimer l\'autre document',
                other: 'Supprimer les autres documents',
              ),
              positiveButtonHandler: () {
                _tagConfirmDeletionButtonClick(context);
                deleteMultipleDocuments();
              },
              negativeButtonHandler: () => _tagCancelDeletionButtonClick(context),
            );
          case MultiselectDeletionStatus.ALL_UNDELETABLE:
            _tagDocsNotDeletableBottomSheet(context);
            return InformationBottomSheet(
              title: Intl.plural(
                numberOfSelectedDocuments,
                one: 'Ce document ne peut pas être supprimé',
                other: 'Ces documents ne peuvent pas être supprimés',
              ),
              description: Text(
                Intl.plural(
                  numberOfSelectedDocuments,
                  one:
                      'Vous ne pouvez pas supprimer ce document car il a été ajouté par un professionnel de santé ou Mon espace santé.',
                  other:
                      'Vous ne pouvez pas supprimer ces documents car ils ont été ajoutés par un professionnel de santé ou Mon espace santé.',
                ),
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
            );
          case MultiselectDeletionStatus.NUMBER_OF_DOCS_EXCEEDED:
            _tagDeletableDocsMaxLimitReachedBottomSheet(context);
            return const InformationBottomSheet(
              title: 'Ces documents ne peuvent pas être supprimés',
              description: Text(
                'Vous ne  pouvez pas supprimer plus de 10 documents à la fois. Veuillez modifier votre sélection.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
            );
        }
      },
    );
    if (deletionStatus != MultiselectDeletionStatus.NUMBER_OF_DOCS_EXCEEDED) {
      toggleMultiselectMode();
    }
  }

  void _tagMultiselectMoveButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_multi-select_deplacer',
        level1: 'documents',
      ),
    );
  }

  void _tagMultiselectDeleteButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_multi-select_supprimer',
        level1: 'documents',
      ),
    );
  }

  void _tagConfirmDeletionButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_supprimer_document_valider',
        level1: 'documents',
      ),
    );
  }

  void _tagCancelDeletionButtonClick(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_supprimer_document_annuler',
        level1: 'documents',
      ),
    );
  }

  void _tagDocsNotDeletableBottomSheet(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_supprimer_document-ps',
        level1: 'documents',
        level2: 'documents_suppression',
      ),
    );
  }

  void _tagDeletableDocsMaxLimitReachedBottomSheet(BuildContext context) {
    context.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_supprimer_document-max10-ps',
        level1: 'documents',
        level2: 'documents_suppression',
      ),
    );
  }
}

class _SomeUndeletableDocBottomSheetContent extends StatelessWidget {
  final List<String> undeletableDocumentsNames;
  final int numberOfSelectedDocuments;

  const _SomeUndeletableDocBottomSheetContent({
    required this.undeletableDocumentsNames,
    required this.numberOfSelectedDocuments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Intl.plural(
            undeletableDocumentsNames.length,
            one:
                'Un document de votre sélection ne peut pas être supprimé car il a été ajouté par un professionnel de santé ou Mon espace santé.',
            other:
                'Certains documents de votre sélection ne peuvent pas être supprimés car ils ont été ajoutés par un professionnel de santé ou Mon espace santé.',
          ),
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            expandedAlignment: Alignment.centerLeft,
            tilePadding: const EdgeInsets.symmetric(horizontal: 16),
            childrenPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            title: Row(
              children: [
                const EnsSvg(EnsImages.ic_off_close, color: EnsColors.error, width: 16, height: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    Intl.plural(
                      undeletableDocumentsNames.length,
                      one: '1 document non supprimable',
                      other: '${undeletableDocumentsNames.length} documents non supprimables',
                    ),
                    style: EnsTextStyle.text14_w700_normal_title,
                  ),
                ),
              ],
            ),
            collapsedBackgroundColor: EnsColors.error.withAlpha(OpacityUtils.getAlpha(0.1)),
            iconColor: EnsColors.title,
            collapsedIconColor: EnsColors.title,
            backgroundColor: EnsColors.error.withAlpha(OpacityUtils.getAlpha(0.1)),
            children: undeletableDocumentsNames
                .map(
                  (name) => Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(name, style: EnsTextStyle.text14_w600_normal_title),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          Intl.plural(
            numberOfSelectedDocuments - undeletableDocumentsNames.length,
            one: 'L\'autre document de votre sélection peut être supprimé.',
            other: 'Les autres documents de votre sélection peuvent être supprimés.',
          ),
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _MultiselectAppBarActionButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final void Function() onTap;
  final bool enabled;

  const _MultiselectAppBarActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: enabled ? onTap : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 8),
            Text(label, style: enabled ? EnsTextStyle.text14_w700_normal_light : EnsTextStyle.text14_w700_neutral400),
          ],
        ),
      ),
    );
  }
}
