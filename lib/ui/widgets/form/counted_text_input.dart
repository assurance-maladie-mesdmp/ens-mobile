/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:intl/intl.dart' show Intl;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore_for_file: dont_use_inkwell
class CountedTextInput extends FormField<String?> {
  final String label;
  final String hint;
  final String? description;
  final Widget? descriptionWidget;
  final TextEditingController controller;
  final String deniedRegExp;
  final MaskTextInputFormatter? mask;
  final int maxCharacters;
  final int maxLines;
  final TextInputAction textInputAction;
  final TextStyle labelStyle;
  final TextStyle hintStyle;
  final TextStyle descriptionStyle;
  final bool blockOnMaxCharacters;
  final bool transparentWhenDisabled;
  final TextStyle disabledTextStyle;
  final void Function()? onFocus;
  final FocusNode? focusNode;
  final void Function(String)? onTextDidChange;
  final void Function(String)? onTextSubmitted;
  final bool autofocus;
  final bool autovalidation;
  final CounterPosition? counterPosition;
  final TextInputType? keyboardType;
  final String? Function(String?)? validatorCallback;
  final bool displayCounter;
  final bool isSuccess;
  final void Function(String value, FormFieldState<String?> state)? validateCondition;
  final bool mustCountWhiteSpaces;
  final String? errorMsgToDisplay;
  final Widget? errorWidget;
  final TextCapitalization textCapitalization;

