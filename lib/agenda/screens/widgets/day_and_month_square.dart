/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class DayAndMonthSquare extends StatelessWidget {
  final DateTime date;

  const DayAndMonthSquare(this.date);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: EnsColors.info.withAlpha(OpacityUtils.getAlpha(0.15)),
            blurRadius: 16,
            spreadRadius: 2,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          width: 56,
          height: 56,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: EnsColors.gradient01,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    date.day.toString(),
                    style: EnsTextStyle.text20_w700_normal_light.copyWith(height: 1),
                  ),
                  Semantics(
                    hint: date.toExpliciteMonth(),
                    child: Text(
                      date.toShortMonth(),
                      style: EnsTextStyle.text12_w600_normal_light.copyWith(height: 1.2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
