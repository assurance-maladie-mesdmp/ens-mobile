/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/choose_ens_documents_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_detail_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_selection_items_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/dossier_item_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class DossierItem extends StatelessWidget {
  final ViewItemDossier dossierItem;
  final bool documentSelection;
  final bool enabled;
  final ChooseEnsDocumentScreenArgument? argument;
  final void Function()? onTap;
  final Color backgroundColor;
  final GlobalKey? keyNouveauDossier;

  const DossierItem({
    required this.dossierItem,
    this.documentSelection = false,
    this.enabled = true,
    this.argument,
    this.onTap,
    this.backgroundColor = EnsColors.light,
    this.keyNouveauDossier,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: enabled,
      label: 'Dossier ${dossierItem.title} contient ${dossierItem.numberOfFiles} documents',
      excludeSemantics: true,
      child: EnsInkWell(
        color: backgroundColor,
        onTap: enabled
            ? () {
                onTap?.call();
                Navigator.pushNamed(
                  context,
                  documentSelection ? DossierSelectionItemsScreen.routeName : DossierDetailScreen.routeName,
                  arguments: documentSelection && argument != null
                      ? DossierSelectionItemsScreenArgument(
                          dossierId: dossierItem.id,
                          isEmpty: dossierItem.numberOfFiles == 0,
                          argument: argument!,
                        )
                      : DossierDetailScreenArgument(dossierId: dossierItem.id),
                );
              }
            : null,
        child: Container(
          key: keyNouveauDossier,
          padding: const EdgeInsets.all(24),
          color: dossierItem.isNouvelItemToHighlight ? EnsColors.neutral200 : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: EnsSvg(
                  EnsImages.ic_folder_filled,
                  color: enabled ? EnsColors.illustrative10 : EnsColors.disabled500,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 50,
                child: Text(
                  dossierItem.title,
                  style: enabled ? EnsTextStyle.text16_w700_normal_title : EnsTextStyle.text16_w700_normal_disabled,
                ),
              ),
              const Spacer(),
              StoreConnector<EnsState, DossierItemViewModel>(
                converter: (store) => DossierItemViewModel.from(store, dossierItem.id),
                distinct: true,
                builder: (_, vm) => _NumberOfFilesCircleIndicator(
                  enabled: enabled,
                  value: dossierItem.numberOfFiles.toString(),
                  hasSelectedFiles: documentSelection && vm.hasSelectedDocuments,
                ),
              ),
              const SizedBox(width: 24),
              EnsSvg(
                EnsImages.ic_chevron_right,
                width: 8,
                height: 12,
                color: enabled ? EnsColors.title : EnsColors.disabled500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberOfFilesCircleIndicator extends StatelessWidget {
  final String value;
  final bool enabled;
  final bool hasSelectedFiles;

  const _NumberOfFilesCircleIndicator({required this.value, this.enabled = true, this.hasSelectedFiles = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: enabled ? EnsColors.neutral200 : EnsColors.disabled100,
          child: Text(value, style: EnsTextStyle.text16_w700_body),
        ),
        Visibility(
          visible: hasSelectedFiles,
          child: Container(
            decoration: BoxDecoration(
              color: EnsColors.primary,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white),
            ),
            width: 10,
            height: 10,
          ),
        ),
      ],
    );
  }
}
