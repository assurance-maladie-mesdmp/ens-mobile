/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum InterruptionServiceScreenName {
  AJOUT_PROFIL,
  NOUS_CONTACTER,
  DOCUMENTS,
  MESSAGERIE,
  ENTOURAGE,
  DIRECTIVES_ANTICIPEES,
  HISTORIQUE_ACTIVITE,
  CONFIDENTIALITE_DES_INFOS,
  MHS,
  VACCINATION;

  String get screenTitle {
    switch (this) {
      case InterruptionServiceScreenName.AJOUT_PROFIL:
        return 'L\'activation d\'un profil est indisponible';
      case InterruptionServiceScreenName.DOCUMENTS:
        return 'Documents est indisponible';
      case InterruptionServiceScreenName.MESSAGERIE:
        return 'Messagerie est indisponible';
      case InterruptionServiceScreenName.ENTOURAGE:
      case InterruptionServiceScreenName.DIRECTIVES_ANTICIPEES:
      case InterruptionServiceScreenName.HISTORIQUE_ACTIVITE:
      case InterruptionServiceScreenName.CONFIDENTIALITE_DES_INFOS:
      case InterruptionServiceScreenName.NOUS_CONTACTER:
        return 'Service indisponible';
      case InterruptionServiceScreenName.MHS:
        return 'Mon histoire de santé est indisponible';
      case InterruptionServiceScreenName.VACCINATION:
        return 'Vaccination est indisponible';
    }
  }

  String? get appBarTitle {
    switch (this) {
      case InterruptionServiceScreenName.DOCUMENTS:
      case InterruptionServiceScreenName.MESSAGERIE:
        return null;
      case InterruptionServiceScreenName.ENTOURAGE:
        return 'Entourage';
      case InterruptionServiceScreenName.DIRECTIVES_ANTICIPEES:
        return 'Directives anticipées';
      case InterruptionServiceScreenName.HISTORIQUE_ACTIVITE:
        return 'Historique d\'activité';
      case InterruptionServiceScreenName.CONFIDENTIALITE_DES_INFOS:
        return 'Confidentialité des informations';
      case InterruptionServiceScreenName.NOUS_CONTACTER:
        return 'Nous contacter';
      case InterruptionServiceScreenName.MHS:
        return 'Mon histoire de santé';
      case InterruptionServiceScreenName.VACCINATION:
        return 'Vaccination';
      case InterruptionServiceScreenName.AJOUT_PROFIL:
        return 'Ajouter un ou plusieurs profils';
    }
  }
}

class InterruptionServiceScreen extends StatelessWidget {
  final InterruptionServiceScreenName from;
  final String message;

  const InterruptionServiceScreen({required this.message, required this.from});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: from.appBarTitle != null ? EnsAppBarSubLevel(title: from.appBarTitle!) : null,
      body: EnsEmptyPage(
        customImagePath: EnsImages.stethoscope,
        title: from.screenTitle,
        description: message,
      ),
    );
  }
}
