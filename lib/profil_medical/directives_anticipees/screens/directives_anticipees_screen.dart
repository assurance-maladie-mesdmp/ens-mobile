/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/document_download_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/document_meta_data_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_remplir_formulaire_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/piece_administrative_item.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/viewModels/directives_anticipees_screen_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_directives_anticipees.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class DirectivesAnticipeesScreen extends StatelessWidget {
  static const routeName = '/medical/profil/directives_anticipees';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DirectivesAnticipeesScreenViewModel>(
      converter: (store) => DirectivesAnticipeesScreenViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        vm.fetchDirectivesAnticipees();
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_DIRECTIVES_ANTICIPEES);
        if (vm.status.isEmpty) {
          context.tagAction(TagsDirectivesAnticipees.tag_441_directives_anticipees_empty);
        } else if (vm.status.isSuccess && vm.document != null) {
          context.tagAction(TagsDirectivesAnticipees.tag_442_directives_anticipees);
        }
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.status.isEmpty == false && vm.status.isEmpty) {
          context.tagAction(TagsDirectivesAnticipees.tag_2652_directives_anticipees_empty);
        }
      },
      builder: (_, vm) {
        return Scaffold(
          appBar: const EnsAppBarSubLevel(
            title: 'Directives anticipées',
          ),
          body: _Content(vm: vm),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final DirectivesAnticipeesScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    final doc = vm.document;
    return switch (vm.status) {
      AllPurposesWithEmptyStatus.NOT_LOADED || AllPurposesWithEmptyStatus.LOADING => const _Loading(),
      AllPurposesWithEmptyStatus.EMPTY => _Empty(vm: vm),
      AllPurposesWithEmptyStatus.SUCCESS => _Success(vm: vm, document: doc!),
      AllPurposesWithEmptyStatus.ERROR => ErrorPage(reloadFunction: () => vm.fetchDirectivesAnticipees(force: true)),
    };
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(
        color: EnsColors.primary,
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final DirectivesAnticipeesScreenViewModel vm;

  final urlsConfig = EnsModuleContainer.currentInjector.getUrlsConfig();

  _Empty({required this.vm});

  @override
  Widget build(BuildContext context) {
    final docEditionViewController = DocumentEditionViewController(
      context,
      forcedCategory: EnsDocumentCategorie.directivesAnticipees,
    );
    switch (vm.profilType) {
      case ProfilType.PROFIL_PRINCIPAL:
      case ProfilType.AIDE:
        return EnsPullToRefresh(
          onRefresh: () async => vm.fetchDirectivesAnticipees(force: true),
          child: EnsEmptyPage(
            physics: const AlwaysScrollableScrollPhysics(),
            title: 'Je renseigne mes directives anticipées',
            description:
                'Pour permettre aux professionnels de santé de connaître et respecter mes volontés sur la poursuite ou l\'arrêt de traitements médicaux, si je ne suis plus en capacité de m\'exprimer.',
            customImagePath: EnsImages.document_ajout,
            infoBox: vm.profilType.isAide ? EnsPersistentInfoBox.text(AidantAideUtils.unavailableAsAidant) : null,
            buttonList: EnsEmptyButtonList.withPrimaryAndTwoExternalLinkButton(
              primaryButtonLabel: 'Ajouter mes directives anticipées',
              primaryButtonHandler: () {
                vm.profilType.showUnavailableSnackbarIfAide(
                  context,
                  profilFullName: vm.profilFullName,
                  onOtherProfil: () {
                    GuestModeHelper.showGuestModeBottomSheetIfGuestModeOrUseCallback(
                      context: context,
                      onAuthenticatedMode: () {
                        context.tagAction(TagsDirectivesAnticipees.tag_708_button_ajouter_da);
                        docEditionViewController.openSelectAction(
                          onFillOnlineFormSelected: () {
                            Navigator.pushNamed(context, DirectivesAnticipeesRemplirFormulaireScreen.routeName);
                          },
                        );
                      },
                    );
                  },
                );
              },
              externalLinkLabel1: 'Comment ça marche ?',
              externalLinkUrl1: urlsConfig.directivesAnticipeesUrl,
              externalLinkLabel2: 'Parlons-fin-de-vie.fr',
              externalLinkUrl2: urlsConfig.finDeVieUrl,
              externalLinkUrlSemanticLabel2: 'Parlons fin de vie point fr',
            ),
          ),
        );
      case ProfilType.AYANT_DROIT:
        return const EnsEmptyPage(
          title: 'Les directives anticipées ne s\'appliquent pas aux mineurs',
          description:
              'Les mineurs ne peuvent pas rédiger de directives anticipées, car ils n\'ont pas la capacité juridique de prendre des décisions engageant leur avenir médical.\n\nCependant, les représentants légaux peuvent échanger avec les professionnels de santé pour anticiper et respecter les souhaits de l\'enfant.',
          customImagePath: EnsImages.information,
        );
    }
  }
}

class _Success extends StatelessWidget {
  final DirectivesAnticipeesScreenViewModel vm;
  final EnsDocument document;

  final urlsConfig = EnsModuleContainer.currentInjector.getUrlsConfig();

  _Success({required this.vm, required this.document});

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.fetchDirectivesAnticipees(force: true),
      child: LayoutBuilder(
        builder: (_, constraints) {
          return ScrollviewWithScrollbar(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Je permets aux professionnels de santé de connaître et respecter mes volontés sur la poursuite ou l\'arrêt de traitements médicaux, si je ne suis plus en capacité de m\'exprimer.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: EnsExternalLink.withRedirection(
                      linkText: 'Comment ça marche ?',
                      linkUrl: urlsConfig.directivesAnticipeesUrl,
                      extraPadding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (vm.profilType.isAide) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: EnsPersistentInfoBox.text(AidantAideUtils.unavailableAsAidant),
                    ),
                    const SizedBox(height: 24),
                  ],
                  PieceAdministrativeItem(
                    pieceAdministrative: document,
                    onOpen: () {
                      Navigator.pushNamed(
                        context,
                        DocumentPreviewScreen.routeName,
                        arguments: DocumentPreviewScreenArgument(
                          documentToDisplayId: document.id,
                        ),
                      );
                    },
                    onDetails: () {
                      Navigator.pushNamed(
                        context,
                        DocumentMetadataScreen.routeName,
                        arguments: document.id,
                      );
                    },
                    onDelete: () {
                      _onDeleteDirectivesAnticipees(context, vm);
                    },
                    onDownload: () {
                      DocumentDownloadViewController.downloadDocument(context, document);
                    },
                    onEdit: () {
                      vm.profilType.showUnavailableSnackbarIfAide(
                        context,
                        profilFullName: vm.profilFullName,
                        onOtherProfil: () {
                          final arguments = UpdateDocumentScreenArgument(
                            docToUpdate: document,
                            forcedCategory: EnsDocumentCategorie.directivesAnticipees,
                          );
                          Navigator.pushNamed(context, UpdateDocumentScreen.routeName, arguments: arguments);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Pour obtenir plus d\'information sur le sujet de la fin de vie, je me rends sur le site du Centre National de la Fin de Vie :',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: EnsExternalLink.withRedirection(
                      linkText: 'Parlons-fin-de-vie.fr',
                      linkUrl: urlsConfig.finDeVieUrl,
                      semanticsLabel: 'Parlons fin de vie point fr',
                      extraPadding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onDeleteDirectivesAnticipees(BuildContext context, DirectivesAnticipeesScreenViewModel vm) {
    vm.profilType.showUnavailableSnackbarIfAide(
      context,
      profilFullName: vm.profilFullName,
      onOtherProfil: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (builderContext) {
            return ConfirmationBottomSheet(
              title: 'Voulez-vous supprimer vos directives anticipées ?',
              content: const ConfirmationBottomSheetDefaultTextContent(
                'Attention, vos précédentes directives anticipées ne seront pas conservées.\nPensez à télécharger le document pour en garder une trace et les réutiliser.',
              ),
              positiveButtonLabel: 'Supprimer',
              positiveButtonHandler: () {
                vm.deleteDirectivesAnticipees();
              },
            );
          },
        );
      },
    );
  }
}
