/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_serie_input_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validate_field_info_text.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnsNumeroSerieAvecPhotoInput extends FormField<String?> {
  final TextEditingController controller;
  final bool isNumSerieFromScan;
  final MaskTextInputFormatter mask;
  final void Function(String)? onTextDidChange;

  EnsNumeroSerieAvecPhotoInput({
    required this.controller,
    this.isNumSerieFromScan = false,
    required this.mask,
    this.onTextDidChange,
  }) : super(
          validator: (String? value) {
            return EnsNumeroSerieInputValidator(TypeCarteVitale.AVEC_PHOTO).validate(
              mask.getUnmaskedText(),
            );
          },
          autovalidateMode: AutovalidateMode.disabled,
          builder: (FormFieldState<String?> state) {
            const maxCharacters = EnsNumeroSerieInputValidator.NUMERO_SERIE_AVEC_PHOTO_LENGTH;
            final borderLeft = OutlineInputBorder(
              borderSide: BorderSide(
                color: state.hasError
                    ? EnsColors.error
                    : isNumSerieFromScan
                        ? EnsColors.success
                        : EnsColors.title,
                width: 1,
              ),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
            );
            final borderRight = OutlineInputBorder(
              borderSide: BorderSide(
                color: state.hasError
                    ? EnsColors.error
                    : isNumSerieFromScan
                        ? EnsColors.success
                        : EnsColors.title,
                width: 1,
              ),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
            );
            final borderRightFocus = OutlineInputBorder(
              borderSide: BorderSide(
                color: state.hasError ? EnsColors.error : EnsColors.focus,
                width: state.hasError ? 1 : 2,
              ),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
            );
            final textToCount = mask.getUnmaskedText();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Mon numéro de série',
                            style: EnsTextStyle.text16_w600_title,
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 4),
                          Semantics(
                            label: 'Exemple : 0102457612 4',
                            excludeSemantics: true,
                            child: const Text('Ex. : 0102457612 4', style: EnsTextStyle.text14_w400_normal_body),
                          ),
                          const SizedBox(height: 8),
                          if (state.hasError && state.errorText!.isNotEmpty)
                            EnsErrorText(
                              text: state.errorText!,
                              padding: const EdgeInsets.only(top: 4),
                            ),
                          if (isNumSerieFromScan) ValidateFieldInfoText(),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
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
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: '8025000002',
                        enabled: false,
                        style: EnsTextStyle.text16_w600_title,
                        decoration: InputDecoration(
                          fillColor: EnsColors.light,
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                          border: borderLeft,
                          enabledBorder: borderLeft,
                          disabledBorder: borderLeft,
                        ),
                      ),
                    ),
                    Expanded(
                      child: EnsInkWell(
                        excludeSemantics: true,
                        focusColor: Colors.transparent,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          cursorColor: EnsColors.focus,
                          autofocus: false,
                          enabled: true,
                          controller: controller,
                          style: EnsTextStyle.text16_w600_title,
                          inputFormatters: [mask],
                          onFieldSubmitted: (value) {
                            state.validate();
                          },
                          onChanged: (value) async {
                            onTextDidChange?.call(value);
                            state.didChange(value);
                            if (value.isNotEmpty) {
                              state.reset();
                            } else {
                              state.validate();
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: EnsColors.light,
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
                            counterText: '',
                            border: borderRight,
                            focusedBorder: borderRightFocus,
                            enabledBorder: borderRight,
                            disabledBorder: borderRight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
}
