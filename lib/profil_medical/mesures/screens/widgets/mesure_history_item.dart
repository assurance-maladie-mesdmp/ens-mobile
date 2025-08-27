/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/mesure_history_item_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_history_widget_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_mesures.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MesureHistoryItem extends StatelessWidget {
  final MesureHistoryWidgetDisplayModel mesureHistory;
  final EnsMesureType mesureType;
  final void Function() onDelete;

  const MesureHistoryItem({
    super.key,
    required this.mesureHistory,
    required this.mesureType,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MesureHistoryItemViewModel>(
      converter: (store) => MesureHistoryItemViewModel(store, mesureHistory, mesureType),
      distinct: true,
      builder: (context, vm) {
        return EnsInkWell(
          color: EnsColors.light,
          onTap: vm.canBeDeletedOrModified ? () => _displayActionsBottomSheet(vm, context) : null,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Semantics(
                  label: vm.formattedTitle,
                  child: ExcludeSemantics(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(vm.formattedValue, style: EnsTextStyle.text16_w700_normal_title),
                              const SizedBox(height: 8),
                              if (vm.typeOfChartCurrentlyDisplayed == TypeOfChart.DYNAMIQUE)
                                Text(
                                  vm.mesureHistory.formattedDate,
                                  style: EnsTextStyle.text14_w400_normal_body,
                                )
                              else
                                Text(
                                  '(${vm.mesureHistory.formattedDate}) (${vm.formattedAge})',
                                  style: EnsTextStyle.text14_w400_normal_body,
                                ),
                              if (vm.mesureHistory.formattedAuteur != null)
                                Text(vm.mesureHistory.formattedAuteur!, style: EnsTextStyle.text14_w400_normal_body),
                              if (vm.linkedDocumentInfo != null) ...[
                                const SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Transform.translate(
                                        offset: const Offset(0, -1),
                                        child: const EnsSvg(EnsImages.ic_shield),
                                      ),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: EnsRichText(
                                          text: TextSpan(
                                            text: 'Valeur (éventuellement convertie) extraite d’un document ',
                                            style: EnsTextStyle.text14_w400_normal_body,
                                            children: [
                                              TextSpan(
                                                text: vm.linkedDocumentInfo!.documentName,
                                                style: EnsTextStyle.text14_w700_normal_primary_underline,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              if (vm.mesureHistory.courbeReferenceText != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    vm.mesureHistory.courbeReferenceText!,
                                    style: EnsTextStyle.text14_w400_normal_body,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (vm.canBeDeletedOrModified)
                  const Positioned(
                    right: 4,
                    top: 4,
                    child: EnsSvg(EnsImages.ic_more_vertical, color: Colors.black, height: 16, width: 4),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _displayActionsBottomSheet(MesureHistoryItemViewModel vm, BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(vm, context),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(MesureHistoryItemViewModel vm, BuildContext context) {
    final List<BottomSheetAction> result = [];
    if (vm.linkedDocumentInfo != null) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_file_blank_outlined,
          label: 'Voir le document lié',
          execution: () {
            context.tagAction(TagMesures.tagButtonVoirDocumentLie(mesureType));
            InterruptionServiceHelper.showSnackbarOnInterruption(
              context,
              interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
              onNotInterrompu: () {
                vm.fetchDoc();
                Navigator.of(context).pushNamed(
                  DocumentPreviewScreen.routeName,
                  arguments: DocumentPreviewScreenArgument(
                    documentToDisplayId: vm.linkedDocumentInfo!.documentId,
                  ),
                );
              },
            );
          },
        ),
      );
    } else if (vm.mesureHistory.permissions.canBeModified) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            final tag = TagMesures.tagModifierValeurClick(mesureType);
            if (tag != null) {
              context.tagAction(tag);
            }
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext _) => EnsMesureFormBottomSheet(
                mesureType: mesureType,
                mesureToEditId: vm.mesureHistory.id,
                fromIncitation: false,
              ),
            );
          },
        ),
      );
    }
    if (vm.mesureHistory.permissions.canBeDeleted) {
      result.add(
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            final tag = TagMesures.tagSupprimerValeurClick(mesureType);
            if (tag != null) {
              context.tagAction(tag);
            }
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext builderContext) {
                return ConfirmationBottomSheet(
                  title: 'Supprimer cette valeur ?',
                  content:
                      const ConfirmationBottomSheetDefaultTextContent('Cette valeur sera supprimée définitivement.'),
                  positiveButtonLabel: 'Supprimer',
                  positiveButtonHandler: onDelete,
                );
              },
            );
          },
        ),
      );
    }
    return result;
  }
}
