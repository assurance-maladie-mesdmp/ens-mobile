/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/ens_identifiant_input_view_model.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class EnsIdentifiantInput extends StatelessWidget {
  final TextEditingController identifiantController;
  final GlobalKey<FormFieldState> identifiantKey;
  final String? numeroSecu;

  const EnsIdentifiantInput({
    required this.identifiantController,
    required this.identifiantKey,
    required this.numeroSecu,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, EnsIdentifiantInputViewModel>(
      converter: (store) => EnsIdentifiantInputViewModel.from(store),
      onDidChange: (oldVm, vm) {
        if (oldVm?.disponibiliteIdentifiant != vm.disponibiliteIdentifiant) {
          identifiantKey.currentState?.validate();
        }
      },
      distinct: true,
      builder: (_, vm) {
        final isSuccess = vm.disponibiliteIdentifiant.isDisponible ?? false;
        return Focus(
          child: CountedTextInput.withBorders(
            label: 'Choisir mon identifiant',
            description: 'L’identifiant doit contenir 8 caractères minimum.',
            controller: identifiantController,
            key: identifiantKey,
            textCapitalization: TextCapitalization.none,
            validatorCallback: (value) => vm.validator.validate(value),
            errorWidget: vm.disponibiliteIdentifiant.suggestions.isNotEmpty
                ? _Suggestions(identifiantController: identifiantController, vm: vm)
                : null,
            validateCondition: (value, state) {
              if (vm.validator.hasCaracteresInterdits(value)) {
                state.validate();
              } else {
                state.reset();
              }
            },
            displayCounter: false,
            isSuccess: isSuccess,
            maxCharacters: 100,
          ),
          onFocusChange: (hasFocus) {
            if (!hasFocus) {
              identifiantKey.currentState?.validate();
              if (isSuggestionsIdentifiantsEnabled) {
                vm.checkIdentifiant(identifiantController.text);
              }
            }
          },
        );
      },
    );
  }
}

class _Suggestions extends StatelessWidget {
  const _Suggestions({required this.identifiantController, required this.vm});

  final EnsIdentifiantInputViewModel vm;
  final TextEditingController identifiantController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Wrap(
        runAlignment: WrapAlignment.start,
        children: [
          ...vm.disponibiliteIdentifiant.suggestions.map(
            (suggestion) => EnsLinkText(
              alignment: null, // la valeur null permet de garder le wrapping horizontal
              label: suggestion,
              textPadding: const EdgeInsets.all(8),
              onTap: () {
                identifiantController.text = suggestion;
                context.tagInitialAction(TagsEnrolement.tag_2653_button_suggestion_identifiant);
                vm.clearSuggestions();
              },
            ),
          ),
        ],
      ),
    );
  }
}
