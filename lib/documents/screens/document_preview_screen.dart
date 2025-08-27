/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/screens/document_deletion_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/document_meta_data_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_confidentialite_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_preview_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/image_preview_widget.dart';
import 'package:fr_cnamts_ens/documents/widgets/pdf_preview_widget.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/files/screens/file_sharing_bottom_sheet.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/document_signalement_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/last_mesures_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_history_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/resources/resource_extension.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_expansion_panel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';
import 'package:lottie/lottie.dart';

part '../widgets/displayable_document_widget.dart';
part '../widgets/document_preview_not_available.dart';
part '../widgets/non_displayable_document.dart';

class DocumentPreviewScreenArgument {
  final String documentToDisplayId;
  final bool isLinkedToEntity;

  DocumentPreviewScreenArgument({required this.documentToDisplayId, this.isLinkedToEntity = false});
}

class DocumentPreviewScreen extends StatefulWidget {
  static const routeName = '/document/detail';

  @override
  State<DocumentPreviewScreen> createState() => _DocumentPreviewScreenState();
}

class _DocumentPreviewScreenState extends State<DocumentPreviewScreen> {
  _DocumentPreviewScreenState();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as DocumentPreviewScreenArgument;
    return StoreConnector<EnsState, DocumentPreviewScreenViewModel>(
      distinct: true,
      converter: (store) => DocumentPreviewScreenViewModel.from(store, arg),
      onInit: (store) {
        store.dispatch(FetchDocumentsAction());
        store.dispatch(InitDocumentDisplayAction(documentId: arg.documentToDisplayId, force: false));
      },
      onInitialBuild: (vm) {
        _tagInitialPage(context, vm);
        final displayModel = vm.displayModel;
        if (displayModel is DocumentDetailDisplayModelFound) {
          context.traceAction(EnsTraceType.CONSULT_DOC, params: {'nomDocument': displayModel.document.title});
        }
      },
      onDidChange: (oldVm, vm) {
        _tagDocumentStatePage(context, vm);
        if (oldVm?.displayModel is DocumentDetailDisplayModelLoading &&
            vm.displayModel is DocumentDetailDisplayModelDisplayable) {
          vm.loadMesures();
        }
        if (oldVm?.isDocumentSuccessfullyDeleted == false && vm.isDocumentSuccessfullyDeleted == true) {
          Navigator.pop(context);
        }
      },
      onDispose: (store) {
        final document = DocumentsSelectors.getLoadedDocumentById(store.state, arg.documentToDisplayId);
        if (document.proprietaire.ownerType != null) {
          store.dispatch(AddSuccessfulRatingAction());
        }
      },
      builder: (context, vm) => EnsPopScope.shouldPop(
        onScreenClosedInvoked: () => vm.triggerRecommanderApp(),
        child: Scaffold(
          appBar: _AppBar(vm),
          body: SafeArea(child: _Body(vm)),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final DocumentPreviewScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModel) {
      case final DocumentDetailDisplayModelDisplayable displayable:
        return _DisplayableDocumentWidget(vm, displayable);
      case final DocumentDetailDisplayModelNonDisplayable nonDisplayable:
        return _NonDisplayableDocument(document: nonDisplayable.document, viewModel: vm);
      case final DocumentDetailDisplayModelError error:
        return _Error(vm, error);
      case DocumentDetailDisplayModelNotFound _:
        return _NotFound();
      default:
        return _Loading();
    }
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  final DocumentPreviewScreenViewModel vm;

  @override
  Size get preferredSize => const Size.fromHeight(64);

  const _AppBar(this.vm);

  @override
  Widget build(BuildContext context) {
    final displayModel = vm.displayModel;
    if (displayModel is DocumentDetailDisplayModelFound) {
      final visualisationDocumentTitle = 'Visualisation du document ${displayModel.document.title}';
      if (displayModel is DocumentDetailDisplayModelDisplayable ||
          displayModel is DocumentDetailDisplayModelNonDisplayable) {
        return Semantics(
          label: visualisationDocumentTitle,
          child: EnsAppBarSubLevel(
            excludeSemantics: true,
            title: displayModel.document.title,
            action: ActionButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'options',
              onTap: () {
                _tagDocumentDetailsActionsClick(context, vm);
                _showOptionsBottomSheet(displayModel.document, context, vm);
              },
            ),
          ),
        );
      } else {
        return Semantics(
          label: visualisationDocumentTitle,
          child: EnsAppBarSubLevel(
            excludeSemantics: true,
            title: displayModel.document.title,
          ),
        );
      }
    } else {
      return const EnsAppBarSubLevel(
        title: 'Document',
      );
    }
  }

  void _showOptionsBottomSheet(EnsDocument document, BuildContext context, DocumentPreviewScreenViewModel vm) {
    context.tagAction(TagsDocuments.tag_500_popin_consulter_un_document_actions);
    if (vm.isCovidCertificate) {
      context.tagAction(TagsDocuments.tag_popin_consulter_attestation_vaccinale_actions);
    }
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, vm, document),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    DocumentPreviewScreenViewModel vm,
    EnsDocument document,
  ) {
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: EnsImages.ic_text_align_left,
        label: 'Voir les détails',
        execution: () {
          _tagDetailsActionClick(context, vm);
          _navigateWithOrientation(context, DocumentMetadataScreen.routeName, document.id);
        },
      ),
    ];

    if (vm.isQuestionnaire) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier mon questionnaire',
          execution: () {
            context.tagAction(
              TagsQuestionnaireAgesCles.tagButtonModifierQuestionnaire1023(
                vm.questionnaireCode!.getTrancheAgeForTracking(),
              ),
            );
            vm.getVersionQuestionnaire();
          },
        ),
      );
    }

    result.addAll(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_hide,
          label: 'Gérer la confidentialité',
          execution: () {
            if (vm.profilType.isAide) {
              vm.displayUnavailableAsAidantSnackbar();
            } else {
              context.tagAction(TagsDocuments.tag_734_button_modifier_condidentialite);
              _navigateWithOrientation(context, UpdateConfidentialiteDocumentScreen.routeName, document.id);
            }
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_download,
          label: vm.isCovidCertificate ? 'Télécharger mon attestation' : 'Télécharger',
          execution: () {
            DocumentActionsHelper.downloadDocument(
              context,
              docToDisplay: document,
              tag: _tagDownloadActionClick(context, vm),
            );
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_mail_bold,
          label: 'Envoyer à un professionnel de santé',
          execution: () {
            context.tagAction(TagsDocuments.tag_700_button_partager_un_document);
            GuestModeHelper.showUnavailableSnackbarIfGuestMode(
              context: context,
              onAuthenticatedMode: () {
                _redirectWithInterruptionHandling(context, document, vm.interruptionServiceSnackbarMessage);
              },
            );
          },
        ),
        BottomSheetAction(
          assetName: document.isEpingle ? EnsImages.ic_unpin : EnsImages.ic_pin,
          label: document.isEpingle ? 'Retirer l\'épingle' : 'Épingler',
          execution: () {
            final tag = document.isEpingle
                ? TagsDocuments.tag_2465_button_preview_doc_select_retirer_epingle
                : TagsDocuments.tag_2464_button_preview_doc_select_documents_epingler;
            context.tagAction(tag);
            DocumentActionsHelper.setDocumentPinStatus(context, document.id, !document.isEpingle);
          },
        ),
        BottomSheetAction(
          assetName: EnsImagesExtension.icShare,
          label: 'Partager',
          execution: () {
            context.tagAction(TagsDocuments.tag_772_button_partagerdocument_exterieurapp_visualisation);
            GuestModeHelper.showUnavailableSnackbarIfGuestMode(
              context: context,
              onAuthenticatedMode: () => openShareBottomSheet(context, document.id, document.title),
            );
          },
        ),
      ],
    );

    if (vm.shouldDisplayEditAction) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            final arguments = UpdateDocumentScreenArgument(
              docToUpdate: document,
              forcedCategory: document.categorie == EnsDocumentCategorie.directivesAnticipees
                  ? EnsDocumentCategorie.directivesAnticipees
                  : null,
            );
            _navigateWithOrientation(context, UpdateDocumentScreen.routeName, arguments);
          },
        ),
      );
    }

    if (vm.shouldDisplayDeleteAction) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            if (vm.profilType.isAide) {
              vm.displayUnavailableAsAidantSnackbar();
            } else {
              context.tagAction(TagsDocuments.tag_button_consulter_un_document_supprimer);
              SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
              GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                context: context,
                onAuthenticatedMode: () => DocumentDeletionViewController.deleteDocument(
                  context,
                  document,
                ),
              );
            }
          },
        ),
      );
    }

    if (vm.shouldDisplayRemoveAction) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_minus_circle_outlined,
          label: 'Retirer',
          execution: () {
            SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
            _showDeleteDocumentLinkBottomSheet(context, vm);
          },
        ),
      );
    }

    if (document.reportDate == null) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_help_circle_outlined,
          label: 'Signaler un problème',
          execution: () {
            context.tagAction(TagsDocuments.tag_847_button_signaler_un_document);
            GuestModeHelper.showUnavailableSnackbarIfGuestMode(
              context: context,
              onAuthenticatedMode: () =>
                  _navigateWithOrientation(context, DocumentSignalementScreen.routeName, document.id),
            );
          },
        ),
      );
    }

    return result;
  }

  void _redirectWithInterruptionHandling(BuildContext context, EnsDocument document, String? interruptionMessage) {
    InterruptionServiceHelper.showSnackbarOnInterruption(
      context,
      interruptionServiceSnackbarMessage: interruptionMessage,
      onNotInterrompu: () {
        _navigateWithOrientation(
          context,
          NewConversationScreen.routeName,
          ConversationArguments(docToShareId: document.id),
        );
      },
    );
  }

  Future<void> _showDeleteDocumentLinkBottomSheet(BuildContext context, DocumentPreviewScreenViewModel vm) async {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Retirer le document ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Ce document reste disponible dans la liste de vos documents.',
          ),
          positiveButtonLabel: 'Retirer',
          positiveButtonHandler: () => Navigator.pop(context, true),
        );
      },
    );
  }
}

