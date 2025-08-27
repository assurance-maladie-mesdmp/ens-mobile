/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:intl/intl.dart';

class DocumentsListHeader extends StatelessWidget {
  final int count;
  final EdgeInsets padding;

  const DocumentsListHeader({
    super.key,
    required this.count,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        Intl.plural(
          count,
          one: '1 document',
          other: '$count documents',
        ),
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}
