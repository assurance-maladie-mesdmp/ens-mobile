/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/labels/detail_droits_acces_labels.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class DetailDroitsAccesViewModel extends Equatable {
  final ScreenStatus detailDroitAccesStatus;
  final DetailDroitsAccesLabels headerLabels;
  final List<EnsMatriceProfession> matriceProfessions;
  final void Function() reload;

  const DetailDroitsAccesViewModel._({
    required this.detailDroitAccesStatus,
    required this.headerLabels,
    required this.matriceProfessions,
    required this.reload,
  });

  factory DetailDroitsAccesViewModel.from(Store<EnsState> store) {
    final matriceProfessionState = store.state.matriceHabilitationState.matriceProfessionState;

    return DetailDroitsAccesViewModel._(
      detailDroitAccesStatus: ScreenStatus.getFromAllPurposesStatus(matriceProfessionState.status),
      headerLabels: store.state.userState.isMainProfile
          ? DetailDroitsAccesLabels.POUR_MOI
          : DetailDroitsAccesLabels.POUR_UN_TIERS,
      matriceProfessions: matriceProfessionState.status.isSuccess() ? matriceProfessionState.matriceProfessions : [],
      reload: () {
        store.dispatch(FetchMatriceProfessionsAction());
      },
    );
  }

  @override
  List<Object?> get props => [detailDroitAccesStatus, matriceProfessions, headerLabels];
}