class _Error extends StatelessWidget {
  final DocumentPreviewScreenViewModel vm;
  final DocumentDetailDisplayModelError displayModel;

  const _Error(this.vm, this.displayModel);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      reloadFunction: () {
        vm.loadDocumentsList();
        vm.loadDocument(displayModel.id);
      },
    );
  }
}

class _NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.avertissement,
      title: 'Document introuvable',
      description: 'Ce document a été supprimé par le professionnel de santé qui l\'a déposé.',
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Voir les documents',
        primaryButtonHandler: () {
          BottomNavigationTabsScreen.navigateToTab(BottomTabs.DOCUMENTS);
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: DeviceUtils.isSmallDevice(context) ? 80 : 148),
          Lottie.asset('assets/anims/file_download.json', height: 160, width: 160, fit: BoxFit.contain),
          const SizedBox(height: 80),
          const Text('Chargement de l\'aperçu\u2026', style: EnsTextStyle.text14_w700_normal_primary),
        ],
      ),
    );
  }
}

void _navigateWithOrientation(BuildContext context, String routeName, Object? arguments) {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Navigator.pushNamed(context, routeName, arguments: arguments).then(
    (_) => SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]),
  );
}

EnsTag _tagDownloadActionClick(BuildContext context, DocumentPreviewScreenViewModel vm) {
  if (vm.isCovidCertificate) {
    return TagsDocuments.tag_button_attestation_vaccinale_telecharger;
  } else {
    return TagsDocuments.tag_button_consulter_un_document_telecharger;
  }
}

