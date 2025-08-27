/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class LogoOrSquare extends StatelessWidget {
  final EnsServiceImage? logo;

  const LogoOrSquare({this.logo});

  @override
  Widget build(BuildContext context) {
    return logo == null
        ? Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: EnsColors.neutral200),
          )
        : DecoratedBox(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.memory(base64Decode(logo!.file), width: 80, height: 80, excludeFromSemantics: true),
          );
  }
}
