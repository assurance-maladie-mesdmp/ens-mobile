/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RecommanderAppBottomSheet extends StatelessWidget {
  final void Function() positiveButtonHandler;
  final void Function() negativeButtonHandler;

  const RecommanderAppBottomSheet({
    required this.positiveButtonHandler,
    required this.negativeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return EnsIllustrationBottomSheet(
      title: 'J\'invite un proche à découvrir Mon espace santé',
      subtitle: 'Je peux envoyer un lien d\'invitation à un proche pour lui faire découvrir Mon espace santé.',
      positiveButtonLabel: 'Inviter un proche',
      negativeButtonLabel: 'Plus tard',
      asset: EnsImages.telephone_partager,
      positiveButtonHandler: positiveButtonHandler,
      negativeButtonHandler: negativeButtonHandler,
      closeButtonHandler: negativeButtonHandler,
    );
  }
}
