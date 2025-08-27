/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_deletion_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/documents_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/move_document_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/dossier_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/rename_dossier_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/documents_list_header.dart';
import 'package:fr_cnamts_ens/documents/widgets/multiselect_app_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/multiselect_button.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/documents_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:lottie/lottie.dart';

class DossierDetailScreenArgument {
  final String dossierId;

  DossierDetailScreenArgument({required this.dossierId});
}

class DossierDetailScreen extends StatefulWidget {
  static const routeName = '/documents/dossier';

  const DossierDetailScreen({super.key});

  @override
  State<DossierDetailScreen> createState() => _DossierDetailScreen();
}

class _DossierDetailScreen extends State<DossierDetailScreen> {
  static const _NAME_MAX_CHARACTERS = 50;
  final _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final fileHelper = EnsModuleContainer.currentInjector.getFileHelper();
  final _formKey = GlobalKey<FormState>();
  bool _multiselectMode = false;
  final _keyNouveauDoc = GlobalKey();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as DossierDetailScreenArgument;

    final documentEditionViewController = DocumentEditionViewController(context);
    return StoreConnector<EnsState, DossierDetailScreenViewModel>(
      converter: (store) => DossierDetailScreenViewModel.from(
        store,
        dossierId: arguments.dossierId,
      ),
      distinct: true,
      onInit: (store) => store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: [])),
      onInitialBuild: (vm) {
        context.tagAction(
          vm.items.isEmpty
              ? TagsDocuments.tag_499_consulter_un_dossier_empty
              : TagsDocuments.tag_510_consulter_un_dossier,
        );
      },
      onWillChange: (_, vm) {
        if (vm.status == DossierDetailDisplayStatus.ERROR) {
          Navigator.pop(context);
        }
      },
      onDidChange: (_, vm) {
        if (vm.hasNouveauDocumentToHighlight) {
          _scrollToNouveauDocument(_keyNouveauDoc);
        }
      },
      builder: (context, vm) {
        final appBar = _multiselectMode
            ? MultiselectAppBar(
                currentFolderId: vm.dossierId,
                toggleMultiselectMode: () {
                  setState(() => _multiselectMode = !_multiselectMode);
                  vm.resetSelectedDocumentsList();
                },
              )
            : EnsAppBarSubLevel(
                title: vm.dossierName ?? '',
                action: ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () => _showOptionsBottomSheet(context, vm),
                ),
              ) as PreferredSizeWidget;
        return Scaffold(
          appBar: appBar,
          body: _View(
            vm: vm,
            documentEditionViewController: documentEditionViewController,
            multiselectMode: _multiselectMode,
            toggleMultiselectMode: () {
              setState(() => _multiselectMode = !_multiselectMode);
              vm.resetSelectedDocumentsList();
            },
            keyNouveauDoc: _keyNouveauDoc,
          ),
          floatingActionButton: Visibility(
            visible: vm.shouldDisplayFloatingAddButton && !_multiselectMode,
            child: EnsFloatingActionAddButton(
              onPressed: () {
                GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
                  context: context,
                  shouldUseCallbackOnGuestMode: true,
                  onAuthenticatedMode: () => _openAddDocumentAction(documentEditionViewController, vm, context),
                );
              },
              tooltip: 'Ajouter un nouveau document',
            ),
          ),
        );
      },
    );
  }

  void _openAddDocumentAction(
    DocumentEditionViewController documentEditionViewController,
    DossierDetailScreenViewModel vm,
    BuildContext context,
  ) {
    documentEditionViewController.openAddDocumentActions(
      dossierId: vm.dossierId,
      showAddDocumentAlreadyInMonEspaceSanteToFolder: vm.shouldDisplayAddButtonFromMES,
      onAddDocumentAlreadyInMonEspaceSanteToFolder: () {
        _startSelectionFromDocumentAlreadyInMonEspaceSante(
          context: context,
          name: vm.dossierName,
          dossierId: vm.dossierId,
          moveDocuments: vm.moveDocuments,
          tagDisplayAddDocFromMonEspaceSante: () {
            context.tagAction(TagsDocuments.tag_popin_ajouter_document_mes);
          },
        );
      },
    );
  }

  void _showOptionsBottomSheet(BuildContext context, DossierDetailScreenViewModel vm) {
    context.tagAction(TagsDocuments.tag_503_popin_dossier_action);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        _renameFolderBottomSheetAction(context, vm.dossierId),
        _removeFolderBottomSheetAction(vm, context),
      ],
      context,
    );
  }

  BottomSheetAction _renameFolderBottomSheetAction(BuildContext context, String dossierId) {
    return BottomSheetAction(
      assetName: EnsImages.ic_edit,
      label: 'Renommer le dossier',
      execution: () {
        context.tagAction(TagsDocuments.tag_502_popin_renommer_dossier);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext builderContext) {
            return StoreConnector<EnsState, RenameDossierViewModel>(
              converter: (store) => RenameDossierViewModel.from(store, dossierId: dossierId),
              distinct: true,
              onInitialBuild: (vm) {
                _textController.text = vm.dossierName;
                _textController.selection = TextSelection.collapsed(offset: _textController.text.length);
                vm.init();
              },
              onWillChange: (oldVm, newVm) {
                if (oldVm?.renameDossierStatus.isNotSuccess == true && newVm.renameDossierStatus.isSuccess) {
                  Navigator.pop(context);
                }
              },
              builder: (_, vm) => EnsForm(
                formKey: _formKey,
                scrollController: _scrollController,
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: EnsBottomSheet(
                  content: [
                    Text(
                      'Renommer le dossier "${vm.dossierName}"',
                      style: EnsTextStyle.text24_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    if (vm.renameDossierStatus.isGenericError) ...[
                      if (EnsModuleContainer.currentInjector.isGuestMode())
                        EnsSnackBarContent(
                          contentType: EnsSnackbarContentType.INFO,
                          text: GUEST_MODE_ERROR_MESSAGE,
                          showCloseButton: false,
                        )
                      else
                        EnsSnackBarContent(
                          contentType: EnsSnackbarContentType.ERROR,
                          text: GENERIC_ERROR_MESSAGE,
                          showCloseButton: false,
                        ),
                      const SizedBox(height: 24),
                    ],
                    CountedTextInput.withBorders(
                      label: 'Nom du dossier',
                      autofocus: true,
                      controller: _textController,
                      validatorCallback: (value) => requiredFolderNameTextFieldValidator(
                        value?.trim(),
                        _NAME_MAX_CHARACTERS,
                        vm.alreadyExistingDossierNames,
                      ),
                      onTextDidChange: (_) => vm.resetState(),
                      enabled: vm.renameDossierStatus.isNotLoading,
                      errorMsgToDisplay:
                          vm.renameDossierStatus.isDossierNameError ? USE_OTHER_DOSSIER_NAME_ERROR : null,
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        Expanded(
                          child: EnsButton(
                            label: 'Renommer le dossier',
                            isDisabled: vm.renameDossierStatus.isLoading,
                            isLoading: vm.renameDossierStatus.isLoading,
                            loadingText: 'Renommage du dossier...',
                            onTap: () {
                              _validateAndSend(vm);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _validateAndSend(RenameDossierViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.renameDossier(_textController.text.trim());
    });
  }

  BottomSheetAction _removeFolderBottomSheetAction(DossierDetailScreenViewModel vm, BuildContext context) =>
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer le dossier',
        execution: () {
          context.tagAction(TagsDocuments.tag_504_popin_supprimer_dossier);
          GuestModeHelper.showUnavailableSnackbarIfGuestMode(
            context: context,
            onAuthenticatedMode: () => showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext builderContext) {
                return ConfirmationBottomSheet(
                  title: 'Supprimer le dossier "${vm.dossierName?.trim()}"',
                  content: vm.status == DossierDetailDisplayStatus.EMPTY
                      ? const SizedBox()
                      : const ConfirmationBottomSheetDefaultTextContent(
                          'Les documents de ce dossier seront toujours disponibles dans mes documents de Mon espace santé.',
                        ),
                  positiveButtonLabel: 'Supprimer',
                  positiveButtonHandler: () {
                    vm.supprimerDossier();
                  },
                );
              },
            ),
          );
        },
      );
}

Future<void> _startSelectionFromDocumentAlreadyInMonEspaceSante({
  required BuildContext context,
  String? name,
  String? dossierId,
  required void Function() moveDocuments,
  required void Function() tagDisplayAddDocFromMonEspaceSante,
}) async {
  final result = await Navigator.pushNamed(
    context,
    ChooseEnsDocumentsScreen.routeName,
    arguments: ChooseEnsDocumentScreenArgument(
      displayTagFunc: tagDisplayAddDocFromMonEspaceSante,
      alreadySelectedDocsIds: [],
      headerInfoText: 'Sélectionner les documents à classer dans le dossier “$name”.',
      currentFolderId: dossierId,
    ),
  );
  if (result is List && result.isNotEmpty) {
    moveDocuments();
  }
}

class _QuickAction extends StatelessWidget {
  final String label;
  final String iconPath;
  final void Function() onTap;

  const _QuickAction({
    required this.label,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          EnsSvg(iconPath, height: 64, width: 64),
          const SizedBox(width: 16),
          Expanded(child: Text(label, style: EnsTextStyle.text16_w700_body)),
        ],
      ),
    );
  }
}

class _LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DocumentItemSkeleton(),
        DocumentItemSkeleton(),
        DocumentItemSkeleton(),
      ],
    );
  }
}

