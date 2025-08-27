/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EmptyMesure extends StatelessWidget {
  final EmptyMesureDisplayModel dm;
  final void Function()? addCallback;

  const EmptyMesure(this.dm, {super.key, this.addCallback});

  @override
  Widget build(BuildContext context) {
    return DisappearingIllustrationPage(
      asset: EnsImages.empty_state_ajout,
      children: [
        Text(
          dm.title,
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          dm.subtitle,
          style: EnsTextStyle.text16_w400_normal_body,
          textAlign: TextAlign.center,
        ),
        ...addCallback != null
            ? [
                const SizedBox(height: 36),
                SizedBox(
                  width: double.infinity,
                  child: EnsButton(label: 'Ajouter une valeur', onTap: addCallback!),
                ),
              ]
            : [],
      ],
    );
  }
}

class EmptyMesureDisplayModel extends Equatable {
  final String title;
  final String subtitle;

  const EmptyMesureDisplayModel._({required this.title, required this.subtitle});

  factory EmptyMesureDisplayModel.from(EnsState store, EnsMesure mesure) {
    final label = mesure.type.shouldLowercaseLabelForTitle() ? mesure.label.toLowerCase() : mesure.label;
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store).isProfilPrincipal;
    final prefixedLabelOD = '${mesure.type.isLabelFeminin() ? 'ma' : 'mon'} $label';
    final prefixedLabelAD = '${mesure.type.isLabelFeminin() ? 'sa' : 'son'} $label';
    final title = (mesure.type == EnsMesureType.IMC)
        ? '$label (IMC)'
        : 'J\'ajoute ${isProfilPrincipal ? prefixedLabelOD : prefixedLabelAD}';
    final subtitle = mesure.type.customSubtitle(mesure.type, isProfilPrincipal) ?? 'Pour surveiller ses variations.';

    return EmptyMesureDisplayModel._(title: title, subtitle: subtitle);
  }

  @override
  List<Object?> get props => [title, subtitle];
}
