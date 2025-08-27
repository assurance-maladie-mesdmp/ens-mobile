/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class MesureIcon extends StatelessWidget {
  final EnsMesureType _mesureType;
  final double height;
  final double width;

  const MesureIcon(
    this._mesureType, {
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return EnsSvg(_mesureType.getSvgForMesureCode(), height: height, width: width);
  }
}
