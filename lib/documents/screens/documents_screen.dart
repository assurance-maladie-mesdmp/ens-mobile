/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/avis_arret_de_travail/screens/creation_avis_arret_de_travail_dossier_bottom_sheet.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/document_deletion_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/documents_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/move_document_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/move_document_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/dossier_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/multiselect_app_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/multiselect_button.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/documents_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:redux/redux.dart';

class DocumentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final docEditionViewController = DocumentEditionViewController(context, showAddFolder: true);
    final keyNouvelItem = GlobalKey();

    return StoreConnector<EnsState, DocumentsScreenViewModel>(
      converter: (store) => DocumentsScreenViewModel.from(store),
      distinct: true,
      onInit: (Store<EnsState> store) {
        store.dispatch(FetchDocumentsAction());
        store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: []));
        store.dispatch(FetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction());
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsDocuments.tag_511_documents_accueil);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_DOCUMENTS);
      },
      onDidChange: (oldVm, vm) {
        _tagEmptyDocumentsPage(context, vm);
        if (vm.hasNouvelItemToHighlight) {
          _scrollToNouvelItem(keyNouvelItem);
        }
      },
      onWillChange: (oldVm, vm) {
        _shouldDisplayCreateAvisArretDeTravailDossierBottomSheet(context, oldVm: oldVm, vm: vm);
        if (oldVm?.displayModel != vm.displayModel) {
          if (vm.displayModel is DocumentsScreenDisplayModelLoading) {
            vm.refreshDocuments();
          }
        }
      },
      builder: (BuildContext context, DocumentsScreenViewModel vm) {
        return Scaffold(
          body: _Content(
            docEditionViewController: docEditionViewController,
            vm: vm,
            keyNouvelItem: keyNouvelItem,
          ),
          floatingActionButton: Visibility(
            visible: vm.shouldDisplayAddDocumentFab,
            child: Padding(
              padding: EdgeInsets.only(bottom: !EnsModuleContainer.currentInjector.isGuestMode() ? 72 : 0),
              child: EnsFloatingActionAddButton(
                onPressed: () {
                  context.tagAction(TagsDocuments.tag_505_popin_type_dajout);
                  context.tagAction(TagsDocuments.tag_163_button_ajouter_un_document);
                  GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
                    context: context,
                    shouldUseCallbackOnGuestMode: true,
                    onAuthenticatedMode: () => docEditionViewController.openAddDocumentActions(),
                  );
                },
                tooltip: 'Ajouter un nouveau document',
              ),
            ),
          ),
        );
      },
    );
  }

  void _tagEmptyDocumentsPage(BuildContext context, DocumentsScreenViewModel vm) {
    if (vm.displayModel is DocumentsScreenDisplayModelSuccess) {
      final displayModel = vm.displayModel as DocumentsScreenDisplayModelSuccess;
      if (!displayModel.isNotEmpty) {
        context.tagAction(TagsDocuments.tag_162_documents_accueil_empty);
      }
    }
  }

  void _shouldDisplayCreateAvisArretDeTravailDossierBottomSheet(
    BuildContext context, {
    required DocumentsScreenViewModel? oldVm,
    required DocumentsScreenViewModel vm,
  }) {
    if (oldVm?.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet != true &&
        vm.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet) {
      context.tagAction(TagsDocuments.tag_2479_popin_rassembler_aat_dossier);
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        builder: (BuildContext context) {
          return const CreateAvisArretDeTravailDossierBottomSheet();
        },
      );
    }
  }
}

class _DossierTargetItem extends StatefulWidget {
  final ViewItemDossier dossierItem;
  final void Function() toggleMultiselectMode;

  const _DossierTargetItem({required this.dossierItem, required this.toggleMultiselectMode});

  @override
  State<_DossierTargetItem> createState() => _DossierTargetItemState();
}

