/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';

class MessagerieViewModelHelper {
  final MessagerieDateTimeFormatter messagerieDateTimeFormatter;

  MessagerieViewModelHelper(this.messagerieDateTimeFormatter);

  static const CURRENT_PATIENT_PERSONAL = '@Moi';

  String prepareEmailLabel(String actualEmailLabel, EnsProfil? profileData) {
    final replacement = profileData.nomComplet;
    if (actualEmailLabel.endsWith(CURRENT_PATIENT_PERSONAL) && replacement.isNotEmpty) {
      return actualEmailLabel.replaceAll(CURRENT_PATIENT_PERSONAL, replacement);
    }
    return actualEmailLabel;
  }

  String formatForMessagerie(DateTime date) => messagerieDateTimeFormatter.formatForMessagerie(date);
}
