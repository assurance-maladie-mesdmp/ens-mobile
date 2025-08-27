/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:redux/redux.dart';

class MesuresCardViewModel extends Equatable {
  final bool isChecked;
  final bool isOd;

  const MesuresCardViewModel._internal({required this.isChecked, required this.isOd});

  factory MesuresCardViewModel.from(Store<EnsState> store, EnsMesureType mesureType) {
    return MesuresCardViewModel._internal(
      isChecked: store.state.mesuresState.mesureStatesByType[mesureType]?.mesure.lastValue != null,
      isOd: store.state.userState.isMainProfile,
    );
  }

  void tagsMesures(BuildContext context, EnsMesureType mesureType) {
    if (isChecked) {
      if (mesureType == EnsMesureType.POIDS) {
        context.tagAction(TagsIncitation.tag_906_button_modifier_poids);
      } else if (mesureType == EnsMesureType.TAILLE) {
        context.tagAction(TagsIncitation.tag_907_button_modifier_taille);
      }
    } else {
      if (mesureType == EnsMesureType.POIDS) {
        isOd
            ? context.tagAction(TagsIncitation.tag_870_button_carte_poids_od)
            : context.tagAction(TagsIncitation.tag_876_button_carte_poids_ad);
      } else if (mesureType == EnsMesureType.TAILLE) {
        isOd
            ? context.tagAction(TagsIncitation.tag_871_button_carte_taille_od)
            : context.tagAction(TagsIncitation.tag_877_button_carte_taille_ad);
      }
    }
  }

  @override
  List<Object?> get props => [isChecked, isOd];
}
