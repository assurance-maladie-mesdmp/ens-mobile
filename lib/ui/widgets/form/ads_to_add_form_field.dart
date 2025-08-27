/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AdsToAddFormField extends FormField<List<AdToAddDisplayModel>> {
  final List<AdToAddDisplayModel> adsToAdd;
  final void Function(List<AdToAddDisplayModel>) adsSelectedCallback;

  AdsToAddFormField({
    required this.adsToAdd,
    required this.adsSelectedCallback,
  }) : super(
          validator: (adsSelected) {
            if (adsSelected == null || adsSelected.isEmpty) {
              return 'Selectionner au moins un profil à activer';
            }
            adsSelectedCallback(adsSelected);
            return null;
          },
          initialValue: [],
          builder: (field) {
            return Column(
              children: [
                if (field.hasError)
                  EnsErrorText(
                    text: field.errorText ?? '',
                    padding: const EdgeInsets.only(top: 4),
                  ),
                ...adsToAdd.map(
                  (ad) {
                    final adsSelected = field.value;
                    return _AdToAddCard(
                      adToAdd: ad,
                      isSelected: adsSelected != null && adsSelected.any((adSelected) => adSelected.id == ad.id),
                      onSelect: () => _handleSelect(
                        allAdsToAdd: adsToAdd,
                        adsSelected: adsSelected ?? [],
                        adToSelect: ad,
                        formFieldState: field,
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );

  static void _handleSelect({
    required List<AdToAddDisplayModel> allAdsToAdd,
    required List<AdToAddDisplayModel> adsSelected,
    required AdToAddDisplayModel adToSelect,
    required FormFieldState<List<AdToAddDisplayModel>> formFieldState,
  }) {
    final newAdsSelected = List<AdToAddDisplayModel>.from(adsSelected);
    newAdsSelected.removeWhere((newAdSelected) => !allAdsToAdd.any((adToAdd) => newAdSelected.id == adToAdd.id));

    if (adsSelected.any((adSelected) => adSelected.id == adToSelect.id)) {
      newAdsSelected.removeWhere((adSelected) => adSelected.id == adToSelect.id);
      formFieldState.didChange(newAdsSelected);
    } else {
      newAdsSelected.add(adToSelect);
      formFieldState.didChange(newAdsSelected);
      if (formFieldState.hasError) {
        formFieldState.validate();
      }
    }
  }
}

class _AdToAddCard extends StatelessWidget {
  final AdToAddDisplayModel adToAdd;
  final bool isSelected;
  final void Function() onSelect;

  const _AdToAddCard({
    required this.adToAdd,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: EnsCard(
          border: isSelected ? Border.all(color: EnsColors.primary, width: 2) : null,
          borderRadius: 16,
          padding: const EdgeInsets.all(16),
          onTap: () => onSelect(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EnsCheckbox(
                value: isSelected,
                onChange: (_) => onSelect(),
              ),
              const SizedBox(width: 16),
              Stack(
                alignment: Alignment.center,
                children: [
                  EnsSvg(EnsImages.ic_circle_filled, width: 40, height: 40, color: adToAdd.color),
                  const Center(
                    child: EnsSvg(EnsImages.ic_user, width: 24, height: 24),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      adToAdd.name,
                      style: EnsTextStyle.text16_w700_normal_title,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        EnsSvg(adToAdd.statusIcon, width: 16, height: 16),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            adToAdd.statusLabel,
                            style: EnsTextStyle.text14_w400_normal_body,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
