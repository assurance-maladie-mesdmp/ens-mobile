/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/search_ps/widgets/ens_suggestion_text_field.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/commune_suggestion_form_field_view_model.dart';

class CommuneSuggestionFormField extends FormField<Commune> {
  final TextEditingController textController;
  final Function(Commune?) onCommuneSelected;
  final void Function()? onTap;
  final BuildContext context;
  final SuggestionsController<Commune> suggestionsController;

  CommuneSuggestionFormField({
    required this.textController,
    required this.onCommuneSelected,
    this.onTap,
    super.enabled,
    required this.context,
    required this.suggestionsController,
  }) : super(
          builder: (FormFieldState<Commune> state) {
            return StoreConnector<EnsState, CommuneSuggestionFormFieldViewModel>(
              converter: (store) => CommuneSuggestionFormFieldViewModel.from(store),
              onDidChange: (oldVm, vm) {
                suggestionsController.suggestions = vm.cities;
              },
              distinct: true,
              builder: (BuildContext context, CommuneSuggestionFormFieldViewModel vm) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Commune, code postal ou département', style: EnsTextStyle.text16_w600_title),
                  const SizedBox(height: 4),
                  const Text('Ex. : Moulins, 03000, 03, Allier', style: EnsTextStyle.text14_w400_normal_body),
                  const SizedBox(height: 4),
                  Focus(
                    child: EnsSuggestionTextField<Commune>(
                      suggestionsController: suggestionsController,
                      onTap: onTap,
                      textController: textController,
                      enabled: enabled,
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
                      ),
                      itemBuilder: (suggestion) {
                        return ListTile(
                          title: Text(suggestion.toString(), style: EnsTextStyle.text14_w600_normal_title),
                        );
                      },
                      onSuggestionSelected: (suggestion) {
                        textController.text = suggestion.toString();
                        state.didChange(suggestion);
                        onCommuneSelected(suggestion);
                      },
                      displaySuggestions: (pattern) async {
                        if (pattern.length < 2) return [];
                        vm.searchCommunes(pattern);
                        onCommuneSelected(null);
                        state.didChange(null);

                        return vm.cities;
                      },
                    ),
                    onFocusChange: (hasFocus) {
                      if (!hasFocus && state.value is! Commune) {
                        state.didChange(null);
                        textController.text = '';
                      }
                    },
                  ),
                  if (state.hasError)
                    MergeSemantics(
                      child: Semantics(
                        label: 'Erreur: ${state.errorText!}',
                        excludeSemantics: true,
                        child: Text(state.errorText!, style: EnsTextStyle.text14_w600_normal_error),
                      ),
                    ),
                ],
              ),
            );
          },
        );
}
