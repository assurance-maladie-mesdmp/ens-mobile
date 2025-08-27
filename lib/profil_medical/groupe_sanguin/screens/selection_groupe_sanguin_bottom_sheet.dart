/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/viewModels/selection_groupe_sanguin_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum SelectionGroupeSanguinMode {
  AJOUT('Ajouter un groupe sanguin'),
  MODIFICATION('Modifier un groupe sanguin');

  final String title;

  const SelectionGroupeSanguinMode(this.title);
}

class SelectionGroupeSanguinBottomSheet extends StatefulWidget {
  final SelectionGroupeSanguinMode mode;

  const SelectionGroupeSanguinBottomSheet({super.key, required this.mode});

  @override
  State<SelectionGroupeSanguinBottomSheet> createState() => _SelectionGroupeSanguinBottomSheetState();
}

class _SelectionGroupeSanguinBottomSheetState extends State<SelectionGroupeSanguinBottomSheet> {
  GroupeSanguin? _selectedGroupeSanguin;
  bool _shouldDisplayError = false;
  final _shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, SelectionGroupeSanguinBottomSheetViewModel>(
      converter: (store) => SelectionGroupeSanguinBottomSheetViewModel.from(
        store,
      ),
      onInitialBuild: (vm) {
        context.tagAction(TagsGroupeSanguin.tag_2660_popin_ajouter_groupe_sanguin_page);
      },
      onDidChange: (oldVm, vm) {
        if (oldVm?.isLoading == true && !vm.isLoading) {
          Navigator.of(context).pop();
        }
      },
      builder: (context, vm) {
        return EnsBottomSheet(
          stretch: true,
          contentPadding: EdgeInsets.zero,
          content: [
            Text(
              widget.mode.title,
              style: EnsTextStyle.text24_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ShakeWidget(
              key: _shakeKey,
              child: Column(
                children: [
                  for (final groupeSanguin in GroupeSanguin.values) ...[
                    const Divider(color: EnsColors.neutral200),
                    EnsRadioButton(
                      label: groupeSanguin.label,
                      semanticsLabel: groupeSanguin.accessiblityLabel,
                      groupValue: _selectedGroupeSanguin,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      labelAlignment: CrossAxisAlignment.start,
                      value: groupeSanguin,
                      onSelected: () {
                        setState(() {
                          _selectedGroupeSanguin = groupeSanguin;
                          _shouldDisplayError = false;
                        });
                      },
                    ),
                  ],
                ],
              ),
            ),
            MergeSemantics(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (_shouldDisplayError) ...{
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 5),
                          child: EnsSvg(EnsImages.ic_warning, color: EnsColors.error, width: 20, height: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Sélectionner un groupe sanguin.',
                            style: EnsTextStyle.text14_w400_normal_error,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  } else ...{
                    const SizedBox(height: 10),
                  },
                  EnsButton(
                    isLoading: vm.isLoading,
                    paddingAround: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    label: 'Valider',
                    onTap: () {
                      final groupeSanguin = _selectedGroupeSanguin;
                      if (groupeSanguin == null) {
                        setState(() {
                          _shakeKey.currentState?.shake();
                          _shouldDisplayError = true;
                        });
                      } else {
                        context.tagAction(
                          switch (widget.mode) {
                            SelectionGroupeSanguinMode.AJOUT =>
                              TagsGroupeSanguin.tag_2661_popin_ajouter_groupe_sanguin_valider,
                            SelectionGroupeSanguinMode.MODIFICATION =>
                              TagsGroupeSanguin.tag_2665_button_modifier_groupe_sanguin_valider
                          },
                        );
                        vm.onValidate(groupeSanguin);
                      }
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        );
      },
    );
  }
}
