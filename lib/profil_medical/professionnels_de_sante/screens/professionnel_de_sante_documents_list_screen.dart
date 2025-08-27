/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/document_deletion_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/move_document_view_controller.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_item.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_documents_list_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:intl/intl.dart';

class ProfessionnelDeSanteDocumentsListScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/detail/documents-list';

  @override
  Widget build(BuildContext context) {
    final psIdNat = ModalRoute.of(context)!.settings.arguments! as String;

    return StoreConnector<EnsState, ProfessionnelDeSanteDocumentsListViewModel>(
      distinct: true,
      converter: (store) => ProfessionnelDeSanteDocumentsListViewModel(store, psIdNat),
      builder: (_, ProfessionnelDeSanteDocumentsListViewModel vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Documents déposés'),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 32, 24, 8),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  '${vm.documents.length} ${Intl.plural(vm.documents.length, zero: 'document', one: 'document', other: 'documents')}',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
            ),
            _DocumentsListWidget(vm: vm),
          ],
        ),
      ),
    );
  }
}

class _DocumentsListWidget extends StatelessWidget {
  final ProfessionnelDeSanteDocumentsListViewModel vm;

  const _DocumentsListWidget({
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListViewWithScrollbar.separated(
        itemBuilder: (context, index) {
          final document = vm.documents[index];
          return DocumentItem(
            shouldDisplayDossierName: document.dossierId != null,
            onPin: () => DocumentActionsHelper.setDocumentPinStatus(context, document.id, !document.isEpingle),
            viewItemDocument: ViewItemDocument(document: document),
            onDownload: () => DocumentActionsHelper.downloadDocument(context, docToDisplay: document),
            onDelete: () => DocumentDeletionViewController.deleteDocument(
              context,
              vm.documents[index],
            ),
            onMove: () => MoveDocumentViewController.moveDocuments(context, docId: vm.documents[index].id),
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 2, color: EnsColors.neutral200),
        itemCount: vm.documents.length,
      ),
    );
  }
}
