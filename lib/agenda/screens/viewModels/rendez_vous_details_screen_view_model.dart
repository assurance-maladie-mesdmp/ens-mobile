/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/agenda_domain_error.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class RendezVousDetailsScreenViewModel extends Equatable {
  final RendezVous rdv;
  final RendezVousDetailsScreenStatus status;
  final void Function(String? patientId, String rdvId) fetchRendezVous;
  final void Function(String id) deleteRendezVous;
  final ProfilType profilType;

  const RendezVousDetailsScreenViewModel._internal({
    required this.rdv,
    required this.status,
    required this.fetchRendezVous,
    required this.deleteRendezVous,
    required this.profilType,
  });

  factory RendezVousDetailsScreenViewModel.from(Store<EnsState> store, String rdvId) {
    final rendezVousDetailState = store.state.agendaState.rendezVousDetailState;
    RendezVous rdvToDisplay = RendezVous(
      id: '',
      rdvType: RendezVousType.PROFESSIONEL_DE_SANTE,
      date: DateTime.now(),
      nomActeurSante: '',
      author: '',
      status: RendezVousStatus.NOSTATUS,
    );
    RendezVousDetailsScreenStatus status = RendezVousDetailsScreenStatus.LOADING;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    if (rendezVousDetailState.isSuccessWithData) {
      status = RendezVousDetailsScreenStatus.SUCCESS;
      rdvToDisplay = rendezVousDetailState.rendezVous!;
    } else if (rendezVousDetailState.isErrorOrSuccessWithoutData) {
      if (rendezVousDetailState.errorDomain == AgendaDomainError.NOT_FOUND_ERROR) {
        status = RendezVousDetailsScreenStatus.NOT_FOUND_ERROR;
      } else {
        status = RendezVousDetailsScreenStatus.GENERIC_ERROR;
      }
    }

    return RendezVousDetailsScreenViewModel._internal(
      rdv: RendezVous(
        id: rdvId,
        rdvType: rdvToDisplay.rdvType,
        date: rdvToDisplay.date,
        nomActeurSante: rdvToDisplay.nomActeurSante.capitalizeName(),
        author: rdvToDisplay.author,
        title: rdvToDisplay.title,
        specialiteActeurSante: rdvToDisplay.specialiteActeurSante,
        note: rdvToDisplay.note,
        address: rdvToDisplay.address,
        isFromUser: rdvToDisplay.isFromUser,
        status: rdvToDisplay.status,
        idActeurSante: rdvToDisplay.idActeurSante,
      ),
      status: status,
      fetchRendezVous: (patientId, rdvId) => store.dispatch(FetchRendezVousDetailAction(rdvId, patientId)),
      deleteRendezVous: (String id) => store.dispatch(DeleteRendezVousAction(id)),
      profilType: profilType,
    );
  }

  @override
  List<Object?> get props => [rdv, status, profilType];
}

enum RendezVousStatus {
  BOOKED('Confirmé'),
  FULFILLED('Honoré'),
  CANCELLED('Annulé'),
  NOSHOW('Non-honoré'),
  ENTEREDINERROR('Pris par erreur'),
  ARRIVED('Arrived'),
  CHECKEDIN('checked-in'),
  WAITLIST('waitlist'),
  PROPOSED('proposed'),
  PENDING('pending'),
  NOSTATUS('');

  const RendezVousStatus(this.label);

  final String label;
}

enum RendezVousDetailsScreenStatus {
  LOADING,
  SUCCESS,
  GENERIC_ERROR,
  NOT_FOUND_ERROR;

  bool get isSuccess => this == SUCCESS;
}
