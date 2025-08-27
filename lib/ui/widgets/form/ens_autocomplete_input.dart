/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/search_ps/widgets/ens_suggestion_text_field.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_text_input_decoration.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsAutocompleteInput<T extends Object?> extends FormField<T> {
  final Map<EnsAutocompleteInputDataDisplayModel, T> data;
  final String label;
  final String hint;
  final String? info;
  final Widget? infoWidget;
  final ValueNotifier<T> controller;
  final TextEditingController displayedLabelController;
  final String? emptyErrorText;
  final BuildContext context;
  final FocusNode focusNode;
  final void Function()? onTap;
  final bool Function(String label, String selectionPattern) selector;
  final bool Function(String label, String selectionPattern) insertOnTop;
  final void Function(EnsAutocompleteInputDataDisplayModel)? onSuggestionSelected;
  final bool isSuccess;
  final String emptyStateWording;
  final bool isSelectionRequired;
  final int? maxCharacters;

  EnsAutocompleteInput({
    this.maxCharacters,
    required this.emptyStateWording,
    required this.data,
    required this.label,
    required this.hint,
    this.info,
    this.infoWidget,
    required this.controller,
    required this.displayedLabelController,
    this.emptyErrorText,
    required this.context,
    required this.focusNode,
    super.enabled,
    this.onTap,
    this.selector = _defaultSelector,
    this.insertOnTop = _defaultinsertOnTop,
    this.onSuggestionSelected,
    this.isSuccess = false,
    this.isSelectionRequired = true,
    required super.key,
  }) : super(
          validator: (_) {
            final valueToValidate = displayedLabelController.text;
            if (isSelectionRequired && valueToValidate.isEmpty) {
              focusNode.requestFocus();
              return emptyErrorText;
            }
            if (maxCharacters != null) {
              final limitValidation = limitCharactersFieldValidator(
                value: valueToValidate,
                maxCharacters: maxCharacters,
                errorMessage: 'Champ limité à $maxCharacters caractères',
              );
              if (limitValidation != null) return limitValidation;
            }
            return null;
          },
          initialValue: controller.value,
          builder: (FormFieldState<T> state) {
            final stateErrorText = state.errorText;
            final stateHasError = state.hasError && stateErrorText != null;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(label, style: EnsTextStyle.text16_w600_title, textAlign: TextAlign.start),
                if (info != null) ...[
                  const SizedBox(height: 4),
                  Text(info, style: EnsTextStyle.text14_w400_normal_body, textAlign: TextAlign.start),
                ],
                if (infoWidget != null) ...[
                  const SizedBox(height: 4),
                  infoWidget,
                ],
                const SizedBox(height: 4),
                if (stateHasError) EnsErrorText(text: stateErrorText),
                MergeSemantics(
                  child: EnsInkWell(
                    color: EnsColors.light,
                    focusColor: EnsColors.light,
                    child: EnsSuggestionTextField<EnsAutocompleteInputDataDisplayModel>(
                      textController: displayedLabelController,
                      maxLength: maxCharacters,
                      onTap: () {
                        onTap?.call();
                        if (key is GlobalKey) {
                          final context = key.currentContext;
                          if (context != null) {
                            Scrollable.ensureVisible(
                              context,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        }
                      },
                      enabled: enabled,
                      onChanged: (_) {
                        if (stateHasError) {
                          state.validate();
                        }
                      },
                      style: enabled ? EnsTextStyle.text16_w600_title : EnsTextStyle.text16_w600_body,
                      itemBuilder: (suggestion) {
                        return Ink(
                          padding: const EdgeInsets.all(8.0),
                          color: EnsColors.light,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                EnsRichText(
                                  text: TextSpan(
                                    children: suggestion.formattedLabel
                                        .map(
                                          (formattedElementLabel) => TextSpan(
                                            text: formattedElementLabel.partOfLabel,
                                            style: formattedElementLabel.highlighted
                                                ? EnsTextStyle.text16_w600_highlighted_title
                                                : EnsTextStyle.text16_w600_title,
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                                if (suggestion.description != null)
                                  Text(suggestion.description ?? '', style: EnsTextStyle.text14_w400_normal_body),
                              ],
                            ),
                          ),
                        );
                      },
                      inputDecoration: EnsTextInputDecoration(
                        enabled: enabled,
                        hasError: stateHasError,
                        hint: hint,
                        hintStyle: EnsTextStyle.text16_w400_normal_body,
                        isSuccess: isSuccess,
                      ),
                      onSuggestionSelected: (suggestion) {
                        T dataValue = data[suggestion] as T;
                        data.forEach((key, value) {
                          if (key.label == suggestion.label && key.description == suggestion.description) {
                            dataValue = value;
                          }
                        });
                        controller.value = dataValue;
                        displayedLabelController.text = suggestion.label;
                        if (onSuggestionSelected != null) {
                          onSuggestionSelected(suggestion);
                        }
                        state.didChange(dataValue);
                        state.validate();
                      },
                      emptyBuilder: (_) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(emptyStateWording, style: EnsTextStyle.text14_w400_normal_body),
                        );
                      },
                      displaySuggestions: (pattern) async {
                        final List<EnsAutocompleteInputDataDisplayModel> suggestions = [];
                        int indexOfTop = 0;
                        for (final info in data.keys) {
                          final cleanedLabel = info.label.replaceAllDiacriticsWithSameSize().toLowerCase();
                          final cleanedPattern = pattern.replaceAllDiacriticsWithSameSize().toLowerCase();
                          if (selector(cleanedLabel, cleanedPattern)) {
                            final highlightedSuggestion = EnsAutocompleteInputDataDisplayModel(
                              info.label,
                              info.description,
                              cleanedPatternToHighlight: cleanedPattern,
                            );
                            if (cleanedPattern.isNotEmpty && insertOnTop(cleanedLabel, cleanedPattern)) {
                              suggestions.insert(indexOfTop++, highlightedSuggestion);
                            } else {
                              suggestions.add(highlightedSuggestion);
                            }
                          }
                        }
                        return suggestions;
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        );

  @override
  FormFieldState<T> createState() => _EnsAutoCompleteInputState();

  static bool _defaultSelector(String cleanedLabel, String cleanedSelectionPattern) =>
      cleanedLabel.contains(cleanedSelectionPattern);

  static bool _defaultinsertOnTop(String label, String selectionPattern) => false;
}

class _EnsAutoCompleteInputState<T extends Object?> extends FormFieldState<T> {
  //ignore: avoid-returning-widgets
  EnsAutocompleteInput<T> get _autoCompleteField => super.widget as EnsAutocompleteInput<T>;

  @override
  void initState() {
    super.initState();
    _autoCompleteField.controller.addListener(_handleControllerChange);
  }

  @override
  void dispose() {
    _autoCompleteField.controller.removeListener(_handleControllerChange);
    super.dispose();
  }

  void _handleControllerChange() {
    didChange(_autoCompleteField.controller.value);
  }
}
