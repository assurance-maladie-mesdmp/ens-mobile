/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_list_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/get_selected_document_ids_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_display_option_action_bar.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/documents_list_header.dart';
import 'package:fr_cnamts_ens/documents/widgets/dossier_item.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';
import 'package:redux/redux.dart';

class ChooseEnsDocumentsScreen extends StatelessWidget {
  static const routeName = '/chooseDocuments';

  const ChooseEnsDocumentsScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as ChooseEnsDocumentScreenArgument;
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: argument.pageTitle),
      body: _DocumentsListContent(argument),
    );
  }
}

class ChooseEnsDocumentScreenArgument {
  final List<String> alreadySelectedDocsIds;
  final String headerInfoText;
  final void Function()? displayTagFunc;
  final String? currentFolderId;
  final DocumentsListFilter filter;
  final String pageTitle;
  final EnsTag? tagOnAddButtonClicked;

  const ChooseEnsDocumentScreenArgument({
    this.displayTagFunc,
    this.alreadySelectedDocsIds = const [],
    required this.headerInfoText,
    this.currentFolderId,
    this.filter = DocumentsListFilter.SANS_DOSSIER,
    this.pageTitle = 'Ajouter un document',
    this.tagOnAddButtonClicked,
  });
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 28, 16),
          child: Text(
            'Documents de santé',
            style: EnsTextStyle.text26_w400_normal_title,
          ),
        ),
        ListViewWithScrollbar.separated(
          separatorBuilder: (context, index) => const Divider(
            height: 2,
            color: EnsColors.neutral200,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => DocumentItemSkeleton(),
        ),
      ],
    );
  }
}

class _Error extends StatelessWidget {
  const _Error();

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      reloadFunction: () {
        Navigator.pop(context);
      },
    );
  }
}

void _validateDocumentsSelection(
  BuildContext context,
  List<EnsDocument> selectedDocuments,
  EnsTag? tagOnAddButtonClicked,
) {
  if (selectedDocuments.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      EnsSnackbar.error(
        context: context,
        label: 'Sélectionner au moins un document',
        extraVerticalPadding: 100,
      ),
    );
  } else {
    if (tagOnAddButtonClicked != null) {
      context.tagAction(tagOnAddButtonClicked);
    }
    Navigator.pop(context, selectedDocuments);
  }
}

class _ListHeader extends StatelessWidget {
  final String headerTextInfo;

  const _ListHeader(this.headerTextInfo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
      child: Text(headerTextInfo, style: EnsTextStyle.text14_w400_normal_body),
    );
  }
}

class _DossiersListHeader extends StatelessWidget {
  final int nbDocs;

  const _DossiersListHeader(this.nbDocs);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 16),
      child: Text('$nbDocs dossiers', style: EnsTextStyle.text14_w400_normal_body),
    );
  }
}

class _EmptyDocumentsList extends StatelessWidget {
  final bool piecesAdministrativesOnly;

  const _EmptyDocumentsList({required this.piecesAdministrativesOnly});

  @override
  Widget build(BuildContext context) {
    return DisappearingIllustrationPage(
      asset: EnsImages.document_erreur,
      children: [
        Text(
          'Je n’ai pas de ${piecesAdministrativesOnly ? 'pièces administratives' : 'document de santé'}',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text24_w400_normal_title,
        ),
        const SizedBox(height: 24),
        Text(
          piecesAdministrativesOnly
              ? 'Pour ajouter mes premières pièces administratives (carte nationale d’identité, carte de groupe sanguin, carte d’organisme complémentaire…), je me rends dans la rubrique Pièces administratives du Profil médical'
              : 'Pour ajouter mes premiers documents, je me rends dans la rubrique Documents de santé',
          textAlign: TextAlign.center,
          style: EnsTextStyle.text16_w400_normal_body,
        ),
      ],
    );
  }
}

class _DocumentsList extends StatelessWidget {
  final DocumentsListViewModel vm;
  final String headerInfoText;
  final EnsTag? tagOnAddButtonClicked;

