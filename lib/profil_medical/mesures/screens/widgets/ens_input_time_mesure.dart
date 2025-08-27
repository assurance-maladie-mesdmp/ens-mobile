/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_mixin.dart';

class EnsInputTimeMesure extends FormField<TimeOfDay?> with EnsInputTimeMixin {
  final ValueNotifier<TimeOfDay> controller;

  EnsInputTimeMesure({
    super.key,
    required BuildContext context,
    required this.controller,
    super.enabled = false,
  }) : super(
          builder: (FormFieldState<TimeOfDay?> state) {
            final localizations = MaterialLocalizations.of(context);
            return EnsInkWell(
              onTap: enabled
                  ? () {
                      EnsInputTimeMixin.selectTime(context, controller, state, controller.value);
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  children: [
                    const Text('Heure', style: EnsTextStyle.text16_w600_body),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        localizations.formatTimeOfDay(controller.value),
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