void _tagDetailsActionClick(BuildContext context, DocumentPreviewScreenViewModel vm) {
  if (vm.isCovidCertificate) {
    context.tagAction(TagsDocuments.tag_98_button_attestation_vaccinale_details);
  } else {
    context.tagAction(TagsDocuments.tag_button_consulter_un_document_voir_details);
  }
}

void _tagDocumentDetailsActionsClick(BuildContext context, DocumentPreviewScreenViewModel vm) {
  if (vm.isCovidCertificate) {
    context.tagAction(TagsDocuments.tag_button_attestation_vaccinale_actions);
  } else {
    context.tagAction(TagsDocuments.tag_button_consulter_un_document_actions);
  }
}

void _tagInitialPage(BuildContext context, DocumentPreviewScreenViewModel vm) {
  final displayModel = vm.displayModel;
  if (displayModel is DocumentDetailDisplayModelLoading) {
    context.tagAction(TagsDocuments.tag_829_consulter_un_document_chargement);
  }
  if (displayModel is DocumentDetailDisplayModelFound && displayModel.document.isCovidCertificate) {
    context.tagAction(TagsDocuments.tag_attestation_vaccinale_pdf);
  }
}

void _tagDocumentStatePage(BuildContext context, DocumentPreviewScreenViewModel vm) {
  if (vm.displayModel is DocumentDetailDisplayModelDisplayable) {
    context.tagAction(TagsDocuments.tag_consulter_un_document);
  } else if (vm.displayModel is DocumentDetailDisplayModelNonDisplayable) {
    context.tagAction(TagsDocuments.tag_832_consulter_un_document_apercu_indisponible);
  }
}
