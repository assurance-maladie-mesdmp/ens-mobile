/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/move_document_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:intl/intl.dart';

class MoveDocumentViewController {
  static Future<void> moveDocuments(BuildContext context, {String? docId, String? currentFolderId}) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) => StoreConnector<EnsState, MoveDocumentViewModel>(
        converter: (store) => MoveDocumentViewModel.from(store: store, docId: docId, currentFolderId: currentFolderId),
        distinct: true,
        onInitialBuild: (vm) {
          vm.getNumberOfSelectedDocuments() > 1
              ? context.tagAction(TagsDocuments.tag_697_popin_deplacer_documents)
              : context.tagAction(TagsDocuments.tag_501_popin_deplacer_document);
        },
        builder: (_, MoveDocumentViewModel vm) => _Content(vm: vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final MoveDocumentViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      contentPadding: EdgeInsets.zero,
      content: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            Intl.plural(
              vm.getNumberOfSelectedDocuments(),
              one: 'Déplacer le document',
              other: 'Déplacer les documents',
            ),
            style: EnsTextStyle.text26_w400_normal_title,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        for (final dossier in vm.dossiers)
          Column(
            children: [
              const Divider(height: 2, color: EnsColors.neutral200),
              _FolderItem(
                dossier: dossier,
                updateDossierOfDocument: () => vm.moveSelectedDocuments(dossier.id),
              ),
            ],
          ),
      ],
    );
  }
}

class _FolderItem extends StatelessWidget {
  final EnsDossier dossier;
  final void Function() updateDossierOfDocument;

  const _FolderItem({required this.updateDossierOfDocument, required this.dossier});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () {
        updateDossierOfDocument();
        Navigator.pop(context);
        context.tagAction(TagsDocuments.tag_696_button_deplacer);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Row(
          children: [
            EnsSvg(
              dossier.isRootFolder ? EnsImages.ic_folder_open_padding : EnsImages.ic_folder_filled,
              color: EnsColors.primary,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                dossier.name,
                style: EnsTextStyle.text16_w700_primary,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
