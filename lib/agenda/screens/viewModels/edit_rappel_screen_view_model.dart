/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditRappelScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final void Function(String? id, String title, DateTime date, String comment) addOrUpdateRappel;

  const EditRappelScreenViewModel._internal({required this.editStatus, required this.addOrUpdateRappel});

  factory EditRappelScreenViewModel.from(Store<EnsState> store) {
    final rappelEditStatus = store.state.agendaState.rappelEditStatus;
    return EditRappelScreenViewModel._internal(
      editStatus: rappelEditStatus,
      addOrUpdateRappel: (id, title, date, comment) => _addOrUpdateRappel(id, title, date, comment, store),
    );
  }

  static void _addOrUpdateRappel(
    String? id,
    String title,
    DateTime date,
    String comment,
    Store<EnsState> store,
  ) {
    final rappel = Rappel(
      id: id ?? '',
      title: title,
      date: date,
      comment: comment,
      authorLabel: null,
    );

    id == null
        ? store.dispatch(AddRappelAction(date: date, title: title, comment: comment))
        : store.dispatch(UpdateRappelAction(rappel));
  }

  @override
  List<Object?> get props => [editStatus];
}
