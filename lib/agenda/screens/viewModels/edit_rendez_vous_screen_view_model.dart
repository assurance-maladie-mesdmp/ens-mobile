/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class EditRendezVousScreenViewModel extends Equatable {
  final RendezVousEditStatus editStatus;
  final void Function({
    String? id,
    required String title,
    required DateTime date,
    required bool isPs,
    required String profesionnelOrEtablissementName,
    required String profesionnelOrEtablissementSpeciality,
    required String note,
    String? address,
    required String? idActeurSante,
  }) addOrUpdateRendezVous;

  const EditRendezVousScreenViewModel._internal({
    required this.editStatus,
    required this.addOrUpdateRendezVous,
  });

  factory EditRendezVousScreenViewModel.from(Store<EnsState> store) {
    final rendezVousEditState = store.state.agendaState.rendezVousEditStatus;
    var editStatus = RendezVousEditStatus.INIT;

    if (rendezVousEditState.isSuccess()) {
      editStatus = RendezVousEditStatus.SUCCESS;
    } else if (rendezVousEditState.isLoading()) {
      editStatus = RendezVousEditStatus.LOADING;
    }
    return EditRendezVousScreenViewModel._internal(
      editStatus: editStatus,
      addOrUpdateRendezVous: ({
        String? id,
        required String title,
        required DateTime date,
        required bool isPs,
        required String profesionnelOrEtablissementName,
        required String profesionnelOrEtablissementSpeciality,
        required String note,
        String? address,
        required String? idActeurSante,
      }) {
        final rdv = RendezVous(
          id: id ?? '',
          title: title,
          date: date,
          rdvType: isPs ? RendezVousType.PROFESSIONEL_DE_SANTE : RendezVousType.ETABLISSEMENT_DE_SANTE,
          nomActeurSante: profesionnelOrEtablissementName,
          specialiteActeurSante: profesionnelOrEtablissementSpeciality,
          note: note,
          address: address,
          author: '',
          idActeurSante: idActeurSante,
        );

        id == null ? store.dispatch(AddRendezVousAction(rdv)) : store.dispatch(UpdateRendezVousAction(rdv));
      },
    );
  }

  @override
  List<Object?> get props => [editStatus];
}

enum RendezVousEditStatus {
  INIT,
  LOADING,
  SUCCESS,
}
