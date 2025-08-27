/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/screens/referentiel_professional_activities_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/search_ps/widgets/ps_activity_suggestion_form_field.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/commune_suggestion_form_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

class RecherchePsForm extends StatelessWidget {
  final RecherchePsScreenViewModel vm;
  final String headerText;
  final TextEditingController nameTextController;
  final TextEditingController firstnameTextController;
  final TextEditingController cityController;
  final TextEditingController professionalActivityTextController;
  final ValueNotifier<ReferentielItemDisplayModel?> professionalActivityController;
  final void Function() onFieldDidChange;
  final ValueNotifier<Commune?> cityResult;
  final bool hasError;
  final FocusNode searchPSNameFocus;
  final SuggestionsController<Commune> suggestionsController;

  const RecherchePsForm({
    required this.vm,
    required this.headerText,
    required this.nameTextController,
    required this.firstnameTextController,
    required this.professionalActivityTextController,
    required this.cityController,
    required this.professionalActivityController,
    required this.onFieldDidChange,
    required this.cityResult,
    required this.hasError,
    required this.searchPSNameFocus,
    required this.suggestionsController,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      converter: (store) => AnalyticsViewModel(store),
      distinct: true,
      builder: (_, __) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Focus(
            focusNode: searchPSNameFocus,
            child: Text(
              headerText,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          const SizedBox(height: 12),
          if (hasError)
            EnsPersistentInfoBox.error('Saisissez au moins un champ')
          else
            EnsPersistentInfoBox.text('Saisissez au moins un champ'),
          const SizedBox(height: 24),
          CountedTextInput.withBorders(
            enabled: vm.status.isNotLoading(),
            label: 'Nom',
            description: 'Ex. : Nguyen',
            controller: nameTextController,
            maxCharacters: 100,
            textInputAction: TextInputAction.newline,
            onTextDidChange: (_) {
              onFieldDidChange();
            },
          ),
          const SizedBox(height: 16),
          CountedTextInput.withBorders(
            enabled: vm.status.isNotLoading(),
            label: 'Prénom',
            description: 'Ex. : Thomas',
            controller: firstnameTextController,
            maxCharacters: -1,
            textInputAction: TextInputAction.newline,
            onTextDidChange: (_) {
              onFieldDidChange();
            },
          ),
          const SizedBox(height: 16),
          ReferentielSuggestionFormField(
            enabled: vm.status.isNotLoading(),
            textController: professionalActivityTextController,
            controller: professionalActivityController,
            onTap: onFieldDidChange,
          ),
          const SizedBox(height: 16),
          CommuneSuggestionFormField(
            suggestionsController: suggestionsController,
            enabled: vm.status.isNotLoading(),
            textController: cityController,
            onTap: onFieldDidChange,
            onCommuneSelected: (city) {
              cityResult.value = city;
            },
            context: context,
          ),
        ],
      ),
    );
  }
}
