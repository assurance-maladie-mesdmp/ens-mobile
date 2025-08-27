/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/widgets/viewmodels/message_synthese_pml_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_pml.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_card.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MessageSynthesePmlWidget extends StatelessWidget {
  const MessageSynthesePmlWidget();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MessageSynthesePmlViewModel>(
      onInitialBuild: (vm) => vm.getRecommandation,
      distinct: true,
      converter: (store) => MessageSynthesePmlViewModel.from(store),
      builder: (context, vm) {
        switch (vm.incitationPmlStatus) {
          case IncitationPmlStatus.INCITER_COMPLETER_PML:
            return Container();
          case IncitationPmlStatus.INCITER_ENREGISTRER_SYNTHESE_PML:
          case IncitationPmlStatus.SYNTHESE_ENREGISTRER:
            if (vm.isIncitationCompleted) {
              return const SynthesePmlCard(isDetailPartageVisible: true);
            } else {
              return const SynthesePmlCard();
            }
          case IncitationPmlStatus.INCITER_RAFRAICHIR_SYNTHESE_PML:
            if (vm.isIncitationCompleted) {
              return const SynthesePmlCard(isDetailUpdateVisible: true);
            } else {
              return const SynthesePmlCard();
            }
        }
      },
    );
  }
}

class SynthesePmlCard extends StatelessWidget {
  final bool isDetailPartageVisible;
  final bool isDetailUpdateVisible;

  const SynthesePmlCard({this.isDetailPartageVisible = false, this.isDetailUpdateVisible = false});

  @override
  Widget build(BuildContext context) {
    return EnsInformationCard(
      image: EnsImages.synthese_du_profil_medical,
      onTap: () {
        GuestModeHelper.showGuestModeBottomSheetIfGuestModeOrUseCallback(
          context: context,
          onAuthenticatedMode: () {
            Navigator.pushNamed(context, SynthesePmlScreen.routeName);
            context.tagAction(TagsPml.tag_177_button_visualiser_synthese);
          },
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isDetailPartageVisible && !isDetailUpdateVisible)
            const Text('Synthèse du profil médical ', style: EnsTextStyle.text14_w600_normal_title),
          Visibility(
            visible: isDetailPartageVisible || isDetailUpdateVisible,
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                isDetailPartageVisible
                    ? 'J\'enregistre ma synthèse médicale pour la partager à mes professionnels de santé.'
                    : 'J\'améliore le suivi de ma santé en mettant à jour la synthèse de mon profil médical.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
          ),
          Text(
            isDetailUpdateVisible
                ? 'Mettre à jour la synthèse'
                : isDetailPartageVisible
                    ? 'Enregistrer ma synthèse'
                    : 'Voir la synthèse',
            style: EnsTextStyle.text14_w700_normal_primary_underline,
          ),
        ],
      ),
    );
  }
}
