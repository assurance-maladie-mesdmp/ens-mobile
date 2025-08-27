/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/domain/models/ens_ticket_support.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class NousContacterViewModel extends Equatable {
  final NousContacterScreenStatus status;
  final List<TicketSupportDisplayModel> displayModels;
  final void Function() load;

  const NousContacterViewModel._({
    required this.status,
    required this.displayModels,
    required this.load,
  });

  factory NousContacterViewModel(Store<EnsState> store) {
    final nousContacterState = store.state.nousContacterState;

    return NousContacterViewModel._(
      status: _getStatus(nousContacterState),
      displayModels: nousContacterState.tickets
          .map(
            (ticket) => TicketSupportDisplayModel(
              id: ticket.id,
              titre: ticket.titre,
              lastMessage: ticket.lastMessage,
              lastUpdateDate: _displayLastUpdate(ticket.lastUpdate),
            ),
          )
          .toList(),
      load: () {
        store.dispatch(FetchTicketsSupportAction());
      },
    );
  }

  static NousContacterScreenStatus _getStatus(NousContacterState nousContacterState) {
    if (nousContacterState.status.isNotLoadedOrLoading()) {
      return NousContacterScreenStatus.LOADING;
    } else if (nousContacterState.status.isError()) {
      return NousContacterScreenStatus.ERROR;
    } else if (nousContacterState.tickets.isEmpty) {
      return NousContacterScreenStatus.EMPTY;
    } else {
      return NousContacterScreenStatus.SUCCESS;
    }
  }

  @override
  List<Object?> get props => [status, displayModels];
}

class TicketSupportDisplayModel extends Equatable {
  final String id;
  final String titre;
  final LastMessage lastMessage;
  final String lastUpdateDate;

  const TicketSupportDisplayModel({
    required this.id,
    required this.titre,
    required this.lastMessage,
    required this.lastUpdateDate,
  });

  @override
  List<Object?> get props => [id, titre, lastMessage, lastUpdateDate];
}

enum NousContacterScreenStatus { ERROR, LOADING, SUCCESS, EMPTY }

String _displayLastUpdate(DateTime lastUpdate) {
  final today = DateTime.now();
  final estAujourdhui = today.day == lastUpdate.day && today.month == lastUpdate.month && today.year == lastUpdate.year;
  if (estAujourdhui) {
    return DateFormat('HH:mm', 'fr').format(lastUpdate);
  }
  return DateFormat('dd MMM', 'fr').format(lastUpdate);
}
