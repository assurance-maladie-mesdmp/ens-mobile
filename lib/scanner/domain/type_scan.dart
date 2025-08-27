/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum TypeScan {
  SCAN_BOITE_MEDICAMENT,
  SCAN_BOITE_VACCIN,
  SCAN_CARTE_VITALE_ENROLEMENT,
  SCAN_CARTE_VITALE_DELEGATION;

  bool isScanCarteVitale() => this == SCAN_CARTE_VITALE_DELEGATION || this == SCAN_CARTE_VITALE_ENROLEMENT;
}

enum TypeScanCarteVitaleDelegation {
  SCAN_CARTE_VITALE_AIDANT,
  SCAN_CARTE_VITALE_REPRESENTANT_LEGAL,
}
