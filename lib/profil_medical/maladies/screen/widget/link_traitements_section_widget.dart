/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/associer_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/edit_maladie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/traitement_card.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields_validator.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class LinkTraitementsSectionWidget extends StatelessWidget {
  final bool isUserTraitementsNotEmpty;
  final ValueNotifier<EnsDate?>? startDateController;
  final List<TraitementTemporaire> traitementsToCreateAndLink;
  final List<LinkedTraitementDisplayModel> linkedTraitementsFromExistingMES;
  final void Function(String) onRemoveLinkedTraitement;
  final void Function(TraitementTemporaire) removeTempTraitement;
  final void Function(List<LinkedTraitementDisplayModel>) onUpdateLinkedTraitementFromExistingMES;
  final void Function(TraitementTemporaire) addTraitementTemporaire;
  final void Function(String? errorText)? setErrorTextForDateField;

  const LinkTraitementsSectionWidget({
    this.startDateController,
    required this.isUserTraitementsNotEmpty,
    required this.traitementsToCreateAndLink,
    required this.linkedTraitementsFromExistingMES,
    required this.removeTempTraitement,
    required this.onRemoveLinkedTraitement,
    required this.onUpdateLinkedTraitementFromExistingMES,
    required this.addTraitementTemporaire,
    this.setErrorTextForDateField,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Traitements (facultatif)', style: EnsTextStyle.text16_w600_title),
        const SizedBox(height: 16),
        if (linkedTraitementsFromExistingMES.isNotEmpty || traitementsToCreateAndLink.isNotEmpty)
          Column(
            children: [
              ...linkedTraitementsFromExistingMES.map(
                (dm) => TraitementCard(
                  displayModel: TraitementCardDisplayModel(
                    name: dm.nom,
                    durationInfo: dm.dureeAffichable,
                  ),
                  onRemove: () {
                    onRemoveLinkedTraitement(dm.id);
                    context.tagAction(TagsMaladies.tag_689_button_retirer_maladie_traitement);
                  },
                ),
              ),
              ...traitementsToCreateAndLink.map(
                (traitement) => TraitementCard(
                  displayModel: TraitementCardDisplayModel(
                    name: traitement.name,
                    durationInfo: EditMaladieScreenViewModel.editingTraitementDateText(traitement),
                  ),
                  onRemove: () {
                    removeTempTraitement(traitement);
                    context.tagAction(TagsMaladies.tag_689_button_retirer_maladie_traitement);
                  },
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        MergeSemantics(
          child: EnsInkWell(
            onTap: () async {
              if (startDateController == null ||
                  (startDateController!.value != null &&
                      EnsDateInputFieldsValidator.determineYearValidityStatus(
                            EnsDate(year: startDateController!.value!.year),
                          ) ==
                          EnsDateValidityStatus.VALID)) {
                setErrorTextForDateField?.call(null);
                context.tagAction(TagsMaladies.tag_686_button_ajout_maladie_traitement);
                if (isUserTraitementsNotEmpty) {
                  _showBottomSheetAjoutTraitement(
                    context,
                    linkedTraitementsFromExistingMES.map((dm) => dm.id).toList(),
                    onUpdateLinkedTraitementFromExistingMES,
                    addTraitementTemporaire,
                  );
                } else {
                  final newTraitementTemporaire = await Navigator.pushNamed(
                    context,
                    EditTraitementScreen.routeName,
                    arguments: const EditTraitementScreenArguments(
                      launchMode: TraitementFormulaireMode.createTemporaryTraitement(),
                      fromIncitation: false,
                    ),
                  );
                  if (newTraitementTemporaire is TraitementTemporaire) {
                    addTraitementTemporaire(newTraitementTemporaire);
                  }
                }
              } else {
                setErrorTextForDateField?.call('Saisir au moins l\'année avant d\'ajouter un traitement');
              }
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Row(
                children: [
                  EnsSvg(EnsImages.ic_plus, width: 24, height: 24, color: EnsColors.primary),
                  SizedBox(width: 12),
                  Expanded(child: Text('Ajouter un traitement', style: EnsTextStyle.text16_w700_primary)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> _showBottomSheetAjoutTraitement(
  BuildContext context,
  List<String> linkedTraitementId,
  void Function(List<LinkedTraitementDisplayModel>) onUpdateLinkedTraitementFromExistingMES,
  void Function(TraitementTemporaire) addTraitementTemporaire,
) {
  context.tagAction(TagsMaladies.tag_1333_popin_ajouter_traitement_maladie);
  return DynamicActionBottomSheet.showOptionsBottomSheet(
    [
      BottomSheetAction(
        assetName: EnsImages.ic_plus,
        label: 'Ajouter un nouveau traitement',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        execution: () async {
          context.tagAction(TagsMaladies.tag_1334_button_ajouter_nouveau_traitement);
          final newTraitementTemporaire = await Navigator.pushNamed(
            context,
            EditTraitementScreen.routeName,
            arguments: const EditTraitementScreenArguments(
              launchMode: TraitementFormulaireMode.createTemporaryTraitement(),
              fromIncitation: false,
            ),
          );
          if (newTraitementTemporaire is TraitementTemporaire) {
            addTraitementTemporaire(newTraitementTemporaire);
          }
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_attachment,
        label: 'Associer un traitement déjà renseigné',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        execution: () async {
          context.tagAction(TagsMaladies.tag_1335_button_associer_traitement_renseigne);
          final linkedTraitementDisplayModel = await Navigator.pushNamed(
            context,
            AssocierTraitementScreen.routeName,
            arguments: AssocierTraitementScreenArguments(selectedTraitementIds: linkedTraitementId),
          ) as List<LinkedTraitementDisplayModel>?;
          if (linkedTraitementDisplayModel != null) {
            onUpdateLinkedTraitementFromExistingMES(linkedTraitementDisplayModel);
          }
        },
      ),
    ],
    context,
    title: 'Ajouter un traitement',
    titleStyle: EnsTextStyle.text24_w400_normal_title,
    closeButtonHandler: () => context.tagAction(TagsMaladies.tag_1336_button_ajouter_traitement_fermer),
  );
}
