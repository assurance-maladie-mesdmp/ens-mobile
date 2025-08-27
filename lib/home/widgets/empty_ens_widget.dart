/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/empty_ens_widget_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EmptyEnsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: StoreConnector<EnsState, EmptyEnsWidgetViewModel>(
          converter: (store) => EmptyEnsWidgetViewModel(store),
          distinct: true,
          builder: (_, vm) => Column(
            children: [
              const SizedBox(height: 40),
              Text(
                'Vous avez la main sur ${vm.isMainProfile ? 'votre' : 'sa'} santé !',
                style: EnsTextStyle.text26_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 44),
              const EnsSvg(EnsImages.profil_medical, height: 80, width: 80),
              const SizedBox(height: 20),
              const Text('Profil Médical', style: EnsTextStyle.text22_w400_normal_title, textAlign: TextAlign.center),
              const SizedBox(height: 8),
              const Text(
                'Je renseigne mon profil médical et le partage avec ceux qui me soignent',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 44),
              const EnsSvg(EnsImages.documents_de_sante, height: 80, width: 80),
              const SizedBox(height: 20),
              const Text('Documents', style: EnsTextStyle.text22_w400_normal_title, textAlign: TextAlign.center),
              const SizedBox(height: 8),
              const Text(
                'Je stocke, je classe et je partage mes documents de santé',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 44),
              const EnsSvg(EnsImages.messagerie_de_sante, height: 80, width: 80),
              const SizedBox(height: 20),
              const Text('Messagerie', style: EnsTextStyle.text22_w400_normal_title, textAlign: TextAlign.center),
              const SizedBox(height: 8),
              const Text(
                'Je demande à mes professionnels de santé de m\'écrire en toute sécurité sur ma messagerie de santé',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
