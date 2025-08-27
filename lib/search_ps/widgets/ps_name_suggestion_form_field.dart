/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/search_ps/widgets/ens_suggestion_text_field.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/ps_name_suggestion_form_field_view_model.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class PsNameSuggestionFormField extends FormField<ProfessionnelDeSante?> {
  final TextEditingController textController;
  final ValueNotifier<ProfessionnelDeSante?> controller;
  final void Function()? onTap;
  final void Function()? onChangeSelection;
  final void Function()? onTapOnAddPsIcon;

  PsNameSuggestionFormField({
    required this.textController,
    required this.controller,
    this.onTap,
    this.onChangeSelection,
    this.onTapOnAddPsIcon,
    super.enabled,
    super.validator,
    required BuildContext context,
  }) : super(
          key: Key(textController.text),
          builder: (FormFieldState<ProfessionnelDeSante?> state) {
            return StoreConnector<EnsState, PsNameSuggestionFormFieldViewModel>(
              converter: (store) => PsNameSuggestionFormFieldViewModel.from(store),
              distinct: true,
              onInit: (store) => store.dispatch(FetchProfessionnelsDeSanteAction()),
              onDidChange: (_, vm) {
                if (vm.selectedPs != null) {
                  textController.text = _formatPsName(vm.selectedPs!);
                  controller.value = vm.selectedPs;
                  state.didChange(vm.selectedPs);
                  onChangeSelection?.call();
                }
              },
              builder: (_, vm) => Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Nom du professionnel de santé', style: EnsTextStyle.text16_w600_title),
                      const SizedBox(height: 4),
                      const Text('Ex : NGUYEN', style: EnsTextStyle.text14_w400_normal_body),
                      const SizedBox(height: 4),
                      if (state.hasError && state.errorText!.isNotEmpty) EnsErrorText(text: state.errorText!),
                      Stack(
                        children: [
                          Focus(
                            child: EnsSuggestionTextField<ProfessionnelDeSante>(
                              textCapitalization: TextCapitalization.sentences,
                              textController: textController,
                              onTap: onTap,
                              enabled: enabled,
                              itemBuilder: (suggestion) {
                                return ListTile(
                                  contentPadding: const EdgeInsets.all(16),
                                  title: _ListTileItem(suggestion),
                                );
                              },
                              inputDecoration: InputDecoration(
                                fillColor: enabled ? EnsColors.light : Colors.transparent,
                                contentPadding: const EdgeInsets.all(16),
                                counterText: '',
                                filled: true,
                                border: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                                focusedBorder:
                                    state.hasError ? EnsBorders.inputBorderErrorThick : EnsBorders.inputBorderFocus,
                                enabledBorder: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                                disabledBorder: EnsBorders.inputBorderDisabled,
                                errorStyle: EnsTextStyle.text14_w600_normal_error,
                              ),
                              onSuggestionSelected: (suggestion) {
                                textController.text = _formatPsName(suggestion);
                                state.didChange(suggestion);
                                controller.value = suggestion;
                                onChangeSelection?.call();
                              },
                              displaySuggestions: (pattern) async {
                                if (pattern.length < 2) return [];

                                controller.value = null;
                                final lowerCasePattern = pattern.toLowerCase().replaceAll(' ', '');

                                final suggestions = vm.ps.where(
                                  (ps) {
                                    final formattedFirstNameLastName =
                                        '${ps.firstName.toLowerCase()}${ps.lastName.toLowerCase()}';
                                    final formattedLastNameFirstName =
                                        '${ps.lastName.toLowerCase()}${ps.firstName.toLowerCase()}';
                                    return formattedFirstNameLastName.contains(lowerCasePattern) ||
                                        formattedLastNameFirstName.contains(lowerCasePattern);
                                  },
                                ).sorted(
                                  (ps, b) => ps.firstName.toLowerCase().indexOf(lowerCasePattern),
                                );
                                return suggestions.length > 10 ? suggestions.sublist(0, 9) : suggestions;
                              },
                            ),
                            onFocusChange: (hasFocus) {
                              if (!hasFocus && state.value is! ProfessionnelDeSante) {
                                state.didChange(null);
                                onChangeSelection?.call();
                              }
                            },
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              color: EnsColors.error,
                              padding: const EdgeInsets.all(16),
                              icon: const EnsSvg(EnsImages.ic_user_pml_outlined, color: EnsColors.body),
                              tooltip: 'rechercher un professionnel de santé',
                              onPressed: () {
                                onTapOnAddPsIcon?.call();
                                Navigator.pushNamed(
                                  context,
                                  RecherchePsScreen.routeName,
                                  arguments:
                                      RecherchePsScreenArgument(psSearchType: RecherchePSType.SELECTION_AGENDA_PS),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
}

class _ListTileItem extends StatelessWidget {
  final ProfessionnelDeSante suggestion;

  const _ListTileItem(this.suggestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _formatPsName(suggestion),
          style: EnsTextStyle.text14_w600_normal_title,
        ),
        ...?suggestion.exercices?.map(
          (exercice) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(exercice.profession, style: EnsTextStyle.text12_w700_normal_body),
              if (exercice.specialites != null)
                Text(exercice.specialites ?? '', style: EnsTextStyle.text12_w400_normal_body),
            ],
          ),
        ),
      ],
    );
  }
}

String _formatPsName(ProfessionnelDeSante suggestion) {
  return '${suggestion.firstName.capitalizeName()} ${suggestion.lastName.capitalizeName()}';
}
