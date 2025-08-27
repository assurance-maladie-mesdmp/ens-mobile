/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';

enum ProfilTypeText {
  POUR_MOI(
    header: 'Je retrouve ici toutes les informations dont j\'ai besoin pour m\'aider à améliorer ma santé.',
    hdvCard: 'Suivez vos habitudes de vie pour prendre soin de vous et de votre santé',
  ),
  POUR_UN_TIERS(
    header: 'Je retrouve ici toutes les informations dont j\'ai besoin pour l\'aider à améliorer sa santé.',
    hdvCard: 'Suivez ses habitudes de vie pour prendre soin de sa santé',
  );

  final String header;
  final String hdvCard;

  const ProfilTypeText({required this.header, required this.hdvCard});

  static ProfilTypeText fromProfilType(ProfilType profilType) {
    return switch (profilType) {
      ProfilType.PROFIL_PRINCIPAL => ProfilTypeText.POUR_MOI,
      ProfilType.AIDE || ProfilType.AYANT_DROIT => ProfilTypeText.POUR_UN_TIERS,
    };
  }
}
