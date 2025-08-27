/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';

class PreventionLink extends StatelessWidget {
  final String? linkUrl;
  final String? linkName;
  final TextStyle style;

  const PreventionLink({
    this.linkUrl,
    this.linkName,
    this.style = EnsTextStyle.text14_w600_normal_primary_underline,
  });

  @override
  Widget build(BuildContext context) {
    final linkText = linkName ?? 'Voir les détails';
    if (linkUrl?.startsWith('http') ?? false) {
      return EnsExternalLink.withoutRedirection(linkText: linkText, linkTextStyle: style);
    } else {
      return Text(linkText, style: style);
    }
  }
}
