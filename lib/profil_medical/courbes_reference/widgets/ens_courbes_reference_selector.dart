/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/widgets/viewModels/ens_courbes_reference_selector_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsCourbesReferenceSelector extends StatelessWidget {
  final EnsMesureType mesureType;
  final void Function()? onButtonPressedCallback;

  const EnsCourbesReferenceSelector({required this.mesureType, this.onButtonPressedCallback});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EnsCourbesReferenceSelectorViewModel>(
      converter: (store) => EnsCourbesReferenceSelectorViewModel(store, mesureType),
      distinct: true,
      builder: (context, vm) => Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: true,
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white,
          title: const Text('Courbes de références', style: EnsTextStyle.text14_w700_normal_primary),
          iconColor: EnsColors.primary,
          collapsedIconColor: EnsColors.primary,
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _SelectorButton(
                  isLoading: vm.isCurveTypeLoading(TypeOfCurve.PRINCIPALE),
                  label: 'Principales',
                  backgroundColor: vm.isPrincipalButtonActive ? EnsColors.tertiary : EnsColors.light,
                  borderColor: EnsColors.tertiary,
                  onTap: () {
                    onButtonPressedCallback?.call();
                    vm.toggleDisplayStatusForCurvesOfType(TypeOfCurve.PRINCIPALE);
                    _tagAffichageMasquageCourbesReferenceButtonClick(
                      vm,
                      mesureType,
                      TypeOfCurve.PRINCIPALE,
                      vm.isPrincipalButtonActive,
                    );
                  },
                  textStyle: vm.isPrincipalButtonActive
                      ? EnsTextStyle.text12_w700_normal_light
                      : EnsTextStyle.text12_w700_tertiary,
                  splashColor: EnsColors.illustrative05,
                ),
                if (vm.shouldDisplayDetailedButton)
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: _SelectorButton(
                      isLoading: vm.isCurveTypeLoading(TypeOfCurve.SECONDAIRE),
                      label: 'Détaillées',
                      backgroundColor: vm.isDetailedButtonActive ? EnsColors.body : EnsColors.light,
                      borderColor: EnsColors.body,
                      onTap: () {
                        onButtonPressedCallback?.call();
                        vm.toggleDisplayStatusForCurvesOfType(TypeOfCurve.SECONDAIRE);
                        _tagAffichageMasquageCourbesReferenceButtonClick(
                          vm,
                          mesureType,
                          TypeOfCurve.SECONDAIRE,
                          vm.isDetailedButtonActive,
                        );
                      },
                      textStyle: vm.isDetailedButtonActive
                          ? EnsTextStyle.text12_w700_normal_light
                          : EnsTextStyle.text12_w700_normal_body,
                      splashColor: EnsColors.disabled100,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Courbes de croissance AFPA - Inserm/CRESS - CompuGroup Medical 2018',
              style: EnsTextStyle.text10_w400_italic_body,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  void _tagAffichageMasquageCourbesReferenceButtonClick(
    AnalyticsViewModel vm,
    EnsMesureType mesureType,
    TypeOfCurve typeOfCurve,
    bool isActive,
  ) {
    String tagName = 'button_';
    tagName += isActive ? 'masquer_' : 'afficher_';
    tagName += 'courbes_';
    tagName += typeOfCurve == TypeOfCurve.PRINCIPALE ? 'principales_' : 'détaillées_';

    switch (mesureType) {
      case EnsMesureType.POIDS:
        tagName += 'poids';
      case EnsMesureType.TAILLE:
        tagName += 'taille';
      case EnsMesureType.IMC:
        tagName += 'IMC';
      case EnsMesureType.PERIMETRE_CRANIEN:
        tagName += 'perimetre_cranien';
      default:
        break;
    }

    vm.tagAction(
      EnsTag(
        name: tagName,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: mesureType.tagHistoriqueLevel3,
      ),
    );
  }
}

class _SelectorButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color splashColor;
  final Color borderColor;
  final TextStyle textStyle;
  final bool isLoading;
  final Function() onTap;

  const _SelectorButton({
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.textStyle,
    required this.isLoading,
    required this.onTap,
    required this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: backgroundColor,
      splashColor: splashColor,
      borderRadius: BorderRadius.circular(40),
      onTap: isLoading ? null : onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(40),
          ),
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: CircularProgressIndicator(color: textStyle.color, strokeWidth: 2),
                  ),
                )
              : Text(label, style: textStyle, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
