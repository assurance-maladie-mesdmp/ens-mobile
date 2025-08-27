/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/last_mesures_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_target_form_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_mesures.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class LastMesureHeader extends StatelessWidget {
  final LastMesureDisplayModel dm;
  final double expandedHeight;
  final double collapsedHeight;
  final Function()? onTargetDelete;

  const LastMesureHeader({
    required this.dm,
    this.onTargetDelete,
    required this.expandedHeight,
    required this.collapsedHeight,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: EnsIllustration(dm.type.getSvgForMesureCode())),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: EnsRichText(
                        text: TextSpan(
                          text: dm.formattedMetricValue,
                          children: [
                            TextSpan(text: dm.unit, style: EnsTextStyle.text16_w600_title),
                          ],
                          style: EnsTextStyle.text14_w700_normal_title.copyWith(
                            fontSize: _fontSizeFromConstraints(
                              context,
                              expandedHeight,
                              collapsedHeight,
                              constraints.maxHeight,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (dm.meanInfoForGlucose != null)
                EnsEtiquette(
                  label: 'Sur les ${dm.meanInfoForGlucose!} derniers jours',
                  backgroundColor: EnsColors.neutral300,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              const SizedBox(
                height: 8,
              ),
              Text(dm.formattedDate, style: EnsTextStyle.text16_w400_normal_body),
              if (dm.type.targetCanBeDefined)
                dm.formattedTargetedValue == null
                    ? _AddTargetValue(() {
                        context.tagAction(TagMesures.tag_button_ajout_objectif);
                        _displayForm(context);
                      })
                    : _CurrentTargetValue(
                        unit: dm.unit,
                        targetedValue: dm.formattedTargetedValue!,
                        onTap: () => _showOptionsBottomSheet(context),
                      ),
            ],
          ),
        );
      },
    );
  }

  double _fontSizeFromConstraints(BuildContext context, double maxHeight, double minHeight, double currentHeight) {
    TextScaleUtils.getTextScaleFactor(context);
    final scale = TextScaleUtils.getTextScaleFactor(context);
    const double minFontSize = 32;
    final double maxFontSize = scale <= 1.5 ? 64 : 32;

    if (currentHeight < minHeight) {
      return minFontSize;
    } else if (currentHeight > maxHeight) {
      return maxFontSize;
    }

    final double ratio = (currentHeight - minHeight) / (maxHeight - minHeight);
    return minFontSize + ratio * (maxFontSize - minFontSize);
  }

  void _displayForm(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext _) => EnsMesureTargetFormBottomSheet(mesureType: dm.type),
    );
  }

  void _showOptionsBottomSheet(BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(TagMesures.tag_button_modifier_objectif);
            _displayForm(context);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            _showDeleteConfirmationBottomSheet(context);
          },
        ),
      ],
      context,
    );
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer l’objectif ?',
          content: const ConfirmationBottomSheetDefaultTextContent('L’objectif sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagMesures.tag_button_supprimer_objectif);
            onTargetDelete?.call();
          },
        );
      },
    );
  }
}

class _AddTargetValue extends StatelessWidget {
  final Function() onTap;

  const _AddTargetValue(this.onTap);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: EnsCard(
          backgroundColor: EnsColors.light,
          borderRadius: 16,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          onTap: onTap,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'En concertation avec mon médecin, je peux fixer un objectif.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EnsSvg(EnsImages.ic_plus, height: 24, width: 24, color: EnsColors.primary),
                  SizedBox(width: 8),
                  Expanded(child: Text('Ajouter un objectif', style: EnsTextStyle.text14_w700_normal_primary)),
                ],
              ),
            ],
          ),
        ),
      );
}

class _CurrentTargetValue extends StatelessWidget {
  final String targetedValue;
  final String unit;
  final Function() onTap;

  const _CurrentTargetValue({required this.targetedValue, required this.unit, required this.onTap});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: EnsCard(
          backgroundColor: EnsColors.light,
          borderRadius: 16,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EnsRichText(
                text: TextSpan(
                  text: 'Objectif fixé avec mon médecin : ',
                  children: [
                    TextSpan(
                      text: '$targetedValue $unit',
                      style: EnsTextStyle.text16_w700_normal_title,
                    ),
                  ],
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              const SizedBox(height: 8),
              const Text('Gérer mon objectif', style: EnsTextStyle.text14_w700_normal_primary),
            ],
          ),
        ),
      );
}
