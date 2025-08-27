/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_mixin.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:intl/intl.dart';

class EnsInputDateMesure extends FormField<DateTime?> with EnsInputDateMixin {
  final ValueNotifier<DateTime> controller;
  final DateTime? firstDate;
  final DateTime lastDate;
  final bool startWithKeyboardInput;
  static final DateFormat _format = DateFormat('d MMMM y', EnsDateUtils.frenchLocale);

  EnsInputDateMesure({
    super.key,
    required BuildContext context,
    required this.controller,
    required this.firstDate,
    required this.lastDate,
    this.startWithKeyboardInput = false,
    super.enabled = false,
  }) : super(
          builder: (FormFieldState<DateTime?> state) {
            return EnsInkWell(
              onTap: enabled
                  ? () {
                      EnsInputDateMixin.selectDate(
                        context,
                        controller,
                        state,
                        firstDate,
                        lastDate,
                        startWithKeyboardInput,
                        initialValue: controller.value,
                      );
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    const Text('Date', style: EnsTextStyle.text16_w600_body),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _format.format(controller.value.toLocal()),
                        style: enabled ? EnsTextStyle.text16_w600_title : EnsTextStyle.text16_w600_body,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
}
