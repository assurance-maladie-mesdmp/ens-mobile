/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:redux/redux.dart';

class MonHistoireDeSanteDetailViewModel extends Equatable {
  final ActeurDeSanteListStatus listStatus;
  final ProfessionnelDeSante? ps;
  final bool isPsPatientAdded;

  const MonHistoireDeSanteDetailViewModel._internal({
    required this.listStatus,
    this.ps,
    required this.isPsPatientAdded,
  }) : super();

  factory MonHistoireDeSanteDetailViewModel.from(
    Store<EnsState> store, {
    String? psId,
  }) {
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    ActeurDeSanteListStatus listStatus = ActeurDeSanteListStatus.LOADING;
    ProfessionnelDeSante? currentPs;
    bool isPsPatientAdded = false;

    if (psListState.status.isSuccess()) {
      if (psListState.professionnelsDeSante.isEmpty) {
        listStatus = ActeurDeSanteListStatus.EMPTY;
      } else {
        listStatus = ActeurDeSanteListStatus.LISTE_SUCCESS;
        for (final ps in psListState.professionnelsDeSante) {
          if (ps.nationalId == psId) {
            currentPs = ps;
            isPsPatientAdded = true;
          }
        }
      }
    } else if (psListState.status.isError()) {
      listStatus = ActeurDeSanteListStatus.ERROR;
    }

    return MonHistoireDeSanteDetailViewModel._internal(
      ps: currentPs,
      listStatus: listStatus,
      isPsPatientAdded: isPsPatientAdded,
    );
  }

  @override
  List<Object?> get props => [listStatus, ps, isPsPatientAdded];
}
