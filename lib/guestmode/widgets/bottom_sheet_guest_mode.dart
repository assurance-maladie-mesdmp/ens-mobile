/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';

void displayGuestModeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return const InformationBottomSheet(
        title: 'Mode démo',
        description: Center(
          child: Text(
            'Ceci est une version de démonstration de l’application Mon espace santé. Les informations affichées sont fictives. Connectez-vous pour accéder à vos données et profiter de toutes les fonctionnalités.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
        ),
      );
    },
  );
}

void displayGuestModeBottomSheetWithConnexion(BuildContext context, {Function()? onTapPositiveButton}) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Vous êtes sur le mode démo',
        content: const ConfirmationBottomSheetDefaultTextContent(
          'Ceci est une version de démonstration de l’application Mon espace santé.\n\nLes informations affichées sont fictives et vos actions ne seront pas enregistrées.\n\nConnectez-vous à votre espace pour accéder à vos données et profiter de toutes les fonctionnalités',
        ),
        positiveButtonLabel: 'Continuer',
        positiveButtonColor: EnsColors.primary,
        negativeButtonLabel: 'Connexion',
        positiveButtonHandler: onTapPositiveButton ?? () {},
        negativeButtonHandler: () {
          StoreProvider.of<EnsInitialState>(context).dispatch(LogoutAction(true));
        },
        setButtonsToVerySmallSize: true,
      );
    },
  );
}
