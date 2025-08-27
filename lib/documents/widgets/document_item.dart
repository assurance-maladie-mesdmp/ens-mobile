/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/screens/document_meta_data_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_confidentialite_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/document_item_view_model.dart';
import 'package:fr_cnamts_ens/files/screens/file_sharing_bottom_sheet.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/document_signalement_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/start_new_version_questionnaire_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_vaccinations.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/resources/resource_extension.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class DocumentItem extends StatelessWidget {
  final ViewItemDocument viewItemDocument;
  final void Function() onPin;
  final void Function() onDownload;
  final void Function() onDelete;
  final void Function() onMove;
  final bool shouldDisplayDossierName;
  final GlobalKey? keyNouveauDoc;

  const DocumentItem({
    required this.viewItemDocument,
    required this.onPin,
    required this.onDownload,
    required this.onDelete,
    required this.onMove,
    this.shouldDisplayDossierName = false,
    this.keyNouveauDoc,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DocumentItemViewModel>(
      distinct: true,
      onDidChange: (oldVm, vm) {
        if (vm.isQuestionnaire &&
            oldVm?.actionBottomSheetStatus.isNotSuccess() == true &&
            vm.actionBottomSheetStatus.isSuccess()) {
          vm.redirectToStartNewVersion
              ? Navigator.pushNamed(context, StartNewVersionQuestionnaireScreen.routeName)
              : Navigator.pushNamed(
                  context,
                  QuestionnaireAgesClesQuestionScreen.routeName,
                  arguments: QuestionnaireAgesClesQuestionScreenArguments(
                    isEditMode: true,
                    questionnaireCode: vm.questionnaireCode,
                  ),
                );
        }
      },
      converter: (store) => DocumentItemViewModel(store, viewItemDocument.document),
      builder: (_, DocumentItemViewModel vm) => _DocumentItemContent(
        vm: vm,
        viewItemDocument: viewItemDocument,
        onPin: onPin,
        onDownload: onDownload,
        onDelete: onDelete,
        onMove: onMove,
        shouldDisplayDossierName: shouldDisplayDossierName,
        keyToScroll: keyNouveauDoc,
      ),
    );
  }
}

class _DocumentItemContent extends StatelessWidget {
  final DocumentItemViewModel vm;
  final ViewItemDocument viewItemDocument;
  final void Function() onPin;
  final void Function() onDownload;
  final void Function() onDelete;
  final void Function() onMove;
  final bool shouldDisplayDossierName;
  final GlobalKey? keyToScroll;

  const _DocumentItemContent({
    required this.vm,
    required this.viewItemDocument,
    required this.onPin,
    required this.onDownload,
    required this.onDelete,
    required this.onMove,
    required this.shouldDisplayDossierName,
    this.keyToScroll,
  });

  @override
  Widget build(BuildContext context) {
    final document = viewItemDocument.document;
    final docIsBeingDeleted = vm.isDocumentBeingDeleted(document.id);
    final onTapFunction = docIsBeingDeleted
        ? null
        : () {
            context.tagAction(TagsDocuments.tag_164_button_consulter_un_document);
            _displayActionsBottomSheet(context, vm);
          };
    final double opacity = docIsBeingDeleted ? 0.3 : 1;
    return _ItemContent(
      vm: vm,
      onTap: onTapFunction,
      opacity: opacity,
      viewItemDocument: viewItemDocument,
      shouldDisplayDossierName: shouldDisplayDossierName,
      tagOnOpen: () {
        context.tagAction(TagsDocuments.tag_165_button_visualiser_le_document);
      },
      keyToScroll: keyToScroll,
    );
  }

  void _displayActionsBottomSheet(BuildContext context, DocumentItemViewModel vm) {
    context.tagAction(TagsDocuments.tag_174_popin_document_action);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, vm),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(BuildContext context, DocumentItemViewModel vm) {
    final document = viewItemDocument.document;
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: EnsImages.ic_show,
        label: 'Visualiser',
        execution: () => _openDocument(context, document.id),
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_text_align_left,
        label: 'Voir les détails',
        execution: () {
          Navigator.pushNamed(context, DocumentMetadataScreen.routeName, arguments: document.id);
          document.isCovidCertificate
              ? context.tagAction(TagsVaccinations.tag_98_button_attestation_vaccinale_details)
              : context.tagAction(TagsDocuments.tag_button_voir_details);
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
            context.tagAction(TagsDocuments.tag_734_button_modifier_condidentialite);
            Navigator.pushNamed(context, UpdateConfidentialiteDocumentScreen.routeName, arguments: document.id);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_download,
          label: 'Télécharger',
          execution: onDownload,
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_mail_bold,
          label: 'Envoyer à un professionnel de santé',
          execution: () {
            context.tagAction(TagsDocuments.tag_733_button_partager_document_accueil);

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
                ? TagsDocuments.tag_button_action_documents_retirer_epingle
                : TagsDocuments.tag_2462_button_action_documents_epingler;
            context.tagAction(tag);
            onPin();
          },
        ),
      ],
    );

    if (vm.shouldDisplayUpdateAction) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            document.isCovidCertificate
                ? context.tagAction(TagsVaccinations.tag_100_button_attestation_vaccinale_details_edit)
                : context.tagAction(TagsDocuments.tag_button_modifier);
            final arguments = UpdateDocumentScreenArgument(docToUpdate: document);
            Navigator.pushNamed(context, UpdateDocumentScreen.routeName, arguments: arguments);
          },
        ),
      );
    }

    result.addAll([
      BottomSheetAction(
        assetName: EnsImagesExtension.icShare,
        label: 'Partager',
        execution: () {
          context.tagAction(TagsDocuments.tag_771_button_partagerdocument_exterieurapp_accueil);

          GuestModeHelper.showUnavailableSnackbarIfGuestMode(
            context: context,
            onAuthenticatedMode: () => openShareBottomSheet(context, document.id, document.title),
          );
        },
      ),
    ]);

    if (vm.shouldDisplayMoveAction) {
      result.add(
        BottomSheetAction(assetName: EnsImages.ic_folder_arrow, label: 'Déplacer', execution: onMove),
      );
    }

    if (vm.shouldDisplayDeleteAction) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            GuestModeHelper.showUnavailableSnackbarIfGuestMode(context: context, onAuthenticatedMode: onDelete);
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
              onAuthenticatedMode: () => Navigator.pushNamed(
                context,
                DocumentSignalementScreen.routeName,
                arguments: document.id,
              ),
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
        Navigator.pushNamed(
          context,
          NewConversationScreen.routeName,
          arguments: ConversationArguments(docToShareId: document.id),
        );
      },
    );
  }
}

