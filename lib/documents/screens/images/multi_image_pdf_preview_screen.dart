/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/images/ens_images_viewer.dart';
import 'package:fr_cnamts_ens/documents/screens/images/viewmodels/multi_images_pdf_preview_screen_view_model.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class MultiImagesPdfPreviewScreen extends StatelessWidget {
  static const routeName = '/imagesRecap';

  final _imagesViewerController = EnsImagesViewerController();
  final _shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    final MultiImagesPdfPreviewArgument? argument =
        ModalRoute.of(context)!.settings.arguments as MultiImagesPdfPreviewArgument?;

    final docEditionViewController = DocumentEditionViewController(context, showOnlyImageAction: true);

    if (argument == null) {
      return const ErrorPage();
    } else {
      return StoreConnector<EnsState, MultiImagesPdfPreviewScreenViewModel>(
        converter: (store) => MultiImagesPdfPreviewScreenViewModel(store, argument.dossierId),
        distinct: true,
        onInitialBuild: (vm) {
          _tagInitialPage(vm);
        },
        onWillChange: (_, vm) {
          if (vm.finalFileContent != null) {
            vm.continueMultiPageState();
            _continueToEditionForm(context, argument, vm, argument.forcedCategory, vm.finalFileContent!);
          }
        },
        onDidChange: (oldVM, vm) {
          if (_pageAdded(oldVM, vm)) {
            _imagesViewerController.goToLastPage();
          }
        },
        builder: (context, vm) => EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            final shouldPop = await NavigationUtils.onWillPop(
              context,
              'Quitter la page ?',
              'En quittant cette page, toutes vos modifications seront perdues.',
              'Quitter',
              positiveButtonHandler: () {
                vm.cancelDocumentCreation();
              },
            );
            if (shouldPop) {
              navigator.pop();
            }
          },
          child: Scaffold(
            appBar: const EnsAppBarSubLevel(
              title: 'Ajouter un document',
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ScrollviewWithScrollbar(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          runAlignment: WrapAlignment.spaceBetween,
                          children: [
                            ValueListenableBuilder<int>(
                              valueListenable: _imagesViewerController.index,
                              builder: (_, index, __) {
                                return _PageCounter(currentPage: index + 1, totalPage: vm.pages.length);
                              },
                            ),
                            _DeletePageButton(
                              enabled: vm.isSuccessOrError,
                              onTap: () async {
                                if (vm.pages.length == 1) {
                                  final shouldPop = await NavigationUtils.onWillPop(
                                    context,
                                    'Supprimer cette page et quitter ?',
                                    'Cette page sera supprimée définitivement et toutes vos modifications seront perdues.',
                                    'Supprimer',
                                    positiveButtonHandler: () {
                                      _tagClickConfirmedDelete(vm);
                                      vm.cancelDocumentCreation();
                                    },
                                  );
                                  if (shouldPop) {
                                    if (!context.mounted) return;
                                    Navigator.of(context).pop();
                                  }
                                } else {
                                  _showDeleteConfirmationBottomSheet(
                                    context,
                                    _imagesViewerController.index,
                                    vm,
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 300,
                        child: Stack(
                          children: [
                            EnsImagesViewer(
                              items: vm.pages
                                  .map(
                                    (page) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: page.isBlackAndWhite
                                          ? Image.memory(page.blackAndWhiteImage!.decodedContent)
                                          : Image.memory(
                                              page.originalImage.decodedContent!,
                                              opacity: vm.isBlackAndWhiteLoading
                                                  ? const AlwaysStoppedAnimation(.5)
                                                  : const AlwaysStoppedAnimation(1),
                                            ),
                                    ),
                                  )
                                  .toList(),
                              controller: _imagesViewerController,
                            ),
                            if (vm.isBlackAndWhiteLoading)
                              const Center(
                                child: SizedBox(
                                  height: 22,
                                  width: 22,
                                  child: CircularProgressIndicator(color: EnsColors.primary, strokeWidth: 3),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      if (Platform.isIOS) const SizedBox(height: 24),
                      Column(
                        children: [
                          if (vm.multiPagesStatus == MultiPagesStatus.ERROR_FILE_TOO_BIG)
                            ShakeWidget(
                              key: _shakeKey,
                              child: EnsSnackBarContent(
                                text: 'Le document dépasse la taille autorisée. Supprimer une page pour continuer.',
                                contentType: EnsSnackbarContentType.ERROR,
                                showCloseButton: false,
                              ),
                            )
                          else
                            ValueListenableBuilder<int>(
                              valueListenable: _imagesViewerController.index,
                              builder: (_, value, __) => _EditionButtonBar(
                                status: vm.multiPagesStatus,
                                onCropTap: Platform.isAndroid
                                    ? () {
                                        vm.reCropDocument(value);
                                      }
                                    : null,
                                onBlackAndWhiteTap: Platform.isAndroid
                                    ? () {
                                        vm.passImageToBlackAndWhite(value);
                                      }
                                    : null,
                                onAddPageTap: () {
                                  _addPage(vm, docEditionViewController);
                                },
                                isBlackAndWhiteActive: vm.pages.getOrNull(value)?.isBlackAndWhiteSelected ?? false,
                              ),
                            ),
                        ],
                      ),
                      if (Platform.isAndroid) const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: EnsButton(
                          isDisabled: ![
                            MultiPagesStatus.SUCCESS,
                            MultiPagesStatus.ERROR_FILE_TOO_BIG,
                          ].contains(vm.multiPagesStatus),
                          isLoading: vm.multiPagesStatus == MultiPagesStatus.GENERATING_OUTPUT,
                          label: 'Continuer',
                          onTap: () {
                            if (vm.multiPagesStatus == MultiPagesStatus.ERROR_FILE_TOO_BIG) {
                              _shakeKey.currentState?.shake();
                            } else {
                              vm.validateMultiPagesDoc();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }

  void _addPage(AnalyticsViewModel vm, DocumentEditionViewController docEditionViewController) {
    _tagClickAddPage(vm);
    docEditionViewController.openAddDocumentActions();
  }

  bool _pageAdded(MultiImagesPdfPreviewScreenViewModel? oldVM, MultiImagesPdfPreviewScreenViewModel vm) =>
      (oldVM?.pages.length ?? 0) < vm.pages.length;

  void _continueToEditionForm(
    BuildContext context,
    MultiImagesPdfPreviewArgument? argument,
    MultiImagesPdfPreviewScreenViewModel vm,
    EnsDocumentCategorie? forcedCategory,
    EnsFileContent file,
  ) {
    Navigator.pushNamed(
      context,
      CreateDocumentFromFileScreen.routeName,
      arguments: CreateDocumentFromFileArgument(
        forcedCategory: forcedCategory,
        ensFileContent: file,
        dossierId: vm.dossierId,
        isDocumentCreatedToBeLinked: argument?.isDocumentCreatedToBeLinked ?? false,
        sourceRouteName: argument?.sourceRouteName,
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    ValueNotifier<int> indexController,
    MultiImagesPdfPreviewScreenViewModel vm,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cette page ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Cette page sera supprimée définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            _tagClickConfirmedDelete(vm);
            vm.deletePage(indexController.value);
          },
        );
      },
    );
  }

  void _tagInitialPage(AnalyticsViewModel vm) {
    vm.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'récap_multi_photos',
        level1: 'documents',
        level2: 'documents_ajout',
      ),
    );
  }

  void _tagClickAddPage(AnalyticsViewModel vm) {
    vm.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_ajouter_une_page',
        level1: 'documents',
        level2: 'documents_ajout',
      ),
    );
  }

  void _tagClickConfirmedDelete(AnalyticsViewModel vm) {
    vm.tagAction(
      const EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_supprimer_une_page_confirmation',
      ),
    );
  }
}

class _PageCounter extends StatelessWidget {
  final int currentPage;
  final int totalPage;

  const _PageCounter({required this.currentPage, required this.totalPage});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      excludeSemantics: true,
      label: 'page $currentPage sur $totalPage',
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: EnsColors.body,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text('$currentPage sur $totalPage', style: EnsTextStyle.text14_w600_normal_light),
        ),
      ),
    );
  }
}

class _DeletePageButton extends StatelessWidget {
  final bool enabled;
  final void Function() onTap;

  const _DeletePageButton({required this.enabled, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      semanticLabel: 'Supprimer cette page',
      onTap: enabled ? onTap : null,
      borderRadius: BorderRadius.circular(4),
      highlightColor: EnsColors.inkHighlight,
      splashColor: EnsColors.inkSplash,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 36),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              EnsSvg(
                EnsImages.ic_trash,
                color: enabled ? EnsColors.error : EnsColors.disabled500,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'Supprimer',
                style: enabled ? EnsTextStyle.text16_w700_normal_error : EnsTextStyle.text16_w700_disabled500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EditionButtonBar extends StatelessWidget {
  final MultiPagesStatus status;
  final void Function()? onCropTap;
  final void Function()? onBlackAndWhiteTap;
  final void Function() onAddPageTap;
  final bool isBlackAndWhiteActive;

  const _EditionButtonBar({
    required this.status,
    this.onCropTap,
    this.onBlackAndWhiteTap,
    required this.onAddPageTap,
    this.isBlackAndWhiteActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Platform.isAndroid
          ? _AndroidEditionButtonBar(
              onCropTap: onCropTap!,
              onBlackAndWhiteTap: onBlackAndWhiteTap!,
              onAddPageTap: onAddPageTap,
              isBlackAndWhiteActive: isBlackAndWhiteActive,
            )
          : _IOSEditionButtonBar(status: status, onAddPageTap: onAddPageTap),
    );
  }
}

class _IOSEditionButtonBar extends StatelessWidget {
  final MultiPagesStatus status;
  final void Function() onAddPageTap;

  const _IOSEditionButtonBar({
    required this.status,
    required this.onAddPageTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: EnsButtonSecondary(
        backgroundColor: EnsColors.neutral100,
        isDisabled: status != MultiPagesStatus.SUCCESS,
        loading: status == MultiPagesStatus.LOADING,
        label: 'Ajouter une page',
        onTap: onAddPageTap,
      ),
    );
  }
}

class _AndroidEditionButtonBar extends StatelessWidget {
  final void Function() onCropTap;
  final void Function() onBlackAndWhiteTap;
  final void Function() onAddPageTap;
  final bool isBlackAndWhiteActive;

  const _AndroidEditionButtonBar({
    required this.onCropTap,
    required this.onBlackAndWhiteTap,
    required this.onAddPageTap,
    required this.isBlackAndWhiteActive,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceBetween,
      children: [
        _EditionActionButton(
          title: 'Recadrer',
          accessibilityLabel: "Recadrer l'image",
          iconAsset: EnsImages.ic_crop,
          isActive: false,
          onTap: onCropTap,
        ),
        _EditionActionButton(
          title: 'Noir et blanc',
          accessibilityLabel: 'Convertir en noir et blanc',
          iconAsset: EnsImages.ic_pie_chart_50,
          isActive: isBlackAndWhiteActive,
          onTap: onBlackAndWhiteTap,
        ),
        _EditionActionButton(
          title: 'Ajouter',
          accessibilityLabel: 'Ajouter une page',
          iconAsset: EnsImages.ic_file_new,
          isActive: false,
          onTap: onAddPageTap,
        ),
      ],
    );
  }
}

class _EditionActionButton extends StatelessWidget {
  final String title;
  final String accessibilityLabel;
  final String iconAsset;
  final bool isActive;
  final void Function() onTap;

  const _EditionActionButton({
    required this.title,
    required this.accessibilityLabel,
    required this.iconAsset,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      semanticLabel: accessibilityLabel,
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      highlightColor: EnsColors.inkHighlight,
      splashColor: EnsColors.inkSplash,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? EnsColors.primary : null,
                border: Border.all(color: EnsColors.primary, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: EnsSvg(
                  iconAsset,
                  width: 24,
                  height: 24,
                  color: isActive ? EnsColors.light : EnsColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: EnsTextStyle.text12_w700_normal_primary,
            ),
          ],
        ),
      ),
    );
  }
}

class MultiImagesPdfPreviewArgument {
  final EnsDocumentCategorie? forcedCategory;
  final String? dossierId;
  final bool isDocumentCreatedToBeLinked;
  final String? sourceRouteName;

  MultiImagesPdfPreviewArgument({
    this.forcedCategory,
    this.dossierId,
    this.isDocumentCreatedToBeLinked = false,
    this.sourceRouteName,
  });
}