class _UpdatingScreen extends StatelessWidget {
  final String documentUpdatingInfoText;

  const _UpdatingScreen(this.documentUpdatingInfoText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        Lottie.asset('assets/anims/file_download.json', height: 240, width: 240, fit: BoxFit.contain),
        Text(
          documentUpdatingInfoText,
          style: EnsTextStyle.text14_w700_normal_primary,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  final DocumentEditionViewController documentEditionViewController;
  final DossierDetailScreenViewModel vm;

  const _EmptyState(this.documentEditionViewController, this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 56),
          const Text(
            'J\'ajoute des documents',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Pour les classer dans ce dossier.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          if (vm.shouldDisplayAddButtonFromMES)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _QuickAction(
                label: 'Choisir dans mes documents de Mon espace santé',
                iconPath: EnsImages.documents_de_sante,
                onTap: () {
                  context.tagAction(TagsDocuments.tag_button_mode_dajout_document_mes);
                  _startSelectionFromDocumentAlreadyInMonEspaceSante(
                    context: context,
                    name: vm.dossierName,
                    dossierId: vm.dossierId,
                    moveDocuments: vm.moveDocuments,
                    tagDisplayAddDocFromMonEspaceSante: () {
                      context.tagAction(TagsDocuments.tag_popin_ajouter_document_mes);
                    },
                  );
                },
              ),
            ),
          _QuickAction(
            label: 'Prendre une photo',
            iconPath: EnsImages.appareil_photo,
            onTap: () {
              documentEditionViewController.tagClick('button_type_dajout_camera');
              documentEditionViewController.scanDocument(context, dossierId: vm.dossierId);
            },
          ),
          const SizedBox(height: 16),
          _QuickAction(
            label: 'Choisir une photo',
            iconPath: EnsImages.image,
            onTap: () {
              documentEditionViewController.tagClick('button_type_dajout_album');
              documentEditionViewController.pickImages(dossierId: vm.dossierId);
            },
          ),
          const SizedBox(height: 16),
          _QuickAction(
            label: 'Choisir un fichier',
            iconPath: EnsImages.fichier,
            onTap: () {
              documentEditionViewController.tagClick('button_type_dajout_fichier');
              documentEditionViewController.pickFile(dossierId: vm.dossierId);
            },
          ),
        ],
      ),
    );
  }
}

