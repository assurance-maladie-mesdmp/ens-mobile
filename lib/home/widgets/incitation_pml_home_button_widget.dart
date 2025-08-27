/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/widgets/bottom_sheet_guest_mode.dart';
import 'package:fr_cnamts_ens/home/widgets/home_button.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/incitation_home_button_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EmptyPmlHomeButton extends StatelessWidget {
  final IncitationPmlStatus incitationPmlStatus;

  const EmptyPmlHomeButton({super.key, required this.incitationPmlStatus});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationHomeButtonViewModel>(
      converter: (store) => IncitationHomeButtonViewModel.from(store, incitationPmlStatus),
      distinct: true,
      builder: (_, vm) => HomeButton(
        semanticLabel: vm.label,
        content: EnsRichText(
          text: TextSpan(
            text: vm.label,
            style: EnsTextStyle.text16_w700_normal_light,
          ),
        ),
        iconUri: EnsImages.bienvenue,
        color: EnsColors.primary,
        iconSize: 48,
        handler: () {
          vm.isProfilPrincipal
              ? context.tagAction(TagsHome.tag_862_button_completer_onboarding_profil_od)
              : context.tagAction(TagsHome.tag_863_button_completer_onboarding_profil_ad);
          navigateInApp(vm.targetRouteNameScreen);
        },
      ),
    );
  }
}

class FilledPmlHomeButton extends StatelessWidget {
  final IncitationPmlStatus incitationPmlStatus;

  const FilledPmlHomeButton({super.key, required this.incitationPmlStatus});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, IncitationHomeButtonViewModel>(
      converter: (store) => IncitationHomeButtonViewModel.from(store, incitationPmlStatus),
      distinct: true,
      builder: (_, vm) => HomeButton(
        semanticLabel: vm.label,
        content: EnsRichText(
          text: TextSpan(
            text: vm.label,
            style: EnsTextStyle.text16_w700_primary,
          ),
        ),
        iconUri: EnsImages.synthese_du_profil_medical,
        color: EnsColors.light,
        iconSize: 48,
        handler: () {
          if (EnsModuleContainer.currentInjector.isGuestMode()) {
            displayGuestModeBottomSheet(context);
          } else {
            context.tagAction(TagsHome.tag_652_button_voir_mon_profil_medical);
            Navigator.pushNamed(context, SynthesePmlScreen.routeName);
          }
        },
      ),
    );
  }
}
