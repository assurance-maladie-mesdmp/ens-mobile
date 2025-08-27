/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';

class PsRoleBadge extends StatelessWidget {
  final PsRoleDisplayModel psRole;

  const PsRoleBadge(this.psRole);

  @override
  Widget build(BuildContext context) {
    return EnsEtiquette(
      label: psRole.label,
      backgroundColor: EnsColors.tertiary,
      textStyle: EnsTextStyle.text14_w600_normal_light,
    );
  }
}
