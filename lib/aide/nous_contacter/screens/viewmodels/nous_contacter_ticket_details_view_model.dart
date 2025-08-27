/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/redux/nous_contacter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class NousContacterTicketDetailsViewModel extends Equatable {
  final AllPurposesStatus status;
  final TicketDetailsDisplayModel? displayModel;
  final void Function() load;

  const NousContacterTicketDetailsViewModel._({
    required this.status,
    required this.displayModel,
    required this.load,
  });

  factory NousContacterTicketDetailsViewModel(Store<EnsState> store, String ticketId) {
    final ticketContactDetailsState = store.state.nousContacterState.ticketContactDetailsState;
    final status = ticketContactDetailsState.ticketDetails == null && ticketContactDetailsState.status.isSuccess()
        ? AllPurposesStatus.ERROR
        : ticketContactDetailsState.status;

    final ticketDetails = ticketContactDetailsState.ticketDetails;

    return NousContacterTicketDetailsViewModel._(
      status: status,
      displayModel: ticketDetails != null
          ? TicketDetailsDisplayModel(
              titre: ticketDetails.titre,
              messages: ticketDetails.messages
                  .map(
                    (message) => TicketDetailsMessageDisplayModel(
                      from: message.from == 'VOUS'
                          ? UserSelectors.getFullName(store.state)
                          : 'Votre conseiller mon espace santé',
                      to: message.from != 'VOUS'
                          ? UserSelectors.getFullName(store.state)
                          : 'Votre conseiller mon espace santé',
                      message: message.message,
                      createdAt: DateFormat('dd MMM', 'fr').format(message.createdAt),
                      attachmentsName: message.attachments.map((attachment) => attachment.name).toList(),
                    ),
                  )
                  .toList(),
            )
          : null,
      load: () => store.dispatch(FetchTicketSupportDetailsAction(ticketId)),
    );
  }

  @override
  List<Object?> get props => [status, displayModel];
}

class TicketDetailsDisplayModel extends Equatable {
  final String titre;
  final List<TicketDetailsMessageDisplayModel> messages;

  const TicketDetailsDisplayModel({required this.titre, required this.messages});

  @override
  List<Object?> get props => [titre, messages];
}

class TicketDetailsMessageDisplayModel extends Equatable {
  final String from;
  final String to;
  final String message;
  final String createdAt;
  final List<String> attachmentsName;

  const TicketDetailsMessageDisplayModel({
    required this.from,
    required this.to,
    required this.message,
    required this.createdAt,
    required this.attachmentsName,
  });

  @override
  List<Object?> get props => [from, to, message, createdAt, attachmentsName];
}
