/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PieceAdministrativeItem extends StatelessWidget {
  final EnsDocument pieceAdministrative;
  final void Function() onDetails;
  final void Function() onOpen;
  final void Function() onDelete;
  final void Function() onDownload;
  final void Function() onEdit;

  const PieceAdministrativeItem({
    required this.pieceAdministrative,
    required this.onDetails,
    required this.onOpen,
    required this.onDelete,
    required this.onDownload,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () => _displayActionsBottomSheet(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    pieceAdministrative.title,
                    style: EnsTextStyle.text16_w700_normal_title,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${pieceAdministrative.date.day.toString().padLeft(2, '0')}/${pieceAdministrative.date.month.toString().padLeft(2, '0')}/${pieceAdministrative.date.year}',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: EnsSvg(EnsImages.ic_more_vertical, height: 16, width: 4, alignment: Alignment.centerRight),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _displayActionsBottomSheet(BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions() {
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: EnsImages.ic_show,
        label: 'Visualiser le document',
        execution: onOpen,
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_download,
        label: 'Télécharger',
        execution: onDownload,
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_text_align_left,
        label: 'Voir les détails',
        execution: onDetails,
      ),
    ];
    if (pieceAdministrative.updatable) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: onEdit,
        ),
      );
    }
    result.add(
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: onDelete,
      ),
    );
    return result;
  }
}
