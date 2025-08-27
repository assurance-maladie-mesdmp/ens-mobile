/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_outlined_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ScanButton extends StatelessWidget {
  final TypeScan typeScan;
  final EdgeInsets padding;
  final void Function()? onTap;

  const ScanButton({
    required this.typeScan,
    this.padding = const EdgeInsets.only(top: 40, bottom: 24),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: EnsOutlinedButton(
        label: _getButtonLabel(typeScan),
        icon: EnsSvg(_getImagePath(typeScan)),
        crossAxisAlignment: CrossAxisAlignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        onTap: onTap,
      ),
    );
  }

  String _getButtonLabel(TypeScan typeScan) {
    return switch (typeScan) {
      TypeScan.SCAN_BOITE_VACCIN => 'Scanner ma boîte de vaccin',
      TypeScan.SCAN_BOITE_MEDICAMENT => 'Scanner ma boîte de médicament',
      TypeScan.SCAN_CARTE_VITALE_ENROLEMENT => 'Scanner ma carte Vitale',
      TypeScan.SCAN_CARTE_VITALE_DELEGATION => 'Scanner sa carte Vitale',
    };
  }

  String _getImagePath(TypeScan typeScan) {
    return switch (typeScan) {
      TypeScan.SCAN_BOITE_VACCIN || TypeScan.SCAN_BOITE_MEDICAMENT => EnsImages.ic_datamatrix,
      TypeScan.SCAN_CARTE_VITALE_ENROLEMENT || TypeScan.SCAN_CARTE_VITALE_DELEGATION => EnsImages.ic_carte_vitale,
    };
  }
}
