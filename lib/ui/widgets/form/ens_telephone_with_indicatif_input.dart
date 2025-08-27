/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_telephone_with_indicatif_input_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnsTelephoneWithIndicatifInput extends FormField<String?> {
  final BuildContext context;
  final TextEditingController numberController;
  final ValueNotifier<Indicatif> indicatifController;
  final bool isRequired;

  EnsTelephoneWithIndicatifInput({
    required this.context,
    required this.numberController,
    required this.indicatifController,
    this.isRequired = true,
    super.key,
  }) : super(
          validator: (_) => EnsTelephoneWithIndicatifInputValidator(
            indicatif: indicatifController.value,
            isRequired: isRequired,
          ).validate(numberController.text),
          builder: (FormFieldState<String?> state) {
            final mask = MaskTextInputFormatter(
              initialText: numberController.text,
              mask: indicatifController.value == Indicatif.PLUS_33
                  ? numberController.text.startsWith('0')
                      ? indicatifController.value.mask
                      : indicatifController.value.secondMask
                  : indicatifController.value.mask,
              filter: {'#': RegExp('[0-9]')},
            );
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Numéro de téléphone mobile', style: EnsTextStyle.text14_w600_normal_title),
                if (state.hasError)
                  EnsErrorText(
                    text: state.errorText!,
                    padding: const EdgeInsets.only(top: 4),
                  ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicWidth(
                      child: EnsDropDown(
                        context: context,
                        borderRadius:
                            const BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
                        controller: indicatifController,
                        hint: '',
                        items: Indicatif.values,
                        itemFormater: (Indicatif? indicatif) => indicatif != null ? indicatif.label : '',
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: mask.maskText(numberController.text),
                        style: EnsTextStyle.text16_w600_title,
                        autofocus: true,
                        maxLength: 14,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [mask],
                        onChanged: (value) {
                          final unmaskedPhone = mask.getUnmaskedText();
                          state.didChange(unmaskedPhone);
                          numberController.text = unmaskedPhone;
                        },
                        decoration: InputDecoration(
                          focusColor: Colors.red,
                          filled: true,
                          fillColor: EnsColors.light,
                          border: EnsBorders.buildBorder(
                            color: state.hasError ? EnsColors.error : EnsColors.title,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          focusedBorder: EnsBorders.buildBorder(
                            width: 2,
                            color: state.hasError ? EnsColors.error : EnsColors.primary,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          enabledBorder: EnsBorders.buildBorder(
                            color: state.hasError ? EnsColors.error : EnsColors.title,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          hintStyle: EnsTextStyle.text16_w600_body,
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
