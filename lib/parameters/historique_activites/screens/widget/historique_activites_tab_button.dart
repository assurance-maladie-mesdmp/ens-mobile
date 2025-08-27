/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class HistoriqueActivitesTabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final void Function() onTap;

  const HistoriqueActivitesTabButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      borderRadius: BorderRadius.circular(60),
      onTap: isSelected ? null : onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 48),
        decoration: BoxDecoration(
          gradient: isSelected ? EnsColors.gradient01 : null,
          borderRadius: BorderRadius.circular(60),
          border: isSelected ? null : Border.all(color: EnsColors.primary),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: isSelected ? EnsTextStyle.text14_w600_normal_light : EnsTextStyle.text14_w600_normal_primary,
            ),
          ],
        ),
      ),
    );
  }
}

enum HistoriqueActivitesTab {
  MES_PROFESSIONNELS,
  MES_ACTIVITES,
  MES_SERVICES_SYNCHRONISES;

  String getLabel(ProfilType profilType) {
    switch (this) {
      case HistoriqueActivitesTab.MES_PROFESSIONNELS:
        return 'Professionnels';
      case HistoriqueActivitesTab.MES_ACTIVITES:
        switch (profilType) {
          case ProfilType.PROFIL_PRINCIPAL:
          case ProfilType.AIDE:
            return 'Mes activités';
          case ProfilType.AYANT_DROIT:
            return 'Représentants légaux';
        }
      case HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES:
        return 'Services synchronisés';
    }
  }

  String get emptyTraces {
    switch (this) {
      case HistoriqueActivitesTab.MES_PROFESSIONNELS:
        return 'Aucune action n\'a été effectuée par un professionnel de santé';
      case HistoriqueActivitesTab.MES_ACTIVITES:
        return 'Vous n\'avez effectué aucune action';
      case HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES:
        return 'Aucune action n\'a été effectuée par un service synchronisé';
    }
  }
}