  CountedTextInput.withBorders({
    required this.label,
    this.hint = '',
    this.description,
    this.descriptionWidget,
    required this.controller,
    super.key,
    this.deniedRegExp = '',
    this.mask,
    this.validatorCallback,
    this.maxCharacters = 50,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.labelStyle = EnsTextStyle.text16_w600_normal_title,
    this.hintStyle = EnsTextStyle.text14_w400_normal_body,
    this.descriptionStyle = EnsTextStyle.text14_w400_normal_body,
    this.blockOnMaxCharacters = false,
    this.transparentWhenDisabled = false,
    this.autovalidation = false,
    super.enabled,
    this.disabledTextStyle = EnsTextStyle.text16_w600_body,
    this.onFocus,
    this.focusNode,
    this.onTextDidChange,
    this.onTextSubmitted,
    this.autofocus = false,
    this.counterPosition,
    this.keyboardType,
    this.displayCounter = true,
    this.isSuccess = false,
    this.validateCondition,
    this.mustCountWhiteSpaces = true,
    this.errorMsgToDisplay,
    this.errorWidget,
    this.textCapitalization = TextCapitalization.sentences,
  }) : super(
          validator: (_) {
            final valueToValidate = mustCountWhiteSpaces ? controller.text : controller.text.replaceAll(' ', '');
            final mainValidation = validatorCallback?.call(valueToValidate);
            if (mainValidation != null) return mainValidation;
            if (maxCharacters > 0) {
              final limitValidation = limitCharactersFieldValidator(
                value: valueToValidate,
                maxCharacters: maxCharacters,
                errorMessage: 'Champ limité à $maxCharacters caractères',
              );
              if (limitValidation != null) return limitValidation;
            }
            return noHtmlTagsValidator(valueToValidate);
          },
          initialValue: controller.text,
          autovalidateMode: autovalidation ? AutovalidateMode.always : AutovalidateMode.disabled,
          builder: (FormFieldState<String?> state) {
            final counterPositionNotNull =
                counterPosition ?? (maxLines > 1 ? CounterPosition.BOTTOM : CounterPosition.TOP);
            final int remainingCharacters = max(maxCharacters - (state.value?.length ?? 0), 0);
            final isOneLineField = maxLines == 1;
            final borderColor = state.hasError || errorMsgToDisplay != null
                ? EnsBorders.inputBorderError
                : isSuccess
                    ? EnsBorders.inputBorderSuccess
                    : EnsBorders.inputBorder;
            final textToCount = mustCountWhiteSpaces ? controller.text : controller.text.replaceAll(' ', '');
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(label, style: labelStyle, textAlign: TextAlign.start),
                          const SizedBox(height: 4),
                          if (description != null)
                            Semantics(
                              label: description.replaceAll(RegExp('(Ex.|ex.)'), 'Exemple'),
                              excludeSemantics: true,
                              child: Text(description, style: descriptionStyle),
                            ),
                          if (description != null) const SizedBox(height: 8),
                          if (descriptionWidget != null) descriptionWidget,
                          if (state.hasError && state.errorText!.isNotEmpty)
                            EnsErrorText(
                              text: state.errorText!,
                              padding: const EdgeInsets.only(top: 4),
                            ),
                          if (errorMsgToDisplay != null)
                            EnsErrorText(
                              text: errorMsgToDisplay,
                              padding: const EdgeInsets.symmetric(vertical: 4),
                            ),
                          if (errorWidget != null) errorWidget,
                        ],
                      ),
                    ),
                    if (displayCounter && maxCharacters != -1 && counterPositionNotNull == CounterPosition.TOP)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: MergeSemantics(
                          child: Semantics(
                            label: 'Limite de caractères: ${textToCount.length} sur $maxCharacters',
                            excludeSemantics: true,
                            child: Text(
                              '${textToCount.length}/$maxCharacters',
                              style: EnsTextStyle.text14_w400_normal_body,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Material(
                  color: enabled || transparentWhenDisabled ? EnsColors.light : EnsColors.disabled100,
                  child: InkWell(
                    excludeFromSemantics: true,
                    onFocusChange: (hasFocus) {
                      if (hasFocus) onFocus?.call();
                    },
                    onTap: enabled ? () {} : null,
                    focusColor: Colors.transparent,
                    child: TextFormField(
                      textCapitalization: textCapitalization,
                      keyboardType: keyboardType,
                      cursorColor: EnsColors.focus,
                      autofocus: autofocus,
                      enabled: enabled,
                      focusNode: focusNode,
                      maxLines: isOneLineField ? 2 : maxLines,
                      minLines: isOneLineField ? 1 : maxLines,
                      controller: controller,
                      maxLength: blockOnMaxCharacters ? maxCharacters : TextField.noMaxLength,
                      style: enabled || transparentWhenDisabled ? EnsTextStyle.text16_w600_title : disabledTextStyle,
                      inputFormatters: _getInputFormatters(
                        mask,
                        maxLines,
                        deniedRegExp,
                        textCapitalization == TextCapitalization.characters,
                      ),
                      onFieldSubmitted: (value) {
                        onTextSubmitted?.call(value);
                      },
                      onChanged: (value) async {
                        state.didChange(value);
                        if (validateCondition != null) {
                          validateCondition(value, state);
                        } else {
                          state.validate();
                        }
                        onTextDidChange?.call(value);
                        if (textToCount.length > maxCharacters && maxCharacters > 0) {
                          SemanticsService.announce(
                            'Limite de caractères dépassée: ${textToCount.length} sur $maxCharacters',
                            TextDirection.ltr,
                          );
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: enabled || transparentWhenDisabled ? EnsColors.light : EnsColors.disabled100,
                        filled: true,
                        contentPadding: const EdgeInsets.all(16),
                        counterText: '',
                        border: borderColor,
                        focusedBorder: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorderFocus,
                        enabledBorder: borderColor,
                        disabledBorder: transparentWhenDisabled ? borderColor : EnsBorders.inputBorderDisabled,
                        hintText: hint,
                        hintStyle: hintStyle,
                      ),
                      textInputAction: textInputAction,
                    ),
                  ),
                ),
                if (displayCounter && maxCharacters != -1 && counterPositionNotNull == CounterPosition.BOTTOM)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '$remainingCharacters ${Intl.plural(remainingCharacters, zero: 'caractère restant', one: 'caractère restant', other: 'caractères restants')}',
                      textAlign: TextAlign.right,
                      style: remainingCharacters > 0
                          ? EnsTextStyle.text14_w600_normal_body
                          : EnsTextStyle.text14_w600_normal_error,
                    ),
                  ),
              ],
            );
          },
        );

  static List<TextInputFormatter> _getInputFormatters(
    MaskTextInputFormatter? mask,
    int maxLines,
    String deniedRegExp,
    bool forceCaps,
  ) {
    final List<TextInputFormatter> firstFormatter = mask != null
        ? [mask]
        : maxLines == 7
            ? []
            : [FilteringTextInputFormatter.deny(RegExp(deniedRegExp))];
    if (forceCaps) firstFormatter.add(UpperCaseTextFormatter());
    return firstFormatter;
  }

  CountedTextInput.withoutBorders({
    required this.label,
    this.hint = '',
    this.description,
    this.descriptionWidget,
    required this.controller,
    super.key,
    this.deniedRegExp = '',
    this.mask,
    this.validatorCallback,
    this.maxCharacters = 50,
    this.maxLines = 1,
    this.autovalidation = false,
    this.textInputAction = TextInputAction.next,
    this.labelStyle = EnsTextStyle.text16_w600_title,
    this.hintStyle = EnsTextStyle.text14_w400_normal_body,
    this.descriptionStyle = EnsTextStyle.text14_w400_normal_body,
    this.blockOnMaxCharacters = false,
    super.enabled,
    this.disabledTextStyle = EnsTextStyle.text16_w600_body,
    this.onFocus,
    this.focusNode,
    this.onTextDidChange,
    this.onTextSubmitted,
    this.autofocus = false,
    this.transparentWhenDisabled = false,
    this.counterPosition,
    this.keyboardType,
    this.displayCounter = true,
    this.isSuccess = false,
    this.validateCondition,
    this.mustCountWhiteSpaces = true,
    this.errorMsgToDisplay,
    this.errorWidget,
    this.textCapitalization = TextCapitalization.sentences,
  }) : super(
          validator: (String? value) => validatorCallback?.call(value) ?? noHtmlTagsValidator(value),
          initialValue: controller.text,
          builder: (FormFieldState<String?> state) {
            final counterPositionNotNull =
                counterPosition ?? (maxLines > 1 ? CounterPosition.BOTTOM : CounterPosition.TOP);
            final int remainingCharacters = max(maxCharacters - (state.value?.length ?? 0), 0);
            final textToCount = mustCountWhiteSpaces ? controller.text : controller.text.replaceAll(' ', '');
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(label, style: labelStyle, textAlign: TextAlign.start),
                          const SizedBox(height: 4),
                          if (description != null) Text(description, style: descriptionStyle),
                        ],
                      ),
                    ),
                    if (maxCharacters != -1 && counterPositionNotNull == CounterPosition.TOP)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: MergeSemantics(
                          child: Semantics(
                            label: 'Limite de caractères: ${textToCount.length} sur $maxCharacters',
                            excludeSemantics: true,
                            child: Text(
                              '${textToCount.length}/$maxCharacters',
                              style: EnsTextStyle.text14_w600_normal_body,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                if (state.hasError && state.errorText!.isNotEmpty)
                  EnsErrorText(text: state.errorText!, padding: const EdgeInsets.only(bottom: 8)),
                MergeSemantics(
                  child: Material(
                    color: enabled || transparentWhenDisabled
                        ? state.hasError
                            ? EnsColors.error100
                            : EnsColors.light
                        : EnsColors.disabled100,
                    child: InkWell(
                      onFocusChange: (hasFocus) {
                        if (hasFocus) onFocus?.call();
                      },
                      onTap: enabled ? () {} : null,
                      focusColor: Colors.transparent,
                      child: Semantics(
                        textField: true,
                        label: controller.text.isEmpty
                            ? hint.replaceAll(RegExp('(Ex.|ex.)'), '. Exemple')
                            : controller.text,
                        excludeSemantics: true,
                        child: TextFormField(
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: keyboardType,
                          autofocus: autofocus,
                          enabled: enabled,
                          focusNode: focusNode,
                          maxLines: maxLines,
                          controller: controller,
                          maxLength: blockOnMaxCharacters ? maxCharacters : TextField.noMaxLength,
                          style:
                              enabled || transparentWhenDisabled ? EnsTextStyle.text16_w600_title : disabledTextStyle,
                          inputFormatters: _getInputFormatters(
                            mask,
                            maxLines,
                            deniedRegExp,
                            textCapitalization == TextCapitalization.characters,
                          ),
                          onFieldSubmitted: (value) {
                            onTextSubmitted?.call(value);
                          },
                          onChanged: (value) {
                            state.didChange(value);
                            if (validateCondition != null) {
                              validateCondition(value, state);
                            } else {
                              state.validate();
                            }
                            onTextDidChange?.call(value);
                          },
                          decoration: InputDecoration(
                            fillColor: EnsColors.light,
                            filled: true,
                            contentPadding: EdgeInsets.zero,
                            counterText: '',
                            border: EnsBorders.noBorder,
                            focusedBorder: EnsBorders.noBorder,
                            enabledBorder: EnsBorders.noBorder,
                            disabledBorder: EnsBorders.inputBorderDisabled,
                            hintText: hint,
                            hintStyle: hintStyle,
                          ),
                          textInputAction: textInputAction,
                        ),
                      ),
                    ),
                  ),
                ),
                if (maxCharacters != -1 && counterPositionNotNull == CounterPosition.BOTTOM)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '$remainingCharacters ${Intl.plural(remainingCharacters, zero: 'caractère restant', one: 'caractère restant', other: 'caractères restants')}',
                      textAlign: TextAlign.right,
                      style: remainingCharacters > 0
                          ? EnsTextStyle.text14_w600_normal_body
                          : EnsTextStyle.text14_w600_normal_error,
                    ),
                  ),
              ],
            );
          },
        );
}

enum CounterPosition { TOP, BOTTOM }

class TextInputConstraints extends Equatable {
  final String? regexp;
  final double? rangeMin;
  final double? rangeMax;
  final String errorMessage;

  const TextInputConstraints({this.regexp, this.rangeMin, this.rangeMax, required this.errorMessage});

  @override
  List<Object?> get props => [regexp, rangeMin, rangeMax, errorMessage];
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
