/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';

class DurationInfo extends StatelessWidget {
  final String duration;

  const DurationInfo(this.duration);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        const Text('Durée', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(duration, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