class _List extends StatelessWidget {
  final DossierDetailScreenViewModel vm;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;
  final GlobalKey keyNouveauDoc;

  const _List({
    required this.vm,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
    required this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      enabled: !multiselectMode,
      onRefresh: () async {
        vm.refreshDocuments();
      },
      child: SlidableAutoCloseBehavior(
        child: ScrollviewWithScrollbar(
          padding: const EdgeInsets.only(top: 32, bottom: 76),
          child: Column(
            children: [
              ...vm.items.map((item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _DocumentViewItem(
                      vm: vm,
                      documentsViewItem: item,
                      multiselectMode: multiselectMode,
                      toggleMultiselectMode: toggleMultiselectMode,
                      keyNouveauDoc: item.isNouvelItemToHighlight ? keyNouveauDoc : null,
                    ),
                    Divider(
                      height: 2,
                      color: item.runtimeType == _DocumentItem ? EnsColors.neutral200 : Colors.transparent,
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class _DocumentViewItem extends StatelessWidget {
  final DossierDetailScreenViewModel vm;
  final ViewItem documentsViewItem;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;
  final GlobalKey? keyNouveauDoc;

  const _DocumentViewItem({
    required this.vm,
    required this.documentsViewItem,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
    this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    switch (documentsViewItem) {
      case final ViewItemFilter viewItemFilter:
        if (viewItemFilter.shouldDisplayFilter || viewItemFilter.shouldDisplayEpingler) {
          return DocumentDisplayOptionActionBar(
            shouldAnimateNewResultPage: true,
            dossierToFilterId: vm.dossierId,
            shouldDisplayFilterButton: viewItemFilter.shouldDisplayFilter,
            shouldDisplayEpinglerButton: viewItemFilter.shouldDisplayEpingler,
          );
        } else {
          return const SizedBox(height: 12);
        }
      case final ViewItemDocumentsHeader viewItemDocumentsHeader:
        return _DoucmentsHeaderItem(
          count: viewItemDocumentsHeader.documentsCount,
          toggleMultiselectMode: toggleMultiselectMode,
          multiselectMode: multiselectMode,
        );
      case final ViewItemDocument viewItemDocument:
        return _DocumentItem(
          vm: vm,
          documentsViewItem: viewItemDocument,
          toggleMultiselectMode: toggleMultiselectMode,
          multiselectMode: multiselectMode,
          keyNouveauDoc: keyNouveauDoc,
        );
      default:
        return const SizedBox();
    }
  }
}

class _DoucmentsHeaderItem extends StatelessWidget {
  final int count;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;

  const _DoucmentsHeaderItem({
    required this.count,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          DocumentsListHeader(count: count),
          MultiselectButton(toggleMultiselectMode: toggleMultiselectMode, multiselectMode: multiselectMode),
        ],
      ),
    );
  }
}

class _DocumentItem extends StatelessWidget {
  final DossierDetailScreenViewModel vm;
  final ViewItemDocument documentsViewItem;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;
  final GlobalKey? keyNouveauDoc;

  const _DocumentItem({
    required this.vm,
    required this.documentsViewItem,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
    this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    return multiselectMode
        ? DocumentSelectionItem(idDocument: documentsViewItem.document.id, shouldDisplayFolderName: false)
        : GestureDetector(
            onLongPress: () {
              toggleMultiselectMode();
              vm.addDocToSelectionList(documentsViewItem.document.id);
            },
            child: DocumentsSlidable(
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
                    onAuthenticatedMode: () => DocumentDeletionViewController.deleteDocument(
                      context,
                      documentsViewItem.document,
                    ),
                  );
                } else {
                  DocumentsHelper.displayCantDeleteDocumentBottomSheet(context);
                }
              },
              iconPin: documentsViewItem.document.isEpingle ? EnsImages.ic_unpin : EnsImages.ic_pin,
              labelPin: documentsViewItem.document.isEpingle ? 'Retirer \nl\'épingle' : 'Épingler',
              child: DocumentItem(
                keyNouveauDoc: keyNouveauDoc,
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
                onDelete: () => DocumentDeletionViewController.deleteDocument(
                  context,
                  documentsViewItem.document,
                ),
                onMove: () => MoveDocumentViewController.moveDocuments(context, docId: documentsViewItem.document.id),
              ),
            ),
          );
  }
}

class _View extends StatelessWidget {
  final DossierDetailScreenViewModel vm;
  final DocumentEditionViewController documentEditionViewController;
  final void Function() toggleMultiselectMode;
  final bool multiselectMode;
  final GlobalKey keyNouveauDoc;

  const _View({
    required this.vm,
    required this.documentEditionViewController,
    required this.toggleMultiselectMode,
    required this.multiselectMode,
    required this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case DossierDetailDisplayStatus.SUCCESS:
        return _List(
          vm: vm,
          multiselectMode: multiselectMode,
          toggleMultiselectMode: toggleMultiselectMode,
          keyNouveauDoc: keyNouveauDoc,
        );
      case DossierDetailDisplayStatus.EMPTY:
        return _EmptyState(documentEditionViewController, vm);
      case DossierDetailDisplayStatus.UPDATE_IN_PROGRESS:
        return _UpdatingScreen(vm.documentUpdatingInfoText ?? '');
      default:
        return _LoadingScreen();
    }
  }
}

void _scrollToNouveauDocument(GlobalKey key) {
  final currentContext = key.currentContext;

  if (currentContext != null) {
    Scrollable.ensureVisible(
      currentContext,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: 0.5,
    );
  }
}
