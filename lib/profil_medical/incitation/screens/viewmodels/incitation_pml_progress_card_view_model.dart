/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class IncitationPmlProgressCardViewModel extends Equatable {
  final int totalStep;
  final int currentStep;

  bool get isVisible => currentStep > 0;

  const IncitationPmlProgressCardViewModel._({
    required this.totalStep,
    required this.currentStep,
  });

  factory IncitationPmlProgressCardViewModel.from(Store<EnsState> store, bool isRefonteEntourageEtVolontesEnabled) {
    final state = store.state;
    final mustCompletePerimetreCranien = UserSelectors.isCurrentProfileUnderFiveYears(state);
    final mustCompleteEntourageEtVolontes = ProfilsUtils.getCurrentProfilType(store.state).isAdult;
    final progressData = [
      IncitationPmlSelectors.isMesureCompleted(state, EnsMesureType.POIDS),
      IncitationPmlSelectors.isMesureCompleted(state, EnsMesureType.TAILLE),
      if (mustCompletePerimetreCranien)
        IncitationPmlSelectors.isMesureCompleted(state, EnsMesureType.PERIMETRE_CRANIEN),
      IncitationPmlSelectors.isAllergiesCompleted(state),
      IncitationPmlSelectors.isMaladiesCompleted(state),
      IncitationPmlSelectors.isTraitementsCompleted(state),
      if (isRefonteEntourageEtVolontesEnabled && mustCompleteEntourageEtVolontes) ...[
        IncitationPmlSelectors.isEntourageContactsCompleted(state),
        IncitationPmlSelectors.isDonOrganeCompleted(state),
      ],
    ];

    return IncitationPmlProgressCardViewModel._(
      currentStep: progressData.where((stepCompleted) => stepCompleted).length,
      totalStep: progressData.length,
    );
  }

  @override
  List<Object?> get props => [currentStep, totalStep];
}
