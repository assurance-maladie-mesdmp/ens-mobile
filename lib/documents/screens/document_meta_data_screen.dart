/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_metadata_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_metadata.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_metadata_skeleton.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class DocumentMetadataScreen extends StatelessWidget {
  static const routeName = '/document-meta-data';

  @override
  Widget build(BuildContext context) {
    final documentToDisplayId = ModalRoute.of(context)!.settings.arguments as String?;

    return StoreConnector<EnsState, DocumentMetadataScreenViewModel>(
      onInitialBuild: (vm) => _tagPage(context, vm),
      distinct: true,
      converter: (store) => DocumentMetadataScreenViewModel.from(store, documentToDisplayId!),
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Détails',
          action: vm.shouldDisplayEditAction
              ? Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: EnsInkWell(
                    semanticLabel: 'Modifier le document',
                    borderRadius: BorderRadius.circular(32),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: EnsSvg(EnsImages.ic_edit, height: 24, width: 24, color: Colors.black),
                    ),
                    onTap: () {
                      final arguments = UpdateDocumentScreenArgument(
                        docToUpdate: vm.documentToDisplay!,
                        forcedCategory: vm.documentToDisplay?.categorie == EnsDocumentCategorie.directivesAnticipees
                            ? EnsDocumentCategorie.directivesAnticipees
                            : null,
                      );
                      Navigator.pushNamed(context, UpdateDocumentScreen.routeName, arguments: arguments);
                    },
                  ),
                )
              : null,
        ),
        body: _Content(vm),
      ),
    );
  }

  void _tagPage(BuildContext context, DocumentMetadataScreenViewModel vm) {
    if (vm.documentToDisplay != null && vm.documentToDisplay!.isCovidCertificate) {
      context.tagAction(TagsDocuments.tag_99_attestation_vaccinale_details);
    } else {
      context.tagAction(TagsDocuments.tag_831_document_details);
    }
  }
}

class _Content extends StatelessWidget {
  final DocumentMetadataScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.docMetadataStatus) {
      case ScreenStatus.LOADING:
        return _Loading();
      case ScreenStatus.ERROR:
        return _Error(vm);
      case ScreenStatus.SUCCESS:
        return _Success(vm.documentToDisplay!);
    }
  }
}

class _Success extends StatelessWidget {
  final EnsDocument documentToDisplay;

  const _Success(this.documentToDisplay);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: DocumentMetadata(document: documentToDisplay),
    );
  }
}

class _Error extends StatelessWidget {
  final DocumentMetadataScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: vm.loadDocuments);
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: ScrollviewWithScrollbar(child: DocumentMetadataSkeleton()),
    );
  }
}