class _DocumentInformation extends StatelessWidget {
  final DocumentItemViewModel vm;
  final EnsDocument document;
  final bool shouldDisplayDossierName;
  final void Function()? dotsTapCallback;

  bool get displayDossierName => shouldDisplayDossierName && vm.dossierName != null;

  const _DocumentInformation({
    required this.vm,
    required this.document,
    required this.shouldDisplayDossierName,
    this.dotsTapCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  document.title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: EnsTextStyle.text16_w700_normal_title,
                ),
                Text(
                  EnsDateUtils.formatddmmyyyy(document.date),
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                Text(
                  'par ${document.proprietaire.fullName.capitalizeName()}',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                const SizedBox(height: 10),
                if (vm.isDocumentEpingle) ...[
                  Padding(
                    padding: EdgeInsets.only(bottom: displayDossierName ? 8 : 16),
                    child: const Row(
                      children: [
                        EnsSvg(EnsImages.ic_pin, height: 16),
                        SizedBox(width: 8),
                        Expanded(child: Text('Document épinglé', style: EnsTextStyle.text14_w400_normal_body)),
                      ],
                    ),
                  ),
                ],
                if (displayDossierName) ...[
                  Padding(
                    padding: EdgeInsets.only(top: vm.isDocumentEpingle ? 10 : 0, bottom: 16),
                    child: Row(
                      children: [
                        const EnsSvg(EnsImages.ic_folder_filled, color: EnsColors.illustrative10, height: 16),
                        const SizedBox(width: 8),
                        Text(vm.dossierName!, style: EnsTextStyle.text14_w400_normal_body),
                      ],
                    ),
                  ),
                ],
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: EnsEtiquette(
                    label: document.categorie.label,
                    backgroundColor: document.categorie.color,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 12),
          child: EnsInkWell(
            semanticLabel: 'Effectuer des actions sur ${document.title}',
            borderRadius: BorderRadius.circular(24),
            onTap: () {
              dotsTapCallback!();
              context.tagAction(TagsDocuments.tag_732_button_actions_document);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: EnsSvg(EnsImages.ic_more_vertical, height: 16, width: 4, alignment: Alignment.centerRight),
            ),
          ),
        ),
      ],
    );
  }
}

class _ItemContent extends StatelessWidget {
  final DocumentItemViewModel vm;
  final GestureTapCallback? onTap;
  final double opacity;
  final ViewItemDocument viewItemDocument;
  final bool shouldDisplayDossierName;
  final void Function() tagOnOpen;
  final GlobalKey? keyToScroll;

  const _ItemContent({
    required this.vm,
    this.onTap,
    this.opacity = 1,
    required this.viewItemDocument,
    required this.shouldDisplayDossierName,
    required this.tagOnOpen,
    this.keyToScroll,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: opacity,
      child: EnsInkWell(
        semanticLabel: 'Visualiser',
        onTap: () => _openDocument(context, viewItemDocument.document.id),
        child: Container(
          key: keyToScroll,
          padding: const EdgeInsets.only(left: 20),
          constraints: const BoxConstraints(minHeight: 144),
          color: viewItemDocument.isNouvelItemToHighlight ? EnsColors.neutral200 : EnsColors.light,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: EnsSvg(EnsImages.ic_file_blank_filled, width: 24, height: 24, color: EnsColors.primary),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: _DocumentInformation(
                  vm: vm,
                  document: viewItemDocument.document,
                  shouldDisplayDossierName: shouldDisplayDossierName,
                  dotsTapCallback: onTap,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openDocument(BuildContext context, String docId) {
  Navigator.pushNamed(
    context,
    DocumentPreviewScreen.routeName,
    arguments: DocumentPreviewScreenArgument(documentToDisplayId: docId),
  );
  context.tagAction(TagsDocuments.tag_164_button_consulter_un_document);
}