class _DossierTargetItemState extends State<_DossierTargetItem> {
  bool _isHoveredByDraggableDocument = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MoveDocumentViewModel>(
      converter: (store) => MoveDocumentViewModel.from(store: store, currentFolderId: 'Aucun dossier'),
      distinct: true,
      builder: (_, vm) => DragTarget(
        onAcceptWithDetails: (_) {
          setState(() => _isHoveredByDraggableDocument = false);
          vm.moveSelectedDocuments(widget.dossierItem.id);
          widget.toggleMultiselectMode();
        },
        onMove: (_) => setState(() {
          _isHoveredByDraggableDocument = true;
        }),
        onLeave: (_) => setState(() {
          _isHoveredByDraggableDocument = false;
        }),
        builder: (_, __, ___) => DossierItem(
          dossierItem: widget.dossierItem,
          backgroundColor: _isHoveredByDraggableDocument ? EnsColors.neutral200 : EnsColors.light,
        ),
      ),
    );
  }
}

class _ScreenHeader extends StatelessWidget {
  final bool isProfilPrincipal;

  const _ScreenHeader({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, DeviceUtils.isSmallDevice(context) ? 8 : 24, 24, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Documents de santé',
              style: EnsTextStyle.text26_w400_normal_title,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Je conserve mes documents, les classe et les partage avec les professionnels de santé ${isProfilPrincipal ? 'que j\'ai autorisés' : 'autorisés'}.'
                  .resolveWith(isProfilPrincipal: isProfilPrincipal),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          EnsLinkText(
            label: 'Qui peut consulter ces documents ?',
            onTap: () {
              context.tagAction(TagsDocuments.tag_166_link_qui_a_consulte_mes_documents);
              Navigator.pushNamed(context, ConsentementsPsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _LoadingScreen extends StatelessWidget {
  final bool isProfilPrincipal;

  const _LoadingScreen({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          _ScreenHeader(
            isProfilPrincipal: isProfilPrincipal,
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListViewWithScrollbar.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (_, __) => const EnsDivider(),
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) => DocumentItemSkeleton(),
            ),
          ),
        ],
      );
}

class _UpdatingScreen extends StatelessWidget {
  const _UpdatingScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const Spacer(),
        Lottie.asset(
          'assets/anims/file_download.json',
          height: 240,
          width: 240,
          fit: BoxFit.contain,
        ),
        const Text(
          'Déplacement en cours\u2026',
          style: EnsTextStyle.text14_w700_normal_primary,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

class _DocumentsEmptyList extends StatelessWidget {
  final DocumentEditionViewController docEditionViewController;
  final bool isProfilPrincipal;

  const _DocumentsEmptyList({required this.docEditionViewController, required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.ajouter_un_dossier,
      title: 'J\'ajoute mes premiers documents'.resolveWith(isProfilPrincipal: isProfilPrincipal),
      description:
          'Pour les conserver et les partager avec les professionnels de santé ${isProfilPrincipal ? 'que j\'ai autorisés' : 'autorisés'} (résultats de prises de sang, ordonnances, comptes rendus...).',
      buttonList: EnsEmptyButtonList.withPrimaryAndSecondaryButton(
        primaryButtonLabel: 'Ajouter un document',
        primaryButtonHandler: docEditionViewController.openAddDocumentActions,
        secondaryButtonLabel: 'Créer un dossier',
        secondaryButtonHandler: docEditionViewController.createFolder,
      ),
    );
  }
}

class _DossiersHeader extends StatelessWidget {
  final ViewItemDossiersHeader documentsViewItem;

  const _DossiersHeader(this.documentsViewItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
      child: Text(
        Intl.plural(
          documentsViewItem.dossiersCount,
          one: '1 dossier',
          other: '${documentsViewItem.dossiersCount} dossiers',
        ),
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}

class _DocumentsHeader extends StatelessWidget {
  final ViewItemDocumentsHeader documentsViewItem;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;
  final bool shouldDisplayMultiSelectButton;

  const _DocumentsHeader({
    required this.documentsViewItem,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
    required this.shouldDisplayMultiSelectButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          Text(
            Intl.plural(
              documentsViewItem.documentsCount,
              one: '1 document',
              other: '${documentsViewItem.documentsCount} documents',
            ),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          if (shouldDisplayMultiSelectButton)
            MultiselectButton(
              toggleMultiselectMode: toggleMultiselectMode,
              multiselectMode: multiselectMode,
            ),
        ],
      ),
    );
  }
}

class _DocumentItem extends StatelessWidget {
  final DocumentsScreenViewModel vm;
  final ViewItemDocument documentsViewItem;
  final bool multiselectMode;
  final bool currentlyDragging;
  final void Function() toggleMultiselectMode;
  final void Function() toggleDraggingStatus;
  final GlobalKey? keyNouveauDoc;

  const _DocumentItem({
    required this.vm,
    required this.documentsViewItem,
    required this.multiselectMode,
    required this.currentlyDragging,
    required this.toggleMultiselectMode,
    required this.toggleDraggingStatus,
    this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    final bool shouldDisableDraggableBehaviour =
        multiselectMode && !vm.listOfSelectedDocumentsIds.contains(documentsViewItem.document.id);

    return LongPressDraggable(
      data: documentsViewItem.document.id,
      onDragStarted: shouldDisableDraggableBehaviour
          ? null
          : () {
              if (!multiselectMode) {
                toggleMultiselectMode();
                vm.addDocToSelectionList(documentsViewItem.document.id);
              }
              toggleDraggingStatus();
            },
      onDragEnd: shouldDisableDraggableBehaviour ? null : (_) => toggleDraggingStatus(),
      dragAnchorStrategy: (_, __, ___) => const Offset(100, 50),
      feedback: shouldDisableDraggableBehaviour
          ? const SizedBox()
          : _DraggableItemFeedback(
              docId: documentsViewItem.document.id,
              numberOfSelectedDocs: vm.listOfSelectedDocumentsIds.length,
            ),
      child: multiselectMode
          ? Opacity(
              opacity:
                  currentlyDragging && vm.listOfSelectedDocumentsIds.contains(documentsViewItem.document.id) ? 0.5 : 1,
              child: DocumentSelectionItem(idDocument: documentsViewItem.document.id),
            )
          : DocumentsSlidable(
              onPinPressed: () {
                DocumentActionsHelper.setDocumentPinStatus(
                  context,
                  documentsViewItem.document.id,
                  !documentsViewItem.document.isEpingle,
                );
                final tag = documentsViewItem.document.isEpingle
                    ? TagsDocuments.tag_2466_button_swipe_documents_retirer_epingle
                    : TagsDocuments.tag_2463_button_swipe_documents_epingler;
                context.tagAction(tag);
              },
              onDeletePressed: () {
                if (documentsViewItem.document.deletable) {
                  GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                    context: context,
                    onAuthenticatedMode: () => _deleteDocument(context),
                  );
                } else {
                  DocumentsHelper.displayCantDeleteDocumentBottomSheet(context);
                }
              },
              iconPin: documentsViewItem.document.isEpingle ? EnsImages.ic_unpin : EnsImages.ic_pin,
              labelPin: documentsViewItem.document.isEpingle ? 'Retirer \nl\'épingle' : 'Épingler',
              child: DocumentItem(
                viewItemDocument: documentsViewItem,
                onPin: () => DocumentActionsHelper.setDocumentPinStatus(
                  context,
                  documentsViewItem.document.id,
                  !documentsViewItem.document.isEpingle,
                ),
                onDownload: () => DocumentActionsHelper.downloadDocument(
                  context,
                  docToDisplay: documentsViewItem.document,
                ),
                onDelete: () => _deleteDocument(context),
                onMove: () => MoveDocumentViewController.moveDocuments(
                  context,
                  docId: documentsViewItem.document.id,
                  currentFolderId: 'Aucun dossier',
                ),
                keyNouveauDoc: keyNouveauDoc,
              ),
            ),
    );
  }

  void _deleteDocument(BuildContext context) {
    return DocumentDeletionViewController.deleteDocument(
      context,
      documentsViewItem.document,
    );
  }
}

class _DraggableItemFeedback extends StatelessWidget {
  final String docId;
  final int numberOfSelectedDocs;

  const _DraggableItemFeedback({required this.docId, required this.numberOfSelectedDocs});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Transform.scale(
        scale: 0.5,
        alignment: Alignment.topLeft,
        child: Opacity(
          opacity: 0.95,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 16),
                child: DocumentSelectionItem(idDocument: docId),
              ),
              if (numberOfSelectedDocs > 1)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(gradient: EnsColors.gradient01, borderRadius: BorderRadius.circular(400)),
                  child: Text(
                    numberOfSelectedDocs.toString(),
                    style: EnsTextStyle.text20_w700_normal_light.copyWith(decoration: TextDecoration.none),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DocumentsList extends StatefulWidget {
  final DocumentsScreenDisplayModelSuccess displayModel;
  final DocumentsScreenViewModel vm;
  final GlobalKey keyNouvelItem;

  const _DocumentsList({required this.displayModel, required this.vm, required this.keyNouvelItem});

  @override
  State<_DocumentsList> createState() => _DocumentsListState();
}

class _DocumentsListState extends State<_DocumentsList> with TickerProviderStateMixin {
  static const MOVE_DISTANCE = 15;
  final GlobalKey _scrollViewKey = GlobalKey();
  bool _multiselectMode = false;
  bool _currentlyDragging = false;
  ScrollController _scrollController = ScrollController();
  late Ticker _scrollUpTicker;
  late Ticker _scrollDownTicker;

  @override
  void initState() {
    _scrollUpTicker = createTicker((_) {
      if (_currentlyDragging) {
        _scrollController
            .jumpTo(max(_scrollController.offset - MOVE_DISTANCE, _scrollController.position.minScrollExtent));
      }
    });
    _scrollDownTicker = createTicker((_) {
      if (_currentlyDragging) {
        _scrollController
            .jumpTo(min(_scrollController.offset + MOVE_DISTANCE, _scrollController.position.maxScrollExtent));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollUpTicker.dispose();
    _scrollDownTicker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _DocumentScreenListener(
      enabled: _currentlyDragging,
      scrollUpTicker: _scrollUpTicker,
      scrollDownTicker: _scrollDownTicker,
      scrollViewKey: _scrollViewKey,
      child: Scaffold(
        appBar: _multiselectMode
            ? MultiselectAppBar(
                currentFolderId: 'Aucun dossier',
                toggleMultiselectMode: () {
                  widget.vm.toggleMainAppBarVisibility();
                  setState(() => _multiselectMode = !_multiselectMode);
                },
                areMovable: widget.vm.shouldDisplayMultiSelectButton,
              )
            : null,
        body: EnsPullToRefresh(
          enabled: !_multiselectMode,
          paddingTop: MediaQuery.of(context).padding.top,
          onRefresh: () async {
            widget.vm.refreshDocuments();
          },
          child: SlidableAutoCloseBehavior(
            child: ScrollviewWithScrollbar(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              scrollViewKey: _scrollViewKey,
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              child: _DocumentViewList(
                displayModel: widget.displayModel,
                vm: widget.vm,
                toggleMultiselectMode: () {
                  widget.vm.toggleMainAppBarVisibility();
                  widget.vm.resetSelectedDocumentsList();
                  setState(() => _multiselectMode = !_multiselectMode);
                },
                toggleDraggingStatus: () {
                  if (_currentlyDragging) {
                    _scrollUpTicker.stop();
                    _scrollController.dispose();
                    _scrollController = ScrollController();
                  }
                  setState(() => _currentlyDragging = !_currentlyDragging);
                },
                multiselectMode: _multiselectMode,
                currentlyDragging: _currentlyDragging,
                keyNouvelItem: widget.keyNouvelItem,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DocumentViewList extends StatelessWidget {
  final DocumentsScreenDisplayModelSuccess displayModel;
  final DocumentsScreenViewModel vm;
  final bool multiselectMode;
  final bool currentlyDragging;
  final void Function() toggleMultiselectMode;
  final void Function() toggleDraggingStatus;
  final GlobalKey keyNouvelItem;

  const _DocumentViewList({
    required this.displayModel,
    required this.vm,
    required this.toggleMultiselectMode,
    required this.toggleDraggingStatus,
    required this.multiselectMode,
    required this.currentlyDragging,
    required this.keyNouvelItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...displayModel.documentsViewItems.mapIndexed((index, documentsViewItem) {
          final shouldAddPaddingAtTheBottom =
              !EnsModuleContainer.currentInjector.isGuestMode() && index == displayModel.documentsViewItems.length - 1;
          return Padding(
            padding: EdgeInsets.only(bottom: shouldAddPaddingAtTheBottom ? 96 : 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _DocumentViewItem(
                  vm: vm,
                  documentsViewItem: documentsViewItem,
                  toggleMultiselectMode: toggleMultiselectMode,
                  toggleDraggingStatus: toggleDraggingStatus,
                  multiselectMode: multiselectMode,
                  currentlyDragging: currentlyDragging,
                  keyNouvelItem: documentsViewItem.isNouvelItemToHighlight ? keyNouvelItem : null,
                ),
                Divider(
                  height: 2,
                  color: documentsViewItem.runtimeType == ViewItemDossier ||
                          documentsViewItem.runtimeType == ViewItemDocument
                      ? EnsColors.neutral200
                      : Colors.transparent,
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}

class _DocumentViewItem extends StatelessWidget {
  final DocumentsScreenViewModel vm;
  final ViewItem documentsViewItem;
  final void Function() toggleMultiselectMode;
  final void Function() toggleDraggingStatus;
  final bool multiselectMode;
  final bool currentlyDragging;
  final GlobalKey? keyNouvelItem;

  const _DocumentViewItem({
    required this.vm,
    required this.documentsViewItem,
    required this.toggleMultiselectMode,
    required this.toggleDraggingStatus,
    required this.multiselectMode,
    required this.currentlyDragging,
    this.keyNouvelItem,
  });

  @override
  Widget build(BuildContext context) {
    switch (documentsViewItem) {
      case final ViewItemFilter viewItemFilter:
        if (viewItemFilter.shouldDisplayFilter || viewItemFilter.shouldDisplayEpingler) {
          return DocumentDisplayOptionActionBar(
            shouldDisplayFilterButton: viewItemFilter.shouldDisplayFilter,
            shouldDisplayEpinglerButton: viewItemFilter.shouldDisplayEpingler,
          );
        } else {
          return const SizedBox(height: 12);
        }
      case ViewItemInfoHeader _:
        return _ScreenHeader(
          isProfilPrincipal: vm.isProfilPrincipal,
        );
      case final ViewItemDossiersHeader viewItemDossiersHeader:
        return _DossiersHeader(viewItemDossiersHeader);
      case final ViewItemDocumentsHeader viewItemDocumentsHeader:
        return _DocumentsHeader(
          documentsViewItem: viewItemDocumentsHeader,
          toggleMultiselectMode: toggleMultiselectMode,
          multiselectMode: multiselectMode,
          shouldDisplayMultiSelectButton: vm.shouldDisplayMultiSelectButton,
        );
      case final ViewItemDossier viewItemDossier:
        return currentlyDragging
            ? _DossierTargetItem(
                dossierItem: viewItemDossier,
                toggleMultiselectMode: toggleMultiselectMode,
              )
            : DeleteSlidable(
                child: DossierItem(
                  dossierItem: viewItemDossier,
                  onTap: multiselectMode ? toggleMultiselectMode : null,
                  keyNouveauDossier: keyNouvelItem,
                ),
                onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, viewItemDossier),
              );
      case final ViewItemDocument viewItemDocument:
        return _DocumentItem(
          vm: vm,
          documentsViewItem: viewItemDocument,
          multiselectMode: multiselectMode,
          toggleMultiselectMode: toggleMultiselectMode,
          currentlyDragging: currentlyDragging,
          toggleDraggingStatus: toggleDraggingStatus,
          keyNouveauDoc: keyNouvelItem,
        );
      default:
        return const SizedBox();
    }
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    DocumentsScreenViewModel vm,
    ViewItemDossier dossier,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) {
        return ConfirmationBottomSheet(
          title: 'Supprimer le dossier "${dossier.title.trim()}"',
          content: dossier.numberOfFiles == 0
              ? const SizedBox()
              : const ConfirmationBottomSheetDefaultTextContent(
                  'Les documents de ce dossier seront toujours disponibles dans mes documents de Mon espace santé.',
                ),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            vm.supprimerDossier(dossier.id);
          },
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final DocumentEditionViewController docEditionViewController;
  final DocumentsScreenViewModel vm;
  final GlobalKey keyNouvelItem;

  const _Content({required this.docEditionViewController, required this.vm, required this.keyNouvelItem});

  @override
  Widget build(BuildContext context) {
    final DocumentsScreenDisplayModel displayModel = vm.displayModel;
    switch (displayModel) {
      case DocumentsScreenDisplayModelSuccess _:
        if (displayModel.isNotEmpty) {
          return _DocumentsList(displayModel: displayModel, vm: vm, keyNouvelItem: keyNouvelItem);
        } else {
          return _DocumentsEmptyList(
            docEditionViewController: docEditionViewController,
            isProfilPrincipal: vm.isProfilPrincipal,
          );
        }
      case DocumentsScreenDisplayModelError _:
        return ErrorPage(reloadFunction: () => vm.refreshDocuments());
      case DocumentsScreenDisplayModelUpdating _:
        return const _UpdatingScreen();
      default:
        return _LoadingScreen(isProfilPrincipal: vm.isProfilPrincipal);
    }
  }
}

class _DocumentScreenListener extends StatelessWidget {
  final GlobalKey scrollViewKey;
  final Widget child;
  final bool enabled;
  final Ticker scrollUpTicker;
  final Ticker scrollDownTicker;

  const _DocumentScreenListener({
    required this.child,
    required this.scrollViewKey,
    required this.enabled,
    required this.scrollUpTicker,
    required this.scrollDownTicker,
  });

  @override
  Widget build(BuildContext context) {
    const DETECT_RANGE = 80;

    return Listener(
      onPointerMove: enabled
          ? (PointerMoveEvent event) {
              final render = scrollViewKey.currentContext?.findRenderObject() as RenderBox?;
              if (render != null) {
                final position = render.localToGlobal(Offset.zero);
                final topY = position.dy;
                final bottomY = topY + render.size.height;
                if (event.position.dy < topY + DETECT_RANGE) {
                  if (!scrollUpTicker.isActive) {
                    scrollUpTicker.start();
                  }
                } else if (event.position.dy > bottomY - DETECT_RANGE) {
                  if (!scrollDownTicker.isActive) {
                    scrollDownTicker.start();
                  }
                } else {
                  scrollUpTicker.stop();
                  scrollDownTicker.stop();
                }
              }
            }
          : null,
      child: child,
    );
  }
}

void _scrollToNouvelItem(GlobalKey globalKey) {
  final context = globalKey.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: 0.5,
    );
  }
}