  const _DocumentsList({required this.vm, required this.headerInfoText, this.tagOnAddButtonClicked});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ListViewWithScrollbar.separated(
          separatorBuilder: (context, index) => _ListDivider(
            index: index,
            indexIsNotAnEnd: vm.displayModels.indexIsNotAnEnd(index),
          ),
          itemCount: vm.displayModels.length,
          padding: const EdgeInsets.only(bottom: 100),
          itemBuilder: (context, index) => _DocumentListItem(index, vm, headerInfoText, tagOnAddButtonClicked),
        ),
        StoreConnector<EnsState, GetSelectedDocumentIdsViewModel>(
          converter: (store) => GetSelectedDocumentIdsViewModel(store),
          distinct: true,
          builder: (_, GetSelectedDocumentIdsViewModel vm) => SafeArea(
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
              child: Row(
                children: [
                  Expanded(
                    child: EnsButton(
                      label: vm.selectedDocuments.isEmpty ? 'Ajouter' : 'Ajouter (${vm.selectedDocuments.length})',
                      onTap: () => _validateDocumentsSelection(context, vm.selectedDocuments, tagOnAddButtonClicked),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DocumentsListContent extends StatelessWidget {
  final ChooseEnsDocumentScreenArgument argument;

  const _DocumentsListContent(this.argument);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DocumentsListViewModel>(
      converter: (store) => DocumentsListViewModel(
        store,
        dossierId: argument.currentFolderId,
        filter: argument.filter,
      ),
      distinct: true,
      onInit: (Store<EnsState> store) {
        store.dispatch(FetchDocumentsAction());
        store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: argument.alreadySelectedDocsIds));
      },
      onInitialBuild: (_) {
        argument.displayTagFunc?.call();
      },
      builder: (_, DocumentsListViewModel vm) => _ListContent(vm, argument),
    );
  }
}

class _ListDivider extends StatelessWidget {
  final int index;
  final bool indexIsNotAnEnd;

  const _ListDivider({required this.index, required this.indexIsNotAnEnd});

  @override
  Widget build(BuildContext context) {
    return index > 2
        ? Divider(
            height: indexIsNotAnEnd ? 2 : 0,
            color: indexIsNotAnEnd ? EnsColors.neutral200 : EnsColors.light,
          )
        : const SizedBox();
  }
}

class _DocumentListItem extends StatelessWidget {
  final int index;
  final DocumentsListViewModel vm;
  final String headerTextInfo;
  final EnsTag? tagOnAddButtonClicked;

  const _DocumentListItem(this.index, this.vm, this.headerTextInfo, this.tagOnAddButtonClicked);

  @override
  Widget build(BuildContext context) {
    switch (vm.displayModels[index]) {
      case ChooseEnsDocumentsScreenHeaderDisplayModel _:
        return _ListHeader(headerTextInfo);
      case ChooseEnsDossierListHeader _:
        return _DossiersListHeader((vm.displayModels[index] as ChooseEnsDossierListHeader).nbDossiers);
      case ChooseEnsDocumentsListHeader _:
        return DocumentsListHeader(count: (vm.displayModels[index] as ChooseEnsDocumentsListHeader).nbDocs);
      case ChooseEnsDocumentsScreenDocItemDisplayModel _:
        final dm = vm.displayModels[index] as ChooseEnsDocumentsScreenDocItemDisplayModel;
        return DocumentSelectionItem(idDocument: dm.docId);
      case ChooseEnsDossiersScreenItemDisplayModel _:
        final dm = vm.displayModels[index] as ChooseEnsDossiersScreenItemDisplayModel;
        return DossierItem(
          dossierItem: dm.dossier,
          enabled: dm.enabled,
          documentSelection: true,
          argument: ChooseEnsDocumentScreenArgument(
            headerInfoText: headerTextInfo,
            tagOnAddButtonClicked: tagOnAddButtonClicked,
            currentFolderId: vm.currentFolderId,
            filter: vm.piecesAdministrativesOnly
                ? DocumentsListFilter.PIECES_ADMINISTRATIVES
                : DocumentsListFilter.SANS_DOSSIER,
          ),
        );
      case ChooseEnsDocumentsListFilter _:
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: DocumentDisplayOptionActionBar(selectionMode: true),
        );
      default:
        return const SizedBox();
    }
  }
}

class _ListContent extends StatelessWidget {
  final DocumentsListViewModel vm;
  final ChooseEnsDocumentScreenArgument argument;

  const _ListContent(this.vm, this.argument);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case DocumentsListStatus.EMPTY:
        return _EmptyDocumentsList(piecesAdministrativesOnly: vm.piecesAdministrativesOnly);
      case DocumentsListStatus.SUCCESS:
        return _DocumentsList(
          vm: vm,
          headerInfoText: argument.headerInfoText,
          tagOnAddButtonClicked: argument.tagOnAddButtonClicked,
        );
      case DocumentsListStatus.ERROR:
        return const _Error();
      case DocumentsListStatus.LOADING:
        return const _Loading();
    }
  }
}
