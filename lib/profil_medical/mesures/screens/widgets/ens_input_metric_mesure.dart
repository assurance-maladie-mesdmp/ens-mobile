/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsInputMetricMesure extends FormField<String?> {
  final String label;
  final String hint;
  final TextEditingController controller;
  final int maxCharacters;
  final TextInputAction textInputAction;

  EnsInputMetricMesure({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    super.validator,
    this.maxCharacters = 50,
    this.textInputAction = TextInputAction.next,
    super.enabled,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.onUserInteraction,
  }) : super(
          initialValue: controller.text,
          builder: (FormFieldState<String?> state) {
            controller.addListener(() {
              if (controller.text != state.value) {
                state.didChange(controller.text);
              }
            });
            return _InputMetricMesure(
              enabled: enabled,
              label: label,
              hint: hint,
              state: state,
              maxCharacters: maxCharacters,
              controller: controller,
            );
          },
        );
}

class _InputMetricMesure extends StatefulWidget {
  final bool enabled;
  final String label;
  final String hint;
  final FormFieldState state;
  final int maxCharacters;
  final TextEditingController controller;

  const _InputMetricMesure({
    required this.enabled,
    required this.label,
    required this.hint,
    required this.state,
    required this.maxCharacters,
    required this.controller,
  });

  @override
  _InputMetricMesureState createState() => _InputMetricMesureState();
}

class _InputMetricMesureState extends State<_InputMetricMesure> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled;
    final label = widget.label;
    final hint = widget.hint;
    final state = widget.state;
    final maxCharacters = widget.maxCharacters;
    final controller = widget.controller;

    return EnsInkWell(
      color: EnsColors.light,
      focusColor: Colors.transparent,
      onTap: enabled
          ? () {
              _focusNode.requestFocus();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(label, style: EnsTextStyle.text16_w600_body)),
                Expanded(
                  child: TextField(
                    focusNode: _focusNode,
                    style: enabled
                        ? state.hasError
                            ? EnsTextStyle.text16_w700_normal_error
                            : EnsTextStyle.text16_w600_title
                        : EnsTextStyle.text16_w600_body,
                    autofocus: true,
                    controller: controller,
                    enabled: enabled,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    maxLength: maxCharacters,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintStyle: EnsTextStyle.text16_w600_body.copyWith(color: Colors.grey),
                      errorStyle: EnsTextStyle.text14_w600_normal_error,
                      errorMaxLines: 2,
                      hintText: hint,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: false,
                      counterText: '',
                    ),
                  ),
                ),
              ],
            ),
            if (state.errorText != null)
              Text(state.errorText!, style: EnsTextStyle.text14_w600_normal_error)
            else
              const SizedBox(height: 0),
          ],
        ),
      ),
    );
  }
}
