/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/document_attachment_item_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class DocumentSelectionItem extends StatelessWidget {
  final String idDocument;
  final bool shouldDisplayFolderName;

  const DocumentSelectionItem({
    required this.idDocument,
    this.shouldDisplayFolderName = true,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DocumentAttachmentItemViewModel>(
      converter: (store) => DocumentAttachmentItemViewModel(store, idDocument),
      distinct: true,
      builder: (_, DocumentAttachmentItemViewModel vm) =>
          _Content(vm: vm, shouldDisplayFolderName: shouldDisplayFolderName),
    );
  }
}

class _Content extends StatelessWidget {
  final DocumentAttachmentItemViewModel vm;
  final bool shouldDisplayFolderName;

  const _Content({required this.vm, required this.shouldDisplayFolderName});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: vm.isSelected ? EnsColors.neutral200 : EnsColors.light,
      isSelected: vm.isSelected,
      onTap: () {
        vm.updateSelectedDocument();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EnsCheckbox(value: vm.isSelected, onChange: (_) => vm.updateSelectedDocument()),
            const SizedBox(width: 16),
            DocumentDetails(
              title: vm.document.title,
              date: vm.document.date,
              fullName: vm.document.proprietaire.fullName,
              categoryColor: vm.document.categorie.color,
              categoryLabel: vm.document.categorie.label,
              dossierName: vm.dossierName,
              shouldDisplayFolderName: shouldDisplayFolderName,
            ),
          ],
        ),
      ),
    );
  }
}

class DocumentDetails extends StatelessWidget {
  final String title;
  final DateTime date;
  final String fullName;
  final Color categoryColor;
  final String categoryLabel;
  final String? dossierName;
  final bool shouldDisplayFolderName;

  const DocumentDetails({
    required this.title,
    required this.date,
    required this.fullName,
    required this.categoryColor,
    required this.categoryLabel,
    required this.dossierName,
    required this.shouldDisplayFolderName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: EnsTextStyle.text16_w700_normal_title,
          ),
          Text(EnsDateUtils.formatddmmyyyy(date), style: EnsTextStyle.text14_w400_normal_body),
          Text('par ${fullName.capitalizeName()}', style: EnsTextStyle.text14_w400_normal_body),
          const SizedBox(height: 10),
          if (dossierName != null && shouldDisplayFolderName)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  const EnsSvg(EnsImages.ic_folder_filled, color: EnsColors.illustrative10, height: 16),
                  const SizedBox(width: 8),
                  Text(dossierName!, style: EnsTextStyle.text14_w400_normal_body),
                ],
              ),
            ),
          EnsEtiquette(label: categoryLabel, backgroundColor: categoryColor),
        ],
      ),
    );
  }
}
