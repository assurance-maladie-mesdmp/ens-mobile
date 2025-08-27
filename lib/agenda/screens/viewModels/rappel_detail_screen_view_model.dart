/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/agenda/domain/agenda_domain_error.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class RappelDetailsScreenViewModel {
  final RappelItemDisplayModel rappel;
  final RappelDetailsScreenStatus status;
  final void Function(String) loadDetailRappel;

  const RappelDetailsScreenViewModel._internal({
    required this.rappel,
    required this.status,
    required this.loadDetailRappel,
  }) : super();

  factory RappelDetailsScreenViewModel.from(Store<EnsState> store, String rappelId) {
    final rappelDetailState = store.state.agendaState.rappelDetailState;
    Rappel rappelToDisplay = Rappel(id: '', date: DateTime.now(), title: '', comment: '', authorLabel: '');
    RappelDetailsScreenStatus status = RappelDetailsScreenStatus.LOADING;

    if (rappelDetailState.isErrorOrSuccessWithoutData) {
      if (rappelDetailState.errorDomain == AgendaDomainError.NOT_FOUND_ERROR) {
        status = RappelDetailsScreenStatus.NOT_FOUND_ERROR;
      } else {
        status = RappelDetailsScreenStatus.GENERIC_ERROR;
      }
    } else if (rappelDetailState.isSuccessWithData && rappelDetailState.rappel!.id == rappelId) {
      status = RappelDetailsScreenStatus.SUCCESS;
      rappelToDisplay = rappelDetailState.rappel!;
    }

    return RappelDetailsScreenViewModel._internal(
      rappel: RappelItemDisplayModel(
        id: rappelId,
        titre: rappelToDisplay.title,
        date: rappelToDisplay.date,
        commentaire: rappelToDisplay.comment,
        auteur: rappelToDisplay.authorLabel,
        jour: EnsDateUtils.formatDayPlainTextMonthAndYear(rappelToDisplay.date),
        heure: DateFormat('HH:mm').format(rappelToDisplay.date),
      ),
      loadDetailRappel: (idRappel) => store.dispatch(FetchRappelDetailAction(idRappel)),
      status: status,
    );
  }

  List<Object> get props => [rappel, status];
}

enum RappelDetailsScreenStatus {
  LOADING,
  SUCCESS,
  GENERIC_ERROR,
  NOT_FOUND_ERROR;

  bool isSuccess() {
    return this == SUCCESS;
  }
}
