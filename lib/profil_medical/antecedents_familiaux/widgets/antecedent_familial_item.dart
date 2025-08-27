/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_antecedents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AntecedentFamilialItem extends StatelessWidget {
  final EnsAntecedentFamilial antecedentFamilial;
  final void Function() onUpdate;
  final void Function() onDelete;
  final void Function()? onTap;

  const AntecedentFamilialItem({
    required this.antecedentFamilial,
    required this.onUpdate,
    required this.onDelete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        onTap?.call();
        _showSelectActionBottomSheet(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 20),
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
                    antecedentFamilial.name,
                    style: EnsTextStyle.text16_w700_normal_title,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    antecedentFamilial.familyRelationship.label,
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                  const SizedBox(height: 4),
                  if (antecedentFamilial.comment != null)
                    Semantics(
                      label: antecedentFamilial.comment,
                      child: ExcludeSemantics(
                        child: ExpandableText(
                          antecedentFamilial.comment!,
                          maxLines: 4,
                          animation: true,
                          linkStyle: EnsTextStyle.text14_w700_normal_title,
                          animationDuration: const Duration(milliseconds: 500),
                          animationCurve: Curves.easeInOut,
                          linkEllipsis: false,
                          expandText: 'Lire la suite',
                          collapseText: 'Masquer',
                          expandOnTextTap: true,
                          collapseOnTextTap: true,
                          linkColor: EnsColors.primary,
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                      ),
                    )
                  else
                    const SizedBox(height: 0),
                ],
              ),
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: EnsSvg(
                    EnsImages.ic_more_vertical,
                    height: 16,
                    width: 4,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool _showSelectActionBottomSheet(BuildContext context) {
    context.tagAction(TagsAntecedents.tag_244_popin_consulter_antecedent_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: onUpdate,
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: onDelete,
        ),
      ],
      context,
    );
    return true;
  }
}
