/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlBottomSheet extends StatelessWidget {
  final String onBoardedName;
  final bool isProfilPrincipal;
  final void Function() positiveButtonHandler;
  final void Function() negativeButtonHandler;
  final void Function()? closeButtonHandler;

  const IncitationPmlBottomSheet({
    super.key,
    required this.onBoardedName,
    required this.isProfilPrincipal,
    required this.positiveButtonHandler,
    required this.negativeButtonHandler,
    this.closeButtonHandler,
  });

  String _getWelcomeTitle(String mainFirstName, bool isProfilPrincipal) =>
      'Bienvenue ${isProfilPrincipal ? mainFirstName : 'sur le profil de $mainFirstName'}';

  String _getSubtitle(bool isProfilPrincipal) =>
      'Pour découvrir Mon espace santé, commencez dès maintenant à compléter ${isProfilPrincipal ? 'votre' : 'son'} profil médical avec quelques informations sur ${isProfilPrincipal ? 'votre' : 'sa'} santé.';

  String _getPositiveButtonLabel(bool isProfilPrincipal) =>
      'Compléter ${isProfilPrincipal ? 'mon' : 'son'} profil médical';

  @override
  Widget build(BuildContext context) {
    return EnsIllustrationBottomSheet(
      title: _getWelcomeTitle(onBoardedName, isProfilPrincipal),
      subtitle: _getSubtitle(isProfilPrincipal),
      positiveButtonLabel: _getPositiveButtonLabel(isProfilPrincipal),
      negativeButtonLabel: 'Accéder à Mon espace santé',
      negativeButtonHandler: negativeButtonHandler,
      positiveButtonHandler: positiveButtonHandler,
      closeButtonHandler: closeButtonHandler,
      asset: EnsImages.bienvenue,
    );
  }
}
