/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/screens/referentiel_professional_activities_view_model.dart';
import 'package:fr_cnamts_ens/search_ps/widgets/ens_suggestion_text_field.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class ReferentielSuggestionFormField extends FormField<ReferentielItemDisplayModel?> {
  final TextEditingController textController;
  final ValueNotifier<ReferentielItemDisplayModel?> controller;
  final void Function()? onTap;
  final String label;
  final bool withDescription;
  final bool isEditable;
  final void Function(bool hasFocus)? onFocusChange;

  static const int _maxCharactersForSuggestion = 10;

  ReferentielSuggestionFormField({
    required this.textController,
    required this.controller,
    this.onTap,
    this.label = 'Profession, spécialité',
    this.withDescription = true,
    this.isEditable = false,
    this.onFocusChange,
    super.enabled,
  }) : super(
          builder: (FormFieldState<ReferentielItemDisplayModel?> state) {
            return StoreConnector<EnsState, ReferentielProfessionalActivitiesViewModel>(
              converter: (store) => ReferentielProfessionalActivitiesViewModel.from(store),
              distinct: true,
              onInitialBuild: (vm) => vm.loadReferentiel(),
              builder: (_, vm) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: EnsTextStyle.text16_w600_title),
                  const SizedBox(height: 4),
                  if (withDescription)
                    const Text('Ex. : Médecine générale', style: EnsTextStyle.text14_w400_normal_body),
                  const SizedBox(height: 4),
                  Focus(
                    child: EnsSuggestionTextField<ReferentielItemDisplayModel>(
                      textController: textController,
                      onTap: onTap,
                      enabled: enabled,
                      itemBuilder: (suggestion) {
                        return ListTile(title: Text(suggestion.label, style: EnsTextStyle.text14_w600_normal_title));
                      },
                      inputDecoration: InputDecoration(
                        fillColor: state.hasError
                            ? EnsColors.error100
                            : enabled
                                ? EnsColors.light
                                : Colors.transparent,
                        contentPadding: const EdgeInsets.all(16),
                        counterText: '',
                        filled: true,
                        border: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                        focusedBorder: state.hasError ? EnsBorders.inputBorderErrorThick : EnsBorders.inputBorderFocus,
                        enabledBorder: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                        disabledBorder: EnsBorders.inputBorderDisabled,
                        errorStyle: EnsTextStyle.text14_w600_normal_error,
                        suffixIcon: textController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.cancel),
                                color: EnsColors.body,
                                tooltip: 'Effacer la saisie',
                                onPressed: () {
                                  textController.text = '';
                                  state.didChange(null);
                                },
                              )
                            : null,
                      ),
                      onSuggestionSelected: (item) {
                        textController.text = item.label;
                        state.didChange(item);
                        controller.value = item;
                        state.validate();
                      },
                      displaySuggestions: (pattern) async {
                        if (pattern.length < 2) return [];
                        controller.value = null;
                        state.didChange(null);
                        final cleanedPattern = pattern.replaceAllDiacritics().toLowerCase();
                        final suggestions = vm.referentielItems
                            .where(
                              (activity) =>
                                  activity.label.replaceAllDiacritics().toLowerCase().contains(cleanedPattern),
                            )
                            .sorted(
                              (a, b) => a.label
                                  .cleanForComparison()
                                  .indexOf(cleanedPattern)
                                  .compareTo(b.label.cleanForComparison().indexOf(cleanedPattern)),
                            );
                        return suggestions.length > _maxCharactersForSuggestion
                            ? suggestions.sublist(0, _maxCharactersForSuggestion - 1)
                            : suggestions;
                      },
                    ),
                    onFocusChange: (hasFocus) {
                      onFocusChange?.call(hasFocus);
                      if (!hasFocus && state.value is! ReferentielItemDisplayModel && !isEditable) {
                        state.didChange(null);
                        textController.text = '';
                      }
                    },
                  ),
                  if (state.hasError)
                    EnsErrorText(
                      text: state.errorText!,
                      padding: const EdgeInsets.only(top: 4),
                    ),
                ],
              ),
            );
          },
        );
}
