/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class MesureInformationScreenViewModel extends Equatable {
  final bool isAdult;
  final String appBarLabel;

  const MesureInformationScreenViewModel._internal({required this.isAdult, required this.appBarLabel});

  factory MesureInformationScreenViewModel.from(Store<EnsState> store, EnsMesureType mesureType) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final isAdult = profilType.isAdult;
    return MesureInformationScreenViewModel._internal(
      isAdult: isAdult,
      appBarLabel:
          'En savoir plus sur ${_getArticleForMesure(mesureType)}${_getMesureTypeLabel(mesureType)} ${isAdult ? '' : 'de l\'enfant'}',
    );
  }

  static String _getMesureTypeLabel(EnsMesureType mesureType) {
    if (mesureType == EnsMesureType.HEMOGLOBINE_GLYQUEE) {
      return '${mesureType.label[0].toLowerCase()}${mesureType.label.substring(1)}';
    } else {
      return mesureType.label.toLowerCase();
    }
  }

  static String _getArticleForMesure(EnsMesureType mesureType) {
    if (mesureType == EnsMesureType.IMC || mesureType == EnsMesureType.HEMOGLOBINE_GLYQUEE) {
      return 'l\'';
    }
    if (mesureType.isLabelFeminin()) {
      return 'la ';
    }
    return 'le ';
  }

  @override
  List<Object?> get props => [isAdult, appBarLabel];
}
